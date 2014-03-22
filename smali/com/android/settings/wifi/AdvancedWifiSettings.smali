.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static deviceModelName:Ljava/lang/String;

.field public static hideNavigationButton:Z

.field private static final isAutoConnectOptionRequired:Z


# instance fields
.field private allowWifi:Z

.field private dialog:Landroid/app/AlertDialog;

.field private isHotspot20Disabled:Z

.field private mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mHiddenAps:Z

.field private mIsConn:Z

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilePolicyDataEnable:Z

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mPreferredBand:Z

.field private mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Z

.field private mSecSetupWizardMode:Z

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

.field private poorNetworkDetection:Landroid/preference/CheckBoxPreference;

.field private scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    .line 188
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->deviceModelName:Ljava/lang/String;

    .line 189
    const-string v0, "SCH-I605"

    sget-object v3, Lcom/android/settings/wifi/AdvancedWifiSettings;->deviceModelName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCH-I535"

    sget-object v3, Lcom/android/settings/wifi/AdvancedWifiSettings;->deviceModelName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    sput-boolean v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->isAutoConnectOptionRequired:Z

    .line 203
    sput-boolean v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    return-void

    :cond_1
    move v0, v2

    .line 104
    goto :goto_0

    :cond_2
    move v2, v1

    .line 189
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_PreferredBand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    .line 136
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ExceptScanlist"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    .line 137
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_Reset"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReset:Z

    .line 138
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 140
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_WIFI_DisableHotspot20"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->isHotspot20Disabled:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wagip"

    aput-object v1, v0, v2

    const-string v1, "wagport"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 193
    iput-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 194
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 199
    iput-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 200
    iput-boolean v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z

    .line 201
    iput-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    .line 205
    iput-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsConn:Z

    .line 1267
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$8;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsConn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateScanAlwaysAvailableCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeHotspot20(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1227
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1228
    const/16 v3, 0x29

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1229
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1230
    if-eqz p1, :cond_1

    .line 1231
    const-string v4, "enable"

    const-string v5, "ON"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :goto_0
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1235
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1236
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "HOTSPOT20 config store error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    :goto_1
    return-void

    .line 1233
    :cond_1
    const-string v4, "enable"

    const-string v5, "OFF"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1242
    if-nez p1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_5

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1246
    new-instance v3, Lcom/android/settings/wifi/AdvancedWifiSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$7;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    .line 1256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1257
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v5, v1, :cond_3

    .line 1258
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v0, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_3

    :cond_4
    move v0, v2

    .line 1240
    goto :goto_2

    .line 1263
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1197
    const-string v0, "/data/misc/wifi/message.txt"

    .line 1199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    const-string v0, ""

    .line 1223
    :goto_0
    return-object v0

    .line 1205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1212
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformation, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1217
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1217
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 42

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v36

    .line 357
    .local v36, wifiEnabled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const-string v39, "enterprise_policy"

    invoke-virtual/range {v38 .. v39}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 359
    .local v11, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v37

    .line 361
    .local v37, wp:Landroid/app/enterprise/WifiPolicy;
    const-string v38, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    .line 369
    .local v20, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    if-eqz v20, :cond_0

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_networks_available_notification_on"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    const/16 v38, 0x1

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 375
    :cond_0
    const-string v38, "connect_seamlessly"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_1
    const-string v38, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_3

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_watchdog_on"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1c

    .line 397
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_3
    :goto_1
    const-string v38, "wifi_scan_always_available"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v40, "wifi_scan_always_enabled"

    const/16 v41, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1e

    const/16 v38, 0x1

    :goto_2
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateScanAlwaysAvailableCheck()V

    .line 415
    new-instance v15, Landroid/content/Intent;

    const-string v38, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v15, intent:Landroid/content/Intent;
    const-string v38, "com.android.certinstaller"

    const-string v39, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v38, "install_as_uid"

    const/16 v39, 0x3f2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v38, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 420
    .local v22, pref:Landroid/preference/Preference;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 422
    const-string v38, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 435
    .local v4, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_4

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_4
    const-string v38, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 451
    .local v5, cmccConnectType:Landroid/preference/ListPreference;
    if-eqz v5, :cond_5

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :cond_5
    const-string v38, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    .line 457
    .local v12, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v12, :cond_6

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    :cond_6
    const-string v38, "ap_list_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 475
    .local v3, apListPriority:Landroid/preference/ListPreference;
    if-eqz v3, :cond_7

    .line 477
    const v38, 0x7f040187

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    const/16 v32, 0x0

    .line 480
    .local v32, value:I
    const-string v38, "ssid"

    const-string v39, "ssid"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_ap_sort"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 490
    :goto_3
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 491
    .local v29, stringValue:Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 500
    .end local v29           #stringValue:Ljava/lang/String;
    .end local v32           #value:I
    :cond_7
    const-string v38, "preferred_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    .line 502
    .local v25, preferredBandPref:Landroid/preference/ListPreference;
    if-eqz v25, :cond_8

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    move/from16 v38, v0

    if-eqz v38, :cond_20

    .line 504
    const v38, 0x7f040187

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 505
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getWifiDualbandAPConnection()I

    move-result v32

    .line 508
    .restart local v32       #value:I
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 509
    .restart local v29       #stringValue:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    .end local v29           #stringValue:Ljava/lang/String;
    .end local v32           #value:I
    :cond_8
    :goto_4
    const-string v38, "hidden_aps_by_rssi"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    .line 520
    .local v13, hiddenApsByRssiPref:Landroid/preference/ListPreference;
    if-eqz v13, :cond_9

    .line 521
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    move/from16 v38, v0

    if-eqz v38, :cond_21

    .line 522
    const v38, 0x7f040187

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "hidden_ap_sinal_strength"

    const/16 v40, 0x3

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 526
    .restart local v32       #value:I
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 527
    .restart local v29       #stringValue:Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    .end local v29           #stringValue:Ljava/lang/String;
    .end local v32           #value:I
    :cond_9
    :goto_5
    const-string v38, "hidden_aps_by_ssid"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 538
    .local v14, hiddenApsBySsidPref:Landroid/preference/Preference;
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    move/from16 v38, v0

    if-nez v38, :cond_a

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    :cond_a
    const-string v38, "wifi_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 547
    .local v27, resetPref:Landroid/preference/Preference;
    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReset:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    :cond_b
    const-string v38, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 555
    .local v7, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v38, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 557
    .local v8, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v38, v0

    if-eqz v38, :cond_23

    .line 558
    if-eqz v7, :cond_c

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_connection_monitor_enable"

    const/16 v40, 0x1

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_22

    const/16 v38, 0x1

    :goto_6
    move/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 574
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "SKT"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_f

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 577
    .local v21, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v38, "iwlan_enabled_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 578
    .local v26, removablePref:Landroid/preference/Preference;
    if-eqz v26, :cond_d

    .line 579
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_d
    const-string v38, "iwlan_networks"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 581
    if-eqz v26, :cond_e

    .line 582
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 584
    :cond_e
    const-string v38, "add_other_iwlan"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 585
    if-eqz v26, :cond_f

    .line 586
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 591
    .end local v21           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v26           #removablePref:Landroid/preference/Preference;
    :cond_f
    const-string v38, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 593
    .local v19, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v19, :cond_10

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "LGU"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 596
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const-string v39, "com.lguplus.common.wificm.mwlan"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v18

    .line 597
    .local v18, mWlan:Landroid/content/Context;
    const-string v38, "mwlan"

    const/16 v39, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 598
    .local v24, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v38, "mwlan"

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 599
    .local v23, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v38, "permission_allowed_2"

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 600
    .local v17, isAllowed_4:Z
    const-string v38, "permission_allowed_2"

    const/16 v39, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 601
    .local v16, isAllowed:Z
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 605
    .local v10, e:Landroid/content/SharedPreferences$Editor;
    const-string v38, "mwlan_permission_allowed_2"

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 606
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    const-string v38, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v10           #e:Landroid/content/SharedPreferences$Editor;
    .end local v16           #isAllowed:Z
    .end local v17           #isAllowed_4:Z
    .end local v18           #mWlan:Landroid/content/Context;
    .end local v23           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v24           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_10
    :goto_8
    const-string v38, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 626
    .local v6, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_11

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 636
    :cond_11
    const-string v38, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_12

    .line 697
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 703
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string v39, "wag_ip_settings"

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    .line 704
    .local v34, wagIpSettings:Landroid/preference/Preference;
    if-eqz v34, :cond_13

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 707
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string v39, "use_wag_ip"

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 708
    .local v31, useWagIp:Landroid/preference/Preference;
    if-eqz v31, :cond_14

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 711
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string v39, "wagfqdn"

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 712
    .local v30, useWagFqdn:Landroid/preference/Preference;
    if-eqz v30, :cond_15

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 715
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    .line 716
    .local v33, wagIp:Landroid/preference/Preference;
    if-eqz v33, :cond_16

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 719
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget-object v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 720
    .local v35, wagPort:Landroid/preference/Preference;
    if-eqz v35, :cond_17

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 725
    :cond_17
    const-string v38, "wifi_hotspot20_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_18

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v40, "wifi_hotspot20_enable"

    const/16 v41, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_27

    const/16 v38, 0x1

    :goto_9
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 744
    :cond_18
    const-string v38, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    .line 745
    .local v28, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v28, :cond_1a

    .line 747
    const v38, 0x7f040187

    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 749
    const v38, 0x7f0a0045

    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 751
    :cond_19
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 752
    const/16 v32, 0x2

    .line 759
    .restart local v32       #value:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_sleep_policy"

    const/16 v40, 0x2

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 764
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 765
    .restart local v29       #stringValue:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 772
    .end local v29           #stringValue:Ljava/lang/String;
    .end local v32           #value:I
    :cond_1a
    return-void

    .line 370
    .end local v3           #apListPriority:Landroid/preference/ListPreference;
    .end local v4           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v5           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v7           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v8           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v12           #frequencyPref:Landroid/preference/ListPreference;
    .end local v13           #hiddenApsByRssiPref:Landroid/preference/ListPreference;
    .end local v14           #hiddenApsBySsidPref:Landroid/preference/Preference;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v19           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v22           #pref:Landroid/preference/Preference;
    .end local v25           #preferredBandPref:Landroid/preference/ListPreference;
    .end local v27           #resetPref:Landroid/preference/Preference;
    .end local v28           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v30           #useWagFqdn:Landroid/preference/Preference;
    .end local v31           #useWagIp:Landroid/preference/Preference;
    .end local v33           #wagIp:Landroid/preference/Preference;
    .end local v34           #wagIpSettings:Landroid/preference/Preference;
    .end local v35           #wagPort:Landroid/preference/Preference;
    :cond_1b
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 399
    :cond_1c
    const/4 v9, 0x0

    .line 400
    .local v9, defaultValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v38, v0

    const v39, 0x7f09048c

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setTitle(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v38, v0

    const v39, 0x7f09048d

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setSummary(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v40, "wifi_watchdog_poor_network_test_enabled"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d

    const/16 v38, 0x1

    :goto_a
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    goto/16 :goto_1

    .line 402
    :cond_1d
    const/16 v38, 0x0

    goto :goto_a

    .line 411
    .end local v9           #defaultValue:I
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_2

    .line 486
    .restart local v3       #apListPriority:Landroid/preference/ListPreference;
    .restart local v4       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v5       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v12       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v22       #pref:Landroid/preference/Preference;
    .restart local v32       #value:I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "wifi_ap_sort"

    const/16 v40, 0x1

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    goto/16 :goto_3

    .line 512
    .end local v32           #value:I
    .restart local v25       #preferredBandPref:Landroid/preference/ListPreference;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 530
    .restart local v13       #hiddenApsByRssiPref:Landroid/preference/ListPreference;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 559
    .restart local v7       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v8       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v14       #hiddenApsBySsidPref:Landroid/preference/Preference;
    .restart local v27       #resetPref:Landroid/preference/Preference;
    :cond_22
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 563
    :cond_23
    if-eqz v7, :cond_24

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    :cond_24
    if-eqz v8, :cond_c

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 610
    .restart local v19       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 612
    .restart local v21       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v38, "mwlan_enabled_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 613
    .restart local v26       #removablePref:Landroid/preference/Preference;
    if-eqz v26, :cond_26

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 617
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 733
    .end local v21           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v26           #removablePref:Landroid/preference/Preference;
    .restart local v6       #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .restart local v30       #useWagFqdn:Landroid/preference/Preference;
    .restart local v31       #useWagIp:Landroid/preference/Preference;
    .restart local v33       #wagIp:Landroid/preference/Preference;
    .restart local v34       #wagIpSettings:Landroid/preference/Preference;
    .restart local v35       #wagPort:Landroid/preference/Preference;
    :cond_27
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 608
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v30           #useWagFqdn:Landroid/preference/Preference;
    .end local v31           #useWagIp:Landroid/preference/Preference;
    .end local v33           #wagIp:Landroid/preference/Preference;
    .end local v34           #wagIpSettings:Landroid/preference/Preference;
    .end local v35           #wagPort:Landroid/preference/Preference;
    :catch_0
    move-exception v38

    goto/16 :goto_8
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1351
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    const/4 v0, 0x0

    .line 1353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 4

    .prologue
    const v3, 0x7f090631

    .line 1082
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1084
    const-string v1, "mac_address"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1085
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1086
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1089
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1090
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1094
    const-string v0, "wifi_authentication_information"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TMO"

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1097
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v1

    .line 1098
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1101
    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1102
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1111
    :cond_1
    :goto_3
    return-void

    .line 1085
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1086
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1098
    goto :goto_2

    .line 1104
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1107
    :cond_6
    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 1192
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1194
    return-void
.end method

.method private showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1171
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->dismiss()V

    .line 1174
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    .line 1175
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1176
    return-void
.end method

.method private updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "apListPriority"
    .parameter "value"

    .prologue
    .line 796
    if-eqz p2, :cond_1

    .line 797
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, values:[Ljava/lang/String;
    const v2, 0x7f0a0047

    .line 799
    .local v2, summaryArrayResId:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 801
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 803
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 812
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_1
    return-void

    .line 800
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 811
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid AP list priority value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .parameter "frequencyBandPref"
    .parameter "index"

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, summaries:[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 834
    return-void
.end method

.method private updateScanAlwaysAvailableCheck()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 775
    if-eqz p2, :cond_2

    .line 776
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0045

    .line 779
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 781
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 783
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 792
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 777
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0044

    goto :goto_0

    .line 780
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 791
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateWifiInternetServiceCheck()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1304
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1305
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdvancedWifiSettings"

    const-string v1, "poorNetworkDetection is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 1314
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mobile_data"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v4, v2

    .line 1316
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1317
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 1319
    if-eq v5, v8, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isSimCheck()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1320
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f09048e

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1333
    :goto_3
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v6, "AdvancedWifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checkbox - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / isMobilePolicyDataEnable: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne v5, v8, :cond_a

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 1312
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1314
    goto :goto_2

    .line 1322
    :cond_5
    if-eqz v1, :cond_6

    .line 1323
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f09048f

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 1324
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1325
    :cond_6
    if-eqz v4, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z

    if-nez v0, :cond_8

    .line 1326
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090490

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 1327
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1329
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f09048d

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    move v0, v3

    .line 1333
    goto :goto_4

    :cond_a
    move v2, v3

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 305
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 311
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifitimer_pref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 313
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 315
    sget-boolean v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 317
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 318
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 319
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 328
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSecSetupWizardMode:Z

    .line 225
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const v3, 0x104000a

    const/high16 v2, 0x104

    .line 1115
    packed-switch p1, :pswitch_data_0

    .line 1156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1117
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0912a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0912a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1132
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0912a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$6;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$5;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1149
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 352
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 954
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 956
    const-string v1, "frequency_band"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 959
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 960
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_0
    const-string v1, "sleep_policy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_sleep_policy"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 973
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1078
    :goto_1
    return v1

    .line 961
    :catch_0
    move-exception v1

    .line 962
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0904ae

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 964
    goto :goto_1

    .line 974
    :catch_1
    move-exception v1

    .line 975
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090332

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 977
    goto :goto_1

    .line 979
    :cond_2
    const-string v1, "ap_list_priority"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .line 982
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_ap_sort"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 984
    :catch_2
    move-exception v1

    .line 985
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090335

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 987
    goto :goto_1

    .line 989
    :cond_3
    const-string v1, "preferred_band"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 990
    check-cast p2, Ljava/lang/String;

    .line 991
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiDualbandAPConnection(I)Z

    goto :goto_0

    .line 992
    :cond_4
    const-string v1, "hidden_aps_by_rssi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 993
    check-cast p2, Ljava/lang/String;

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hidden_ap_sinal_strength"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 996
    :cond_5
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 997
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 998
    const-string v1, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    check-cast p1, Lcom/android/settings/SettingsSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 1001
    if-eqz v4, :cond_7

    .line 1003
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 1004
    const-string v1, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiTimer allowWifi:    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-boolean v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v1, :cond_9

    .line 1007
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1008
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    const-string v2, "info_type"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1010
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1011
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v1, :cond_6

    .line 1012
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1014
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1026
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1027
    if-nez v4, :cond_8

    .line 1028
    const-string v2, "wifitimer_done"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1029
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1031
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-eqz v2, :cond_1

    .line 1032
    const-string v2, "wifitimer_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1033
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1034
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    const-string v2, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v4, 0x1389

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1016
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "wifitimer_start_time_checked"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "wifitimer_start_time"

    const-string v6, "19:00"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "wifitimer_end_time_checked"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v6, "wifitimer_end_time"

    const-string v7, "21:00"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    :goto_4
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1021
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const v2, 0x7f0903f8

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    goto :goto_2

    .line 1016
    :cond_a
    const-string v1, ""

    goto :goto_3

    .line 1018
    :cond_b
    const-string v2, ""

    goto :goto_4

    .line 1023
    :cond_c
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "~"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1040
    :cond_d
    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1041
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1042
    const-string v2, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_HOTSPOT20_ENABLE: new value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    goto/16 :goto_0

    .line 1044
    :cond_e
    const-string v1, "wifi_cmcc_manual"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 838
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 840
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 932
    :cond_1
    :goto_0
    return v7

    .line 847
    :cond_2
    const-string v1, "wifi_poor_network_detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 848
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_internet_service_check_warning"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 850
    if-eqz v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 852
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 856
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v0, :cond_4

    move v6, v7

    :cond_4
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 861
    const/16 v2, 0x2d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 862
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 863
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "HOTSPOT20 config store error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_5
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 870
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903f7

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 874
    :cond_6
    const-string v1, "wifi_scan_always_available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v6, v7

    :cond_7
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 878
    :cond_8
    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 879
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 880
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 881
    iput v7, v1, Landroid/os/Message;->what:I

    .line 883
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 884
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 885
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-nez v1, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connecct"

    if-eqz v0, :cond_9

    move v6, v7

    :cond_9
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 889
    :cond_a
    const-string v1, "wifi_cmcc_priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 894
    :cond_b
    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 895
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 896
    :cond_c
    const-string v1, "wifi_connection_priority_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 897
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 899
    if-eqz v0, :cond_d

    .line 900
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 902
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 905
    :cond_e
    const-string v1, "wifi_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 906
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 907
    :cond_f
    instance-of v1, p2, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_10

    .line 908
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 909
    :cond_10
    const-string v1, "add_other_iwlan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 910
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 911
    :cond_11
    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 912
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 914
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lguplus.common.wificm.mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 915
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 916
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 917
    const-string v2, "permission_allowed_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 919
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWlan isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_12

    const v0, 0x7f0912ae

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 928
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 925
    :cond_12
    const v0, 0x7f0912af

    goto :goto_1

    .line 930
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 345
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1161
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    new-instance v0, Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/IwlanEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    .line 1165
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStart()V

    .line 1167
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1180
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStop()V

    .line 1185
    :cond_0
    return-void
.end method
