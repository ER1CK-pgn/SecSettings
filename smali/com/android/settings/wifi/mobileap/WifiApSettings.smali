.class public Lcom/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# static fields
.field private static final DBG:Z

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isNoHotSpotModeWarningShown:Z

.field private isRoaming:Z

.field private key_compare:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsFromHelp:Z

.field private mIsTablet:Z

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misLightTheme:Z

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    .line 202
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 143
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 144
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 145
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 146
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 158
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 178
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 199
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 203
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 204
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 205
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 208
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    .line 452
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 857
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 950
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .parameter "oldConfig"
    .parameter "newConfig"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 1203
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-ne v1, v2, :cond_0

    .line 1205
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v2, :cond_0

    .line 1206
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v1, v2, :cond_0

    .line 1207
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v1, p3, :cond_0

    .line 1208
    packed-switch p3, :pswitch_data_0

    .line 1224
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1213
    :pswitch_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private createHelpStep1Dialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1253
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1255
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    .line 1258
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1259
    const v0, 0x7f0b011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1260
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1270
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1271
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1274
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1275
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1277
    :cond_1
    return-void
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 903
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 904
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 905
    const/4 v0, -0x1

    .line 906
    .local v0, mRvfMode:I
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 908
    :cond_0
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 990
    sparse-switch p1, :sswitch_data_0

    .line 1004
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 992
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 994
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 996
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 998
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1000
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1002
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 990
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 1008
    packed-switch p1, :pswitch_data_0

    .line 1022
    :goto_0
    :pswitch_0
    return v0

    .line 1010
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1012
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1014
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1018
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1020
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1051
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1052
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 1069
    :cond_1
    :goto_0
    return-void

    .line 1055
    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    const-string v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1059
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 1060
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v0, :cond_1

    .line 1061
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1064
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v0, :cond_1

    .line 1065
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 912
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 913
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 914
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 915
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 916
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 3
    .parameter

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1034
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1040
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1159
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1162
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1164
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1168
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1170
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f090420

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1173
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1175
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1177
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 1200
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1181
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1183
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1186
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1197
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1198
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 1027
    return-void
.end method

