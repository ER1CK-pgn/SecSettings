.class public Lcom/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private extra_type:I

.field private isAirplaneMode:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisabledByEnablingHotspot:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private req_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    .line 115
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 744
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    .prologue
    .line 726
    const/4 v0, 0x1

    .line 728
    .local v0, setSoftapEnableFlag:Z
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 729
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 733
    const-string v1, "WifiApWarning"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 739
    :cond_0
    if-eqz v0, :cond_1

    .line 740
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    .line 742
    :cond_1
    return-void
.end method

.method private disableWifiDialog()V
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 775
    .local v0, netInfo:Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 795
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    const-string v1, "WifiApWarning"

    const-string v2, "WiFi p2p is connected. Create dailog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 781
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 985
    const-string v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissProgressDialog, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 989
    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 990
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 995
    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 996
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1000
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1003
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 901
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 902
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 903
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 905
    .local v0, mRvfMode:I
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1009
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1010
    :cond_0
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1011
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 1030
    :cond_1
    :goto_0
    return-void

    .line 1012
    :cond_2
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 1013
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 1014
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1015
    if-ne p1, v5, :cond_1

    .line 1016
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v1, :cond_4

    .line 1017
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1018
    .local v0, wm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_4

    .line 1019
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_5

    .line 1020
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1026
    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1027
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 1021
    .restart local v0       #wm:Landroid/net/wifi/WifiManager;
    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_4

    .line 1022
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    goto :goto_1
.end method

