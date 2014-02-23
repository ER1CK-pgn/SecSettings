.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final WIFI_AUTOJOIN:Z

.field private static final WIFI_CONNECT_THRESHOLD:I

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_HIGHMOBILITY:I

.field private static final WIFI_OFF:Z

.field private static final WIFI_SSIDSTATUSBARINFO:Z

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field private static mHiddenApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static mWpsInProgress:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private helpMenuCheck:Z

.field private isOOBE:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAllowUpdateScanList:I

.field private mAutoFinishOnConnection:Z

.field private mAutojoinMenuItem:Landroid/view/MenuItem;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHiddenAps:Z

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mInSecPickerActivity:Z

.field private mInSetupWizardWifiScreen:Z

.field private mIsLightTheme:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsTablet:Z

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApCount:I

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mScrollTimer:J

.field private mSecSetupWizardMode:Z

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mUserManager:Landroid/os/UserManager;

.field private mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWatchdogDialogRunnable:Ljava/lang/Runnable;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsDialog:Landroid/app/AlertDialog;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    .line 341
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 344
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    .line 345
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableHighMobilityDisabled"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    .line 346
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    .line 347
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_OFF:Z

    .line 348
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    .line 349
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 380
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 246
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 259
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 264
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 284
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 297
    const v0, 0x493e0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 302
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 328
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 336
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ExceptScanlist"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    .line 342
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 352
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3039
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$27;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$27;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 3075
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$28;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$28;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 428
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiVzwDialog;)Lcom/android/settings/wifi/WifiVzwDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2426
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2440
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 3034
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3037
    :cond_0
    return-void
.end method