.method private showInvalidActionToast()V
    .locals 3

    .prologue
    const v2, 0x7f091370

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 1302
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1305
    :cond_0
    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    .prologue
    .line 919
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 920
    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 921
    const v1, 0x7f090473

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 922
    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 928
    const v1, 0x7f0907a0

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 937
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 947
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 948
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 385
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v10, connectedDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;>;"
    const/16 v17, 0x0

    .line 388
    .local v17, staList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v17

    .line 393
    :cond_0
    const/4 v15, 0x0

    .line 394
    .local v15, num:I
    if-eqz v17, :cond_1

    .line 395
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v15, v2, 0x12

    .line 396
    const-string v2, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "staList.length() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 400
    if-eqz v17, :cond_9

    if-lez v15, :cond_9

    .line 401
    const/4 v7, 0x0

    .line 402
    .local v7, buf:Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 403
    .local v18, tok:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 406
    .local v19, tokLength:I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v21, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x2000

    move/from16 v0, v21

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 407
    .end local v7           #buf:Ljava/io/BufferedReader;
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, bufReadLine:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 408
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, dhcpLeaseInfo:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v15, :cond_2

    .line 410
    array-length v2, v11

    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v2, v0, :cond_5

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_5

    .line 412
    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    aget-object v2, v18, v13

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v21, v18, v13

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    const v2, 0x7f09041e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, deviceName:Ljava/lang/String;
    :goto_2
    aget-object v2, v18, v13

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, mac:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 421
    .local v5, ip:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 423
    .local v6, connectTime:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v1, device:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 430
    .end local v1           #device:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v6           #connectTime:Ljava/lang/String;
    .end local v9           #bufReadLine:Ljava/lang/String;
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 431
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    if-eqz v7, :cond_3

    .line 435
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 440
    .end local v12           #e:Ljava/io/IOException;
    :cond_3
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 441
    .local v20, wifiApConnectedDevices:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 417
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #wifiApConnectedDevices:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #bufReadLine:Ljava/lang/String;
    .restart local v11       #dhcpLeaseInfo:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_4
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3       #deviceName:Ljava/lang/String;
    goto :goto_2

    .line 409
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 434
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_6
    if-eqz v8, :cond_7

    .line 435
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    move-object v7, v8

    .line 438
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 436
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 437
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v8

    .line 439
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 436
    .end local v9           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 437
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 433
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 434
    :goto_6
    if-eqz v7, :cond_8

    .line 435
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 438
    :cond_8
    :goto_7
    throw v2

    .line 436
    :catch_3
    move-exception v12

    .line 437
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 444
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #tokLength:I
    :cond_9
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 445
    .local v16, pf:Landroid/preference/Preference;
    const v2, 0x7f090436

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 450
    .end local v16           #pf:Landroid/preference/Preference;
    :cond_a
    return-void

    .line 433
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #tokLength:I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 430
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8
    .parameter "showIcon"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x500

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 624
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 626
    .local v0, mWidth:I
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 627
    if-eqz p1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020121

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 629
    if-ge v0, v6, :cond_2

    .line 630
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 639
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 640
    if-eqz p1, :cond_5

    .line 641
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020396

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 642
    if-ge v0, v6, :cond_4

    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 652
    :cond_1
    :goto_1
    return-void

    .line 632
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 635
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 636
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 645
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 648
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 649
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_4

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    :cond_0
    const v1, 0x7f090441

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 512
    :cond_2
    return-void

    .line 492
    :cond_3
    const v1, 0x7f090440

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0           #text:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    :cond_5
    const v1, 0x7f09043f

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v0           #text:Ljava/lang/String;
    :cond_6
    const v1, 0x7f09043e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public createHelpStep2Dialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1280
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1282
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    .line 1285
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1286
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1287
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1291
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1293
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 289
    const v2, 0x7f0700e1

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 302
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 303
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 305
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 308
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 309
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    .line 311
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f02047d

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 315
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_3

    .line 316
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 317
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 318
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 339
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    .line 340
    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 341
    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 342
    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 343
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 344
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v3, 0x7f04016a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 347
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 352
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 353
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 365
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v2, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 368
    iput-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 371
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_2

    .line 381
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 382
    return-void

    .line 320
    :cond_3
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 321
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 324
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 329
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 330
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 961
    const-string v0, "WifiApSettings"

    const-string v2, "WifiApSettings onActivityResult"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-nez p1, :cond_0

    .line 963
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 981
    :goto_1
    if-ne v0, v3, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 983
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 618
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 619
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 620
    return-void

    .line 618
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 249
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_2

    .line 251
    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 252
    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 261
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 262
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 281
    :cond_1
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromHelp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 284
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 285
    return-void

    .line 254
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 255
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 256
    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f09079f

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 740
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    if-eqz v1, :cond_6

    .line 741
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    .line 743
    :goto_0
    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 747
    if-ne p1, v6, :cond_1

    .line 751
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 752
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 854
    :goto_1
    return-object v0

    .line 756
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 757
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 758
    const v3, 0x7f0401f8

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 759
    const v0, 0x7f0b052b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 760
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 764
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0401c5

    invoke-direct {v4, v1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 768
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 769
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 770
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 771
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 772
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 779
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    const v1, 0x7f090418

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090195

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 794
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 795
    const-string v1, "WifiApSettings"

    const-string v3, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    const v1, 0x7f09046c

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 798
    const v1, 0x7f0401f7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 799
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 800
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 801
    const v0, 0x7f0b0528

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    :cond_3
    const v0, 0x7f0b0529

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 804
    const v2, 0x7f0b052a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 805
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    const v0, 0x7f0907a0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 831
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 833
    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    .line 834
    const v1, 0x7f0401f6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    .line 835
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0527

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 836
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 838
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 839
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move-object v0, v2

    .line 854
    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 579
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v2, :cond_0

    .line 584
    :cond_0
    const v2, 0x7f090414

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 585
    const/4 v2, 0x3

    const v3, 0x7f090412

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 586
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 588
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 589
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f020396

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 608
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v2, :cond_1

    .line 609
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 612
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 613
    return-void

    .line 594
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 595
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 609
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 574
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 575
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 661
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 662
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 665
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v0, :cond_1

    .line 666
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 726
    :goto_0
    return v0

    .line 670
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 726
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 672
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 673
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 674
    iput-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 675
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    :cond_3
    move v0, v7

    .line 679
    goto :goto_0

    .line 681
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    move v0, v7

    .line 683
    goto :goto_0

    .line 685
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_4

    .line 686
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :goto_2
    move v0, v7

    .line 696
    goto :goto_0

    .line 688
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_5

    .line 689
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090414

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 693
    :cond_5
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 699
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_6

    .line 700
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090451

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_6
    move v0, v7

    .line 704
    goto/16 :goto_0

    .line 711
    :pswitch_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_7

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v0, v4, :cond_7

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    const-string v1, "helphub:section"

    const-string v2, "tethering_vzw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 716
    :cond_7
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 717
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 719
    :catch_0
    move-exception v0

    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 553
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 562
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 563
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 734
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 516
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 517
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 522
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 524
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 529
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v0, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 531
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    const v1, 0x7f0b04c2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 539
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_6

    .line 546
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 549
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 657
    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1091
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 1093
    if-eqz v2, :cond_1

    .line 1094
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x12

    .line 1095
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllConnectedDevice(), num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 1099
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1100
    array-length v2, v1

    .line 1101
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1102
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1105
    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1081
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1082
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1083
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1084
    const-string v2, "mac"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1086
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1088
    :cond_0
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1115
    const-string v2, "wifi_ap_show_passwd"

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1117
    return-void

    .line 1115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveLast2gChannel(I)V
    .locals 2
    .parameter

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1109
    const-string v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1110
    return-void
.end method