.method private isP2pConnected()Z
    .locals 4

    .prologue
    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 949
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 950
    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isP2PConnected() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    return v0

    .line 952
    :catch_0
    move-exception v0

    .line 953
    const-string v0, "WifiApWarning"

    const-string v1, "isP2pConnected - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 895
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1035
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 6

    .prologue
    .line 676
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 677
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 678
    .local v0, isRoaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, iso:Ljava/lang/String;
    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 707
    if-eqz p1, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    .line 714
    :cond_0
    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 923
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 930
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 933
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3
    .parameter

    .prologue
    .line 909
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 910
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 911
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 912
    const-string v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 914
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 915
    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 11
    .parameter "enable"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 798
    if-eqz p1, :cond_0

    .line 799
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 800
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 801
    .local v2, wifiApState:I
    if-eqz p1, :cond_3

    const/16 v4, 0xc

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-ne v2, v4, :cond_3

    .line 803
    :cond_1
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 804
    const-string v4, "WifiApWarning"

    const-string v5, "provisioning sucess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 853
    :goto_0
    return-void

    .line 809
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 810
    .local v3, wifiState:I
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 811
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 812
    const-string v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v4, :cond_5

    .line 814
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 815
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    move v4, v6

    .line 811
    goto :goto_1

    .line 821
    :cond_5
    if-eqz p1, :cond_9

    if-eq v3, v9, :cond_6

    if-eq v3, v10, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 824
    :cond_6
    if-eq v3, v9, :cond_7

    if-ne v3, v10, :cond_8

    .line 826
    :cond_7
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 828
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 830
    const-wide/16 v7, 0x258

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_a

    .line 837
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    .line 838
    const-string v4, "WifiApWarning"

    const-string v6, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_a
    const-string v4, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftapEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-eqz p1, :cond_b

    .line 843
    sput-boolean v5, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 844
    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 831
    :catch_0
    move-exception v1

    .line 832
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private showNextHotspotDialog(I)V
    .locals 23
    .parameter "id"

    .prologue
    .line 436
    packed-switch p1, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 673
    :goto_1
    return-void

    .line 438
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 442
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v5, HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 447
    .local v15, view:Landroid/widget/TextView;
    const v18, 0x7f090484

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 450
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    :cond_1
    const/high16 v18, 0x4190

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 453
    const/high16 v18, 0x4000

    const/high16 v19, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 454
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 455
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 456
    const v18, 0x7f090471

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    const v18, 0x7f0907a0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 474
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 477
    .end local v5           #HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v15           #view:Landroid/widget/TextView;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .local v4, HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f090478

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 479
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    const v18, 0x7f09042d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 493
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 496
    .end local v4           #HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v12, mNoSimDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09042c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 498
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    const v18, 0x7f09042d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 512
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 515
    .end local v12           #mNoSimDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    .local v13, mWarnRoamBulder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f09044c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "$20.48"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 517
    const v18, 0x7f090749

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    const v18, 0x7f09044b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 530
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 533
    .end local v13           #mWarnRoamBulder:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    const-string v7, "file:///android_asset/html/%y/tethering_attention.html"

    .line 534
    .local v7, attention_url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 535
    .local v11, locale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v10, "ja"

    .line 536
    .local v10, language:Ljava/lang/String;
    :goto_2
    const-string v18, "%y"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, url:Ljava/lang/String;
    new-instance v8, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 539
    .local v8, attention_view:Landroid/webkit/WebView;
    invoke-virtual {v8, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 541
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v6, attentionDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 543
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    const v18, 0x7f0907a0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    const v18, 0x1040014

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 561
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 563
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 535
    .end local v6           #attentionDialog:Landroid/app/AlertDialog$Builder;
    .end local v8           #attention_view:Landroid/webkit/WebView;
    .end local v10           #language:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :cond_2
    const-string v10, "en"

    goto :goto_2

    .line 566
    .end local v7           #attention_url:Ljava/lang/String;
    .end local v11           #locale:Ljava/util/Locale;
    :pswitch_6
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v9, batteryDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09046f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 568
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    const v18, 0x7f0907a0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    const v18, 0x7f0906c8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 586
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 587
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 590
    .end local v9           #batteryDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_7
    const-string v18, "WifiApWarning"

    const-string v19, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 592
    new-instance v18, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    goto/16 :goto_1

    .line 607
    :pswitch_8
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v16, warnWifiDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f090407

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 609
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    const v18, 0x7f0907a0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    const v18, 0x7f09046c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 640
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 641
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 644
    .end local v16           #warnWifiDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    .local v17, warnWifiP2PDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09040d

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 646
    const v18, 0x7f09079f

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    const v18, 0x7f0907a0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$31;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$31;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    const v18, 0x7f09046c

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 664
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 665
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 668
    .end local v17           #warnWifiP2PDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 965
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 973
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 975
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 976
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    const-string v1, "WifiApWarning"

    const-string v2, "startActivityForResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 870
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 871
    const-string v0, "WifiApWarning"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-nez p1, :cond_0

    .line 873
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 875
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 878
    const-string v0, "WifiApWarning"

    const-string v1, "WifiAp is disabled: provisioning fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 880
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 882
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1042
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1043
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    const v10, 0x7f100034

    const/4 v9, 0x1

    .line 131
    const-string v6, "WifiApWarning"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 135
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 136
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 138
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 139
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 140
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    .line 141
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    .line 142
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 145
    const-string v6, "WifiApWarning"

    const-string v7, "Error: this activity may be started only with intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 150
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    .line 151
    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    .line 152
    iget-object v5, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 153
    .local v5, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v6, :pswitch_data_0

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 155
    :pswitch_0
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :pswitch_1
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_NAI_MISMATCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :pswitch_2
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_TETHERING_DENIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 162
    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0903da

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 165
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v6, v9, :cond_3

    .line 166
    const v6, 0x7f0903de

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 172
    :goto_1
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v6, v9, :cond_2

    .line 173
    const v6, 0x7f0907a0

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    :cond_2
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    .line 255
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 167
    :cond_3
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 168
    const v6, 0x7f0903dc

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 170
    :cond_4
    const v6, 0x7f0903dd

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 330
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v2           #cr:Landroid/content/ContentResolver;
    :pswitch_3
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 332
    invoke-virtual {p0, v11}, Landroid/app/Activity;->setVisible(Z)V

    .line 333
    move-object v1, p0

    .line 334
    .local v1, av:Landroid/app/Activity;
    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 336
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 338
    .local v4, newDialog:Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_6

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_6

    .line 339
    const v6, 0x7f0903d2

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 347
    :cond_5
    :goto_2
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 411
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 412
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 340
    :cond_6
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_7

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_7

    .line 341
    const v6, 0x7f0903d8

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 342
    :cond_7
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v12, :cond_8

    .line 343
    const v6, 0x7f0903d5

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 344
    :cond_8
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_5

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v6, :cond_5

    .line 345
    const v6, 0x7f0903d7

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 416
    .end local v1           #av:Landroid/app/Activity;
    .end local v4           #newDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 417
    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_0

    .line 425
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 426
    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 427
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1077
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1078
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1079
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1081
    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1048
    const-string v0, "WifiApWarning"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1050
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1053
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1055
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1058
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    const/4 v0, -0x2

    invoke-static {p0, v0, p0}, Lcom/android/settings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 1062
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1064
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1074
    :cond_3
    :goto_0
    return-void

    .line 1065
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_5

    .line 1067
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1070
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1071
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 960
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 961
    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 918
    const-string v2, "wifi_ap_show_passwd"

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 920
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