.method private connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 3429
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_0
    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v0, v3, :cond_1

    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v0, v3, :cond_2

    .line 3434
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3435
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3436
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3437
    const-string v2, "netId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3438
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3439
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3443
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_5

    .line 3444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3445
    if-eqz v0, :cond_5

    .line 3446
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3447
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_3

    .line 3448
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 3449
    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3456
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 3457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3460
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 3401
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_0
    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v0, v2, :cond_2

    .line 3406
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3408
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3409
    const-string v2, "netId"

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3410
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3415
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_4

    .line 3416
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 3417
    :cond_3
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3420
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 3421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3425
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2444
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$Multimap;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 2450
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v1, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2453
    :cond_0
    if-eqz v0, :cond_1

    .line 2458
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2459
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2461
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2469
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2470
    if-eqz v0, :cond_5

    .line 2471
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2473
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2481
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 2482
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_7

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_7

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    .line 2489
    :goto_3
    if-eqz v5, :cond_6

    .line 2490
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    move v2, v1

    .line 2494
    goto :goto_2

    .line 2497
    :cond_3
    if-nez v2, :cond_2

    .line 2498
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2501
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_4

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2508
    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2509
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2515
    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2516
    return-object v6

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1793
    packed-switch p1, :pswitch_data_0

    .line 1837
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1795
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1798
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1802
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1803
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1804
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1809
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1811
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1816
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->dismiss()V

    .line 1818
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    goto :goto_0

    .line 1823
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1825
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1830
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1832
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;
    .locals 5
    .parameter "networkId"

    .prologue
    .line 2866
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2867
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v4, :cond_0

    .line 2868
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 2871
    :cond_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 2873
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2874
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 2875
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2876
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, p1, :cond_1

    .line 2882
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v3           #preference:Landroid/preference/Preference;
    :goto_1
    return-object v0

    .line 2871
    .restart local v3       #preference:Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2882
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2127
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2129
    const v1, 0x7f0401c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2130
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2131
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2132
    const v0, 0x7f0b051c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2133
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2134
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 2135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$26;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$26;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2141
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 3486
    const/4 v1, 0x0

    .line 3487
    .local v1, found:Z
    const/4 v3, -0x1

    .line 3488
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 3489
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3490
    const/4 v1, 0x1

    .line 3491
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 3495
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3498
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "networkId"

    .prologue
    .line 1922
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1923
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1924
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1925
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1930
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2539
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2541
    const-string v1, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2542
    const-string v0, "wapi_string"

    .line 2544
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2545
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    packed-switch v0, :pswitch_data_0

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2548
    :pswitch_0
    const v0, 0x7f0902ec

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2552
    :pswitch_1
    const v0, 0x7f0902ed

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2556
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2557
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 2559
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2560
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowUpdateScanList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    if-ne v0, v7, :cond_6

    .line 2571
    const-string v0, "WifiSettings"

    const-string v1, "SKIP SCAN LIST UPDATE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 2586
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2587
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2588
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "Force scan for 5G APs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2573
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2574
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 2575
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isTalkbackPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    if-eq v0, v7, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2578
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->speakTTS()V

    .line 2579
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1

    .line 2590
    :cond_9
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2591
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2593
    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2594
    const-string v1, "changeReason"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2595
    if-eqz v0, :cond_0

    .line 2596
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_a
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v8, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v6, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v1, v7, :cond_0

    .line 2601
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2605
    :cond_b
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2606
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 2607
    :cond_c
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2614
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 2616
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_0

    .line 2617
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    .line 2619
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_d
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2632
    :cond_e
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2634
    :cond_f
    const-string v1, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    :cond_10
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2639
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 2640
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 2641
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    .line 2642
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 2644
    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2645
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2646
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2647
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2649
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2660
    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v1, :cond_13

    .line 2661
    const-string v1, "WifiSettings"

    const-string v2, " Wifi Connection Established --> Launch The Next Activity "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v2, v2, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mForwardIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2663
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "setup_wizard_bundle"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2664
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2665
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 2666
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 2672
    :cond_13
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2674
    if-eqz v0, :cond_0

    .line 2675
    invoke-virtual {v0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 2676
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2680
    :cond_14
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2682
    :cond_15
    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2683
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 2691
    :cond_16
    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2692
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2693
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2696
    :pswitch_2
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2697
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2698
    const/16 v0, 0x7530

    invoke-direct {p0, v4, v0, v6}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2701
    :cond_17
    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2702
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2703
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 2707
    :pswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2708
    const-string v0, "visible"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2709
    const/4 v0, 0x7

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1, v5}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2546
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2694
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 2704
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method private isHiddenAccessPoint(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3618
    move v1, v2

    :goto_0
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3619
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 3652
    :cond_0
    :goto_1
    return v2

    .line 3618
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3625
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_ap_sinal_strength"

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3626
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v1

    .line 3628
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3630
    :pswitch_0
    const/16 v0, -0x41

    if-ge v1, v0, :cond_0

    move v2, v3

    .line 3631
    goto :goto_1

    .line 3636
    :pswitch_1
    const/16 v0, -0x46

    if-ge v1, v0, :cond_0

    move v2, v3

    .line 3637
    goto :goto_1

    .line 3642
    :pswitch_2
    const/16 v0, -0x4b

    if-ge v1, v0, :cond_0

    move v2, v3

    .line 3643
    goto :goto_1

    .line 3628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isHiddenAccessPoint(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 3604
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3605
    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3606
    const/4 v1, 0x1

    .line 3610
    :goto_1
    return v1

    .line 3604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3610
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isUsimUseable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3540
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3541
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 3542
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 3544
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 3545
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09036d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3565
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 3542
    goto :goto_0

    .line 3549
    :cond_1
    const-string v3, "TMO"

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3550
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3552
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3553
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09036f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3554
    goto :goto_1

    .line 3556
    :cond_2
    const-string v3, "TMO"

    const-string v4, "KTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3557
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3559
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3560
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09036e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3561
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3565
    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2120
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 2121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 2122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2124
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 2145
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 2147
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 2148
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 2149
    const/4 v0, 0x1

    .line 2151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3469
    const/4 v0, 0x1

    return v0
.end method

.method private setOffMessage()V
    .locals 3

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f09031d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2360
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2362
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2364
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2366
    const v0, 0x7f0902f6

    .line 2370
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2371
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2374
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2388
    return-void

    .line 2368
    :cond_1
    const v0, 0x7f0902f7

    goto :goto_0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 2409
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 2410
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f02053d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 2413
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2417
    :cond_0
    return-void
.end method

.method private showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1665
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2806
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2838
    :cond_0
    :goto_0
    return-void

    .line 2808
    :cond_1
    if-nez p1, :cond_3

    .line 2809
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 2812
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2813
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2815
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 2818
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0904c6

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2819
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2820
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2821
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 2822
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2824
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2825
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2830
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_7

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2831
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 2835
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2842
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v0, v3, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eq v0, v3, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "AP Dialog is aleady showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2849
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 2851
    if-nez v0, :cond_2

    .line 2852
    const-string v0, "WifiSettings"

    const-string v1, "Fail to show retry popup. Can not find access point."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2853
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2854
    const-string v0, "WifiSettings"

    const-string v1, "Fail to show retry popup. It\'s default AP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2856
    :cond_3
    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 2857
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090914

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2859
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1683
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1690
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1691
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1693
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1694
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f090467

    const v5, 0x1040014

    const/high16 v4, 0x104

    const v3, 0x1010355

    const/4 v2, 0x0

    .line 1935
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1936
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1939
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2115
    :cond_1
    :goto_0
    return-void

    .line 1942
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1943
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1944
    const-string v0, "WifiSettings"

    const-string v1, "Ignore wifi connectivity check dialog. WifiInfo is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1947
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1948
    const v1, 0x7f02054a

    const v2, 0x7f090458

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1949
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1950
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1951
    const v1, 0x7f090459

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1962
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1963
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1973
    :cond_3
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1977
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 1978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1988
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    .line 1995
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1996
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2002
    :pswitch_1
    const-string v0, "TMO"

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2003
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09035b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2004
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2005
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 2006
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 2012
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2013
    const v1, 0x7f020549

    const v2, 0x7f09035c

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2014
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2015
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2017
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2018
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2028
    :cond_5
    const v1, 0x7f0906f5

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2037
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2041
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 2042
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2047
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 2054
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2055
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1939
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 4
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    if-eqz v1, :cond_0

    .line 1699
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->dismiss()V

    .line 1702
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/settings/wifi/WifiVzwDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    .line 1703
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1707
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    .line 1712
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    .line 1714
    .local v0, guide:Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-interface {v0}, Lcom/android/settings/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1716
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-interface {v0}, Lcom/android/settings/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1720
    .end local v0           #guide:Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->show()V

    .line 1721
    return-void
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->dismiss()V

    .line 1758
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiVzwDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    .line 1759
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1760
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->show()V

    .line 1762
    return-void
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/16 v1, 0xa

    .line 1777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1783
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1786
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1787
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1789
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private startWith(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x7530

    const/4 v3, 0x0

    .line 1055
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings activity start with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    packed-switch p1, :pswitch_data_0

    .line 1081
    :goto_0
    return-void

    .line 1058
    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 1062
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1064
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/app/Activity;)V

    .line 1071
    const-wide/16 v3, 0x320

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1075
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1078
    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 1056
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2160
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2163
    const v0, 0x7f09031f

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2166
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 2169
    const/4 v4, 0x0

    .line 2170
    const-string v1, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateAccessPoints] wifiState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    packed-switch v0, :pswitch_data_0

    .line 2346
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    .line 2347
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_13

    .line 2348
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    :cond_4
    iput-wide v9, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 2174
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2176
    :cond_6
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2180
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v5

    .line 2181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2195
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_15

    .line 2197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2205
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object v1, v0

    .line 2208
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_8

    .line 2270
    :cond_8
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 2273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 2274
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 2275
    :goto_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v6, :cond_9

    .line 2276
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2280
    :cond_9
    const v0, 0x7f09031e

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2282
    :cond_a
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v3

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2295
    sget-boolean v7, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v7, :cond_e

    .line 2296
    if-eqz v0, :cond_f

    .line 2297
    iget-object v7, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v8, "Swisscom_Auto_Login"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2298
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2299
    iget-object v7, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v8, "Swisscom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v4, v5

    :goto_5
    move v5, v4

    move-object v4, v0

    .line 2310
    goto :goto_4

    :cond_b
    move v0, v3

    .line 2274
    goto :goto_3

    .line 2303
    :cond_c
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_d

    move v5, v2

    .line 2306
    :cond_d
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object v0, v4

    move v4, v5

    goto :goto_5

    .line 2310
    :cond_e
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_f
    move-object v0, v4

    move v4, v5

    goto :goto_5

    .line 2314
    :cond_10
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v0, :cond_11

    .line 2315
    if-ne v5, v2, :cond_11

    if-eqz v4, :cond_11

    .line 2316
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2317
    const-string v0, "WifiSettings"

    const-string v1, "network removed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_3

    .line 2323
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 2324
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2325
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2327
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_12
    move v2, v3

    .line 2324
    goto :goto_6

    .line 2335
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 2339
    :pswitch_2
    const v0, 0x7f0902e8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 2343
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_1

    .line 2350
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2351
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_15
    move-object v1, v0

    goto/16 :goto_2

    .line 2172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 8
    .parameter "state"

    .prologue
    .line 2721
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2722
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2727
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v4, :cond_2

    .line 2728
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 2730
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2734
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v4, :cond_6

    .line 2735
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2740
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2741
    if-eqz p1, :cond_4

    .line 2742
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2745
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 2747
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2748
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 2749
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2750
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2745
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2737
    .end local v1           #i:I
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2795
    .restart local v1       #i:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 2797
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    .line 2798
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;->OOBE_WIFI_CONNECTED:Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/tmowfc/wfcutils/StandardDialogs;->showDialog(Landroid/content/Context;Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateHiddenAccessPoint()V
    .locals 3

    .prologue
    .line 3570
    const-string v0, "/data/misc/wifi/hiddenAPs.txt"

    .line 3572
    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3574
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 3575
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3595
    :goto_0
    return-void

    .line 3582
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3585
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3586
    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3589
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3591
    :catch_0
    move-exception v0

    .line 3592
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3589
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1230
    if-eqz p1, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1238
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_1

    .line 1239
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1241
    if-eqz p1, :cond_3

    .line 1242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1261
    :cond_1
    :goto_1
    return-void

    .line 1234
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1250
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1251
    if-eqz p1, :cond_5

    .line 1252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200c9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1255
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2887
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2889
    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2900
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2953
    :goto_0
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2954
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2955
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2956
    :cond_1
    :goto_1
    return-void

    .line 2902
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2903
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-nez v0, :cond_1

    .line 2905
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 2906
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    goto :goto_1

    .line 2912
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2915
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2916
    const-string v0, "WifiSettings"

    const-string v1, "TALK BACK ON !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 2919
    :cond_2
    const v0, 0x7f0902e7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2924
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 2925
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_3

    .line 2927
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2928
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 2931
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_4

    .line 2937
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2939
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2941
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2935
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    goto :goto_2

    .line 2900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 3

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3504
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :goto_0
    return-void

    .line 3521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3532
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 3725
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 3726
    const/4 v0, 0x0

    .line 3728
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090b10

    goto :goto_0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 3790
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3791
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3792
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3793
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3794
    const/4 v4, 0x1

    .line 3797
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public isTalkbackPaused()Z
    .locals 2

    .prologue
    .line 3732
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 3734
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 3735
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 3737
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, -0x2

    const/16 v9, 0x10

    const v12, 0x7f0700c8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 558
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 580
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 581
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    .line 583
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 601
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 618
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 635
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 637
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 638
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 642
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 643
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 660
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 665
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 668
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 670
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 678
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 680
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 681
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 682
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 882
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 689
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 695
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 699
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 700
    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 702
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 707
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 710
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_17

    .line 711
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sput v11, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 713
    const v7, 0x7f0700bc

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 730
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_5

    .line 731
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 732
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v7, :cond_4

    .line 733
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7, v11}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 735
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v7, :cond_5

    .line 736
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 740
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_7

    .line 741
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1a4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 754
    :cond_7
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    .line 756
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    if-nez v7, :cond_8

    .line 757
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 762
    :cond_8
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_f

    .line 765
    const-string v7, "connect_seamlessly"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    .line 786
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_9

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 797
    :cond_9
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_e

    move-object v6, v1

    .line 800
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 801
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_e

    .line 802
    :cond_a
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 804
    .local v5, padding:I
    invoke-virtual {v0, v10, v10, v5, v10}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 805
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 806
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v7, :cond_19

    .line 807
    :cond_b
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v9, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 809
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 815
    :cond_c
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_d

    .line 816
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v13, v13, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 822
    :cond_d
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_1a

    .line 823
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0902e4

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 827
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 832
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_e
    new-instance v7, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 835
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_f
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_10

    .line 845
    :cond_10
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_11

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 848
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 849
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 854
    :cond_11
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_12

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_12

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 858
    :cond_12
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_14

    .line 860
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 861
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 862
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f02025e

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setLogo(I)V

    .line 863
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090ff3

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 865
    :cond_13
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v7, :cond_14

    .line 866
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 870
    :cond_14
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_1b

    sget-boolean v7, Lcom/android/settings/wifi/WifiSettings;->WIFI_OFF:Z

    if-eqz v7, :cond_1b

    .line 871
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 877
    :cond_15
    :goto_4
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v7, :cond_16

    .line 878
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->updateHiddenAccessPoint()V

    .line 881
    :cond_16
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_0

    .line 714
    :cond_17
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_18

    .line 715
    const v7, 0x7f0700c7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 720
    :cond_18
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 811
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_19
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2

    .line 825
    :cond_1a
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f09030f

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    .line 872
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1b
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_15

    goto :goto_4
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3684
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3688
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3689
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3690
    return-void
.end method

.method public onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1365
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 1366
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1370
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1371
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090318

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1381
    :goto_1
    return-void

    .line 1368
    :cond_1
    sput-boolean v6, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1376
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v0, :cond_3

    .line 1377
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.net.wifi.SECSETUP_WIFI_ADVANCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1379
    :cond_3
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 548
    instance-of v0, p1, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "WifiSettings"

    const-string v1, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in onAttach of Fragment "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v0, :cond_0

    .line 552
    check-cast p1, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .line 555
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3326
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 3327
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 3355
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 3348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_2

    .line 3349
    const-string v0, "WifiSettings"

    const-string v1, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3351
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 3352
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 3353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1225
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1226
    return-void

    .line 1224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1465
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1466
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1535
    :cond_0
    :goto_0
    return v0

    .line 1468
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1535
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1470
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1476
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 1480
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1481
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1483
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1501
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1511
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1515
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1516
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v2, :cond_0

    .line 1517
    if-nez v1, :cond_4

    .line 1518
    const-string v1, "WifiSettings"

    const-string v2, "selectedConfig == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1521
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1522
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1523
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1524
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0

    .line 1527
    :cond_5
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1528
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1529
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 1468
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiSecPickerActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLightTheme:Z

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsTablet:Z

    .line 442
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 443
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1401
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v0, :cond_1

    .line 1402
    const-string v0, "WifiSettings"

    const-string v1, "InSecPickerActivity : ignore context menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1409
    instance-of v3, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 1410
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1412
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 1417
    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1421
    const/4 v0, 0x7

    const v3, 0x7f090319

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1423
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v4, :cond_0

    .line 1424
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v0, :cond_3

    .line 1425
    const/16 v0, 0xc

    const v3, 0x7f09031a

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    .line 1426
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_7

    .line 1429
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1430
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1436
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v0

    .line 1439
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1440
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1443
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 1444
    const/16 v1, 0x8

    const v3, 0x7f09031b

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1451
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getIsHS20AP()Z

    move-result v1

    .line 1452
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1455
    const/16 v0, 0x9

    const v1, 0x7f09031c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1430
    goto :goto_1

    .line 1432
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1440
    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0903a9

    const v2, 0x7f0903a8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1841
    packed-switch p1, :pswitch_data_0

    .line 1918
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1844
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1845
    if-nez v3, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1847
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1849
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1853
    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1857
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1858
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1859
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1863
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1861
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 1866
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 1867
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1873
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 1874
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1879
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1898
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_wifi"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1089
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v0, :cond_4

    .line 1090
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    .line 1095
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_0

    .line 1097
    const/4 v0, 0x6

    const v6, 0x7f090317

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 1098
    if-eqz v5, :cond_6

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200d1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1104
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1108
    :cond_0
    const v0, 0x7f090318

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 1109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200c9

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1110
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_d

    .line 1111
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_8

    .line 1112
    const/4 v0, 0x3

    const v6, 0x7f090316

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 1113
    if-eqz v5, :cond_7

    .line 1114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200d5

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 1119
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 1128
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1129
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-eq v6, v2, :cond_1

    sget-boolean v6, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    if-ne v6, v2, :cond_a

    .line 1155
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    .line 1156
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1160
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v4, :cond_9

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1163
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 1164
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 1213
    :cond_3
    :goto_3
    if-nez v5, :cond_4

    .line 1214
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_c

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1218
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1219
    :cond_5
    return-void

    .line 1102
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1117
    goto :goto_1

    .line 1123
    :cond_8
    if-nez v5, :cond_d

    move v0, v2

    .line 1124
    goto :goto_2

    .line 1167
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    if-ne v0, v2, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1169
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 1175
    :cond_a
    const v0, 0x7f090313

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1179
    const v0, 0x7f090315

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1193
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsTablet:Z

    if-nez v0, :cond_b

    .line 1194
    :cond_b
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1199
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v0, v7, :cond_3

    .line 1200
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    if-eqz v0, :cond_3

    .line 1201
    const/4 v0, 0x0

    const/16 v1, 0xb

    const/4 v4, 0x0

    const v6, 0x7f090b0f

    invoke-interface {p1, v0, v1, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    move v2, v3

    .line 1214
    goto/16 :goto_4

    :cond_d
    move v0, v3

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 450
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 451
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v1, :cond_0

    .line 527
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onManageNetworkMenuPressed()V
    .locals 7

    .prologue
    .line 1384
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1385
    const-string v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09030f

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1397
    :goto_0
    return-void

    .line 1395
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v6

    .line 1347
    :cond_0
    :goto_0
    return v7

    .line 1286
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1347
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_0

    .line 1288
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1291
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 1300
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090480

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1306
    :cond_3
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1310
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1313
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsTablet:Z

    if-nez v0, :cond_4

    .line 1314
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    const-string v1, "helphub:section"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1320
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    .line 1323
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    move v7, v6

    goto :goto_0

    .line 1327
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1336
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 1339
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1340
    const-string v1, "com.lguplus.ho_client_impl"

    const-string v2, "com.lguplus.ho_client_impl.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1344
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onManageNetworkMenuPressed()V

    goto/16 :goto_0

    .line 1286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 995
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1007
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 1008
    sput-boolean v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 1011
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_2

    .line 1013
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1014
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1019
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1024
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1027
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1029
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 1032
    :cond_5
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1033
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1035
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1037
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1038
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 1042
    :cond_6
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 1552
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_6

    .line 1553
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1554
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v1, :cond_1

    .line 1555
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1556
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v2, "bssid"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    const-string v2, "security"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    const-string v2, "frequency"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1612
    :cond_0
    :goto_0
    return v0

    .line 1569
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1571
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1573
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1587
    if-eqz v1, :cond_0

    .line 1592
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v1, v4, :cond_4

    .line 1594
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1596
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1576
    :cond_3
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1578
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1599
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1600
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09046c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1603
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1606
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1607
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto/16 :goto_0

    .line 1610
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 886
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 893
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_0

    .line 894
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 897
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 898
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 899
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 901
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 902
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 905
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_1

    .line 906
    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 914
    .local v1, auxNetId:I
    if-eq v1, v5, :cond_2

    .line 915
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 916
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 920
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 927
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_4

    .line 928
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 931
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 934
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    .line 935
    sput-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 953
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 954
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 973
    :cond_6
    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 975
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v3, :cond_7

    .line 976
    const-string v3, "WifiSettings"

    const-string v4, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in OnResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 978
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v3, :cond_7

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .line 982
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 983
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 984
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->dismissSpinnerPopup()V

    .line 987
    :cond_8
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_9

    .line 988
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    .line 989
    sput v6, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 991
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1265
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1273
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v1, 0x7f0b045e

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v1, 0x7f0b04b3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 1279
    :cond_2
    return-void
.end method

.method public onScanMenuPressed()V
    .locals 3

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1356
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v0, :cond_2

    .line 1358
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 1363
    :cond_0
    :goto_1
    return-void

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09046a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1360
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1046
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1047
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1049
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1051
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1052
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3676
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3677
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3721
    :cond_0
    return-void
.end method

.method public speakTTS()V
    .locals 4

    .prologue
    .line 3741
    const v0, 0x7f09046b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3742
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 3743
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 3359
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3361
    if-nez v0, :cond_3

    .line 3362
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 3365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3393
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3394
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3396
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3397
    :cond_2
    return-void

    .line 3367
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_6

    .line 3368
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3369
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3371
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 3372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3373
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3376
    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3377
    const-string v1, "TMO"

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3378
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3383
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3385
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3386
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3389
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
