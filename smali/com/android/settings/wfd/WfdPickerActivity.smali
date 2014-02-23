.class public Lcom/android/settings/wfd/WfdPickerActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mWfdAlreadyEnabled:Z

.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private bShowInternalHelp:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlreadyTurnedOn:Z

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectingDialogCalled:Z

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private mControlByWfdService:I

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsHotspotOn:Z

.field private mIsP2pBusyDialogCalled:Z

.field private mIsPaused:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTempSsid:Ljava/lang/String;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdEnabled:Z

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdState:I

.field mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

.field mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private final wfdStateArr:[Ljava/lang/String;

.field wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    sput-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 210
    sput-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 124
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 125
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 138
    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 150
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 151
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 153
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 154
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 155
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 164
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 176
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 183
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 184
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 185
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 187
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 189
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 191
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 192
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 193
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 195
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 196
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 197
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 198
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 200
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 208
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 209
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 218
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 219
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 229
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 230
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 234
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 235
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 237
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 238
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 239
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 240
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 241
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 242
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 244
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 245
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 246
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 248
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 249
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 251
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 255
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 257
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 261
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 263
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 264
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 266
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 269
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 271
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    .line 273
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 536
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 554
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    .line 1547
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1568
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2857
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2858
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2861
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    .line 2867
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$26;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$26;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 2879
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$27;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$27;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mRtspTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    sput-object p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$4410(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/settings/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V

    return-void
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 953
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v0, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 2583
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2585
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2587
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2592
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 2593
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2594
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2597
    :cond_1
    return-void
.end method

.method private autoConnecting()V
    .locals 5

    .prologue
    .line 2947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 2949
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    .line 2950
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2954
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v0, :cond_0

    .line 2955
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 2956
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2963
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    .line 2965
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2966
    sget-object v2, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wfd/WfdPickerActivity$28;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity$28;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2991
    :goto_1
    return-void

    .line 2958
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 2959
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    goto :goto_0

    .line 2990
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_1
.end method

.method private cancelWfdConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2312
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2316
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2317
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2321
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2322
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$22;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$22;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2342
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2344
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_0

    .line 2347
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$23;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$23;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2358
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2360
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 2362
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2363
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2365
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2366
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 2440
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2443
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2444
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2446
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1845
    invoke-direct {p0, p3}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1846
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is found in the list device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1851
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1853
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1855
    :cond_0
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1838
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1840
    :cond_1
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2193
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 2197
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2198
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0904c8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2206
    const v1, 0x7f0401a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2212
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2214
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2216
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 2218
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$19;

    iget-wide v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$19;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2231
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2233
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2234
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2235
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$20;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$20;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2264
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09074d

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$21;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$21;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2285
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1899
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 1900
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    aput-object v0, v1, v4

    .line 1922
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1923
    const v2, 0x7f0401d7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1924
    const v0, 0x7f0b04d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 1925
    const v0, 0x7f0b0532

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1926
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1927
    const v0, 0x7f0b0533

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1928
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1929
    const-string v3, "~`!@$%^&*()-_=+[];:\'\",<.>/?"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1933
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1934
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1935
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1951
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1952
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 1953
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1955
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0904f2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09074c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$15;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09074d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$14;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1981
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1982
    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$16;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$16;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1989
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1991
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1992
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$17;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity$17;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2031
    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 2134
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 2136
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2140
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904cb

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2148
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09074c

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$18;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$18;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2166
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 2143
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904cc

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2115
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 2118
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2120
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904ca

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09074c

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2126
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09074d

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2129
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .parameter "device"

    .prologue
    .line 2918
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayConnectionFailed()V
    .locals 2

    .prologue
    .line 2178
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2181
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    .line 2183
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 2184
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2185
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 2189
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 2190
    return-void
.end method

.method private finishScanDevice(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2766
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishScanDevice << result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2770
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2771
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_0
    :goto_0
    return-void

    .line 2775
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2776
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishScanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2780
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2781
    packed-switch p1, :pswitch_data_0

    .line 2809
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2814
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2816
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2817
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 2818
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2819
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2820
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2827
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isSwitchChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2828
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2783
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2788
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc dev info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2790
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto/16 :goto_1

    .line 2795
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2798
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0

    .line 2804
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2832
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 2837
    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2839
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2841
    :cond_6
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2847
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_0

    .line 2781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCPUPowerSavingMode()I
    .locals 4

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_cpu_clock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 613
    .local v0, iCpuPowerSavinge:I
    return v0
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 4

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2379
    const-string v1, "wlan.wfd.lastdevicename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2381
    const-string v2, "wlan.wfd.lastdeviceaddr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2384
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2385
    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2388
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2389
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2392
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1858
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1859
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1861
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1862
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting by nfc dev addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1867
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPowerSavingMode()I
    .locals 4

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getPreviousWifiState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2053
    .line 2054
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2056
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2057
    const-string v2, "getPreviousWifiState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2058
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2059
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2067
    :goto_0
    return v0

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    const-string v2, "WfdPickerActivity"

    const-string v3, "this method is not supported for this model"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2893
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wifi display connection failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2896
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    if-lez v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2915
    :cond_0
    return-void
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 909
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 910
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 914
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 916
    if-eqz v0, :cond_1

    .line 917
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 925
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_0
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1816
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1820
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1821
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1823
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09048e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1824
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1826
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1828
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1831
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1832
    return-void
.end method

.method private initMemberVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 785
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 788
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 792
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 793
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 794
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 795
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 798
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 799
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 803
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 805
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 806
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 879
    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 881
    const-string v0, "allsharecast_available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 882
    const-string v0, "allsharecast_connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 883
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 885
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 888
    const-string v0, "allsharecast_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 890
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 895
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 896
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 898
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 905
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 906
    return-void

    .line 901
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_0
.end method

.method private isDongleRenameAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2035
    .line 2036
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2038
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2039
    const-string v2, "isDongleRenameAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2040
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2041
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2049
    :goto_0
    return v0

    .line 2043
    :catch_0
    move-exception v0

    .line 2044
    const-string v2, "WfdPickerActivity"

    const-string v3, "this method is not supported for this model"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3057
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3059
    if-nez v0, :cond_0

    move v0, v1

    .line 3073
    :goto_0
    return v0

    .line 3063
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3073
    goto :goto_0

    .line 3067
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3063
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNotNfcEntry()Z
    .locals 4

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 827
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 828
    .local v1, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 829
    const/4 v2, 0x0

    .line 831
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3078
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3081
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3084
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 3085
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    const/4 v0, 0x1

    .line 3095
    :goto_0
    return v0

    .line 3088
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3089
    goto :goto_0

    .line 3091
    :catch_0
    move-exception v0

    .line 3092
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3095
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3103
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3106
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const/4 v0, 0x1

    .line 3117
    :goto_0
    return v0

    .line 3110
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3111
    goto :goto_0

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3117
    goto :goto_0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .parameter "deviceType"

    .prologue
    const/4 v0, 0x1

    .line 2993
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 3005
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3007
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v0, 0x1

    .line 3011
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .parameter "dev"

    .prologue
    .line 2998
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter

    .prologue
    .line 2301
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2302
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePinConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2306
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2307
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method private printWfdSettingState()V
    .locals 3

    .prologue
    .line 2451
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 2452
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 2453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2458
    :goto_0
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    return-void

    .line 2455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown! curr WFDState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2423
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2427
    const-string v1, "wlan.wfd.lastdevicename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2428
    const-string v1, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2432
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    :goto_0
    return-void

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    const-string v0, "WfdPickerActivity"

    const-string v1, "putLastConnectedDeviceInfo - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAutoConnectDialog()V
    .locals 1

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2291
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    .line 2292
    return-void
.end method

.method private retrieveServiceManagers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 837
    const-string v0, "WfdPickerActivity"

    const-string v1, "Retrieving Service Managers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 842
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 843
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 846
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 847
    const-string v0, "WfdPickerActivity"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sput-object v4, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 855
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 858
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 861
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cause"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 863
    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 871
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 876
    :cond_2
    return-void

    .line 852
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_1

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 2688
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2691
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_0
    :goto_0
    return-void

    .line 2695
    :cond_1
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v3, :cond_2

    .line 2696
    const-string v0, "WfdPickerActivity"

    const-string v1, "already scanning devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2700
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2701
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 2703
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2705
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2709
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f09048d

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2710
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2712
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2714
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 2715
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2716
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2719
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2720
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2722
    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2723
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2724
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2725
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 2728
    :cond_4
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$24;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$24;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2738
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2741
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2743
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2744
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 2748
    :cond_5
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$25;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$25;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private setAllShareCastSwitch()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 993
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 995
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 996
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 997
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 999
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1002
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 1003
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1006
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1014
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1015
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 1022
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 1024
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 1037
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1039
    :cond_3
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1040
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1041
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1042
    iput v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1043
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1044
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1048
    :cond_4
    return-void

    .line 1017
    :cond_5
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    goto/16 :goto_0

    .line 1033
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    goto :goto_1
.end method

.method private setCastMenu(I)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f020331

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2600
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCastMenu in with menuType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 2604
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_3

    .line 2605
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "setCastMenu menu item is not created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    move v0, v2

    .line 2602
    goto :goto_0

    .line 2609
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_1

    .line 2611
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    .line 2612
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2613
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2620
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2621
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2624
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2629
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    .line 2631
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0200d1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2632
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2640
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2641
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f09049c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2643
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 2615
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_5

    .line 2616
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2617
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 2636
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2637
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 2647
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_b

    .line 2649
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0200d3

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2650
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2658
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2659
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f090790

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2661
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2663
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 2654
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2655
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 2667
    :pswitch_3
    const-string v3, "WfdPickerActivity"

    const-string v4, "MENU_TYPE_ENDCONNECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_c

    if-eqz v0, :cond_e

    .line 2669
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v3, 0x7f0200cd

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2670
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2671
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2676
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2677
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_7
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2678
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f09049d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 2671
    goto :goto_5

    .line 2673
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2674
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    :cond_f
    move v2, v1

    .line 2677
    goto :goto_7

    .line 2624
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2072
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2073
    const-string v1, "setDeviceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2074
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    :goto_0
    return-void

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    const-string v1, "WfdPickerActivity"

    const-string v2, "this method is not supported for this model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDialogListener(Z)V
    .locals 3
    .parameter "option"

    .prologue
    .line 1871
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1872
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    .line 1895
    :goto_0
    return-void

    .line 1893
    :cond_0
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    goto :goto_0
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2398
    if-nez p1, :cond_1

    .line 2399
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2402
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    return-void

    .line 2404
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2406
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2410
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2412
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPowerSavingMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 605
    return-void
.end method

.method private showDisableToast()V
    .locals 3

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1257
    return-void
.end method

.method private startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2923
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2925
    iget-object v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2927
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2929
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_1

    .line 2930
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2932
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2944
    :cond_0
    :goto_0
    return-void

    .line 2934
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    if-eqz v0, :cond_2

    .line 2936
    const-string v0, "WfdPickerActivity"

    const-string v1, "activity already paused! we don\'t need to create this dialog...skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2939
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2940
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private stopConnectingCountDown()V
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2298
    :cond_0
    return-void
.end method

.method private terminateWfdActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1260
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1263
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1265
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 1271
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1272
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1275
    :cond_2
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_0

    .line 1291
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1297
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1299
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1301
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 1305
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1307
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1280
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1275
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private turnOnScreenMirroring()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    const-string v0, "WfdPickerActivity"

    const-string v1, "AllShare Cast is turned on..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    if-nez v0, :cond_0

    .line 619
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    .line 620
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 621
    sput-boolean v2, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isHotspotOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    .line 626
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 628
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdModeAlways()V

    .line 632
    :cond_1
    return-void
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 582
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 929
    const/4 v3, 0x0

    .line 931
    .local v3, msgs:[Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 932
    .local v4, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    .line 933
    array-length v6, v4

    new-array v3, v6, [Landroid/nfc/NdefMessage;

    .line 934
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 935
    aget-object v6, v4, v1

    check-cast v6, Landroid/nfc/NdefMessage;

    aput-object v6, v3, v1

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    .end local v1           #i:I
    :cond_0
    new-array v0, v7, [B

    .line 940
    .local v0, empty:[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 941
    .local v5, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v5, v6, v7

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 944
    .local v2, msg:Landroid/nfc/NdefMessage;
    new-array v3, v8, [Landroid/nfc/NdefMessage;

    .end local v3           #msgs:[Landroid/nfc/NdefMessage;
    aput-object v2, v3, v7

    .line 949
    .end local v0           #empty:[B
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v5           #record:Landroid/nfc/NdefRecord;
    .restart local v3       #msgs:[Landroid/nfc/NdefMessage;
    :cond_1
    return-object v3
.end method

.method handleP2pStateChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2508
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2511
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 2512
    packed-switch p1, :pswitch_data_0

    .line 2579
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2516
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 2518
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2520
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    .line 2522
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2523
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2525
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 2526
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2528
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2529
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2530
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2534
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2537
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v5, :cond_2

    .line 2538
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wfd state is already established, don\'t need to set Wfd state enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2542
    :cond_2
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 2543
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2544
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 2547
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2548
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v0, :cond_4

    .line 2549
    const-string v0, "WfdPickerActivity"

    const-string v1, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2552
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    goto :goto_0

    .line 2556
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 2560
    :cond_5
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2561
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 2567
    :pswitch_3
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v5, :cond_0

    .line 2568
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 811
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 812
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v5, v4, :cond_0

    .line 820
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 814
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v4

    .line 815
    goto :goto_0

    .line 817
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    move v3, v4

    .line 820
    goto :goto_0
.end method

.method isWfdConnected()Z
    .locals 3

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 3017
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 3020
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3034
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3024
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const/4 v0, 0x1

    goto :goto_1

    .line 3028
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3020
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isWiFiConnected()Z
    .locals 2

    .prologue
    .line 3039
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3041
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3049
    :goto_0
    return v0

    .line 3045
    :catch_0
    move-exception v0

    .line 3046
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWiFiConnected - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 985
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 988
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 989
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1640
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1644
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1647
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1650
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-nez v0, :cond_2

    .line 1651
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1655
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1656
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1489
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1490
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1493
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1494
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1497
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, 0x1

    .line 1504
    :goto_0
    return v0

    .line 1499
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1501
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1504
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 734
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 739
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 740
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 742
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    :cond_0
    if-nez v1, :cond_1

    .line 757
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 782
    :goto_0
    return-void

    .line 762
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 763
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 765
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 766
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 767
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 768
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 770
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 773
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 775
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 777
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 779
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initUI()V

    .line 781
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1527
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1531
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v1, :cond_1

    .line 1532
    instance-of v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    .line 1533
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1534
    const/4 v0, 0x4

    const v1, 0x7f0904f1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    instance-of v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1540
    const/4 v0, 0x5

    const v1, 0x7f0904f2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1587
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1592
    packed-switch p1, :pswitch_data_0

    .line 1614
    const/4 v0, 0x0

    .line 1634
    :goto_0
    return-object v0

    .line 1594
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1617
    :goto_1
    if-eqz v0, :cond_0

    .line 1618
    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1633
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1597
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1601
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1605
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1608
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1592
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f020331

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1314
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu  NfcWriteMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_3

    move v0, v1

    .line 1317
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_2

    .line 1319
    const v3, 0x7f09049c

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 1323
    const v3, 0x7f09049d

    invoke-interface {p1, v2, v7, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 1327
    const/4 v3, 0x3

    const v4, 0x7f0904a1

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1332
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1335
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v3, :cond_1

    .line 1336
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1342
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1343
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1344
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1352
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_4

    .line 1353
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f0200d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1359
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1360
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1361
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1381
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1382
    return-void

    :cond_3
    move v0, v2

    .line 1315
    goto/16 :goto_0

    .line 1346
    :catch_0
    move-exception v3

    .line 1347
    const-string v4, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1363
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1364
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1366
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1367
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1369
    if-eqz v0, :cond_5

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f0200d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1372
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1376
    :cond_5
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCastMenu mCurMenuType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 968
    const-string v0, "WfdPickerActivity"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const v0, 0x7f0401a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 970
    const v0, 0x7f0b0471

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 971
    const v0, 0x7f0b0470

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 972
    const v0, 0x7f0b0472

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 974
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f020308

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 975
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f09119b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0904cf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 978
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1183
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 1187
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1191
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1193
    const-string v3, "stop"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1194
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1195
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1216
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1219
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetach writeIfSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 1229
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    sget-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1231
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState != WFD_PICKER_STATE_DISABLED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1233
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    .line 1243
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWiFiConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreviousWifiState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1244
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1245
    if-eqz v0, :cond_3

    .line 1246
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1249
    :cond_3
    return-void

    .line 1239
    :cond_4
    sput-boolean v4, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 1240
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState = WFD_PICKER_STATE_DISABLED already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1484
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1409
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1412
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    :cond_0
    :goto_1
    move v0, v7

    .line 1425
    goto :goto_0

    .line 1418
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1419
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1421
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1423
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_1

    .line 1427
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    if-nez v0, :cond_8

    .line 1430
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_4

    .line 1439
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v7, :cond_6

    .line 1440
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    :goto_2
    if-eqz v2, :cond_3

    .line 1447
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1448
    if-eqz v0, :cond_2

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "noaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1449
    :cond_2
    const-string v0, "called_by_settings"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1456
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v7

    .line 1458
    goto/16 :goto_0

    .line 1432
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1433
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904e1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1436
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1442
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1451
    :cond_7
    :try_start_1
    const-string v0, "called_by_settings"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    const-string v1, "WfdPickerActivity"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1462
    :cond_8
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    const-string v1, "helphub:section"

    const-string v2, "allshare_cast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move v0, v7

    .line 1472
    goto/16 :goto_0

    .line 1465
    :catch_1
    move-exception v0

    .line 1466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1467
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    const-string v1, "app_package_name"

    const-string v2, "com.samsung.helphub"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 1476
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1479
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_9
    move v0, v7

    .line 1481
    goto/16 :goto_0

    .line 1407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1109
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1113
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1123
    :cond_1
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1126
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 1129
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_4

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->pause()V

    .line 1132
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 1134
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1136
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1137
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause stop peer Discovery in Scanning "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_5

    .line 1141
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1147
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1148
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 1151
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1152
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1158
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1159
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause, stopPeerDiscovery if wfd not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1165
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1679
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeersAvailable, mConnectingDialogCalled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1681
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    if-eqz v0, :cond_2

    .line 1688
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_1
    :goto_0
    return-void

    .line 1692
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1694
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1695
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1697
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1698
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1700
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1702
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v3, 0x7f09048d

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1703
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1705
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1706
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1708
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1709
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1711
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 1712
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1714
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1715
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1716
    const-string v1, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Address - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " peer.wfdDeviceType - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1721
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1724
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v5}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1729
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1730
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1731
    if-eqz v3, :cond_5

    .line 1732
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1738
    :goto_2
    if-eqz v1, :cond_6

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v6, :cond_6

    .line 1739
    const-string v6, "WfdPickerActivity"

    const-string v7, "connect by nfc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-direct {p0, v0, v5, v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1734
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 1735
    :goto_3
    const-string v6, "WfdPickerActivity"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 1743
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1745
    const-string v1, "WfdPickerActivity"

    const-string v3, "connectLastConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-direct {p0, v0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_1

    .line 1754
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1756
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1760
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1762
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 1764
    iput v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1765
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1767
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1769
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1770
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1772
    :cond_9
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_4

    .line 1774
    :cond_a
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1782
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 1783
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1734
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1510
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bStartConnectingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v0, :cond_0

    .line 1513
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1514
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1515
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1516
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1517
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1386
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v2, :cond_0

    .line 1388
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1389
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-eqz v3, :cond_2

    .line 1390
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1396
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 1397
    :goto_1
    if-eqz v0, :cond_1

    .line 1398
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_1

    .line 1400
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1403
    :cond_1
    return-void

    .line 1392
    :cond_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1396
    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 1052
    const-string v0, "WfdPickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1054
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1056
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1061
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1063
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1064
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1065
    const-string v3, "stop"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1066
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1067
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1070
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1072
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->resume()V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v7}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_4

    .line 1080
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWFDSettingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    .line 1083
    if-lt v0, v5, :cond_6

    .line 1085
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1086
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 1088
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_3

    .line 1089
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1093
    :cond_3
    if-lt v0, v6, :cond_5

    .line 1094
    iput v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1105
    :cond_4
    :goto_0
    return-void

    .line 1096
    :cond_5
    if-ne v0, v5, :cond_4

    .line 1097
    iput v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 1100
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v5, :cond_4

    .line 1101
    iput v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1102
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1174
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1175
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v0, :cond_0

    .line 1176
    const-string v0, "WfdPickerActivity"

    const-string v1, "Dialog finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 1179
    :cond_0
    return-void
.end method

.method public setAutoConnStarted()V
    .locals 1

    .prologue
    .line 2170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2171
    return-void
.end method

.method setWfdEnabled()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 636
    const-string v8, "WfdPickerActivity"

    const-string v9, "setWfdEnabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v8, "wfd"

    invoke-virtual {p0, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/wfd/WfdManager;

    iput-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 640
    .local v2, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v8, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 643
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screenMirroringPowerSaving_showNeverAgain"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 644
    .local v6, showNeverAgain:I
    const-string v8, "WfdPickerActivity"

    const-string v9, "Power saving mode and CPU power saving is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez v6, :cond_0

    .line 646
    const-string v8, "layout_inflater"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 647
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040052

    invoke-virtual {v3, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 648
    .local v4, layout:Landroid/view/View;
    const v8, 0x7f0b00ee

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 649
    .local v1, check:Landroid/widget/CheckBox;
    const v8, 0x7f0b00ed

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 650
    .local v7, txtView:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904f5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0904c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0904e1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090729

    new-instance v10, Lcom/android/settings/wfd/WfdPickerActivity$6;

    invoke-direct {v10, p0, v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090173

    new-instance v10, Lcom/android/settings/wfd/WfdPickerActivity$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 685
    .local v5, powerSavingDialog:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 686
    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$7;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 712
    .end local v1           #check:Landroid/widget/CheckBox;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #powerSavingDialog:Landroid/app/AlertDialog;
    .end local v6           #showNeverAgain:I
    .end local v7           #txtView:Landroid/widget/TextView;
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 713
    const-string v8, "WfdPickerActivity"

    const-string v9, "setWfdEnabled, unsuccessful, because of DPM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v8}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 730
    :goto_1
    return-void

    .line 697
    .restart local v6       #showNeverAgain:I
    :cond_0
    invoke-direct {p0, v12}, Lcom/android/settings/wfd/WfdPickerActivity;->setPowerSavingMode(I)V

    .line 698
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904f6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v2, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 703
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    goto :goto_0

    .line 706
    .end local v6           #showNeverAgain:I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    goto :goto_0

    .line 709
    :cond_2
    const-string v8, "WfdPickerActivity"

    const-string v9, "mWfdManager is null !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setWfdModeAlways()V
    .locals 3

    .prologue
    .line 2104
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2105
    const-string v1, "setWfdModeAlways"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2106
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :goto_0
    return-void

    .line 2107
    :catch_0
    move-exception v0

    .line 2108
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiDisplayDeviceAddress(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2084
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2085
    const-string v1, "setDisplayDeviceAddress"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2086
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    :goto_0
    return-void

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiDisplayDeviceName(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2094
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2095
    const-string v1, "setDisplayDeviceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2096
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    :goto_0
    return-void

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogp(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 2175
    return-void
.end method

.method showWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "okListener"
    .parameter "cancelListener"

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1580
    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1582
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1583
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    .line 598
    :cond_0
    return-void
.end method

.method stopScanningWfdPickerDialog(Z)V
    .locals 3
    .parameter "stopPeerDiscovery"

    .prologue
    .line 585
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eqz p1, :cond_0

    .line 587
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 590
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 591
    return-void
.end method

.method updateScreenOnDisabled()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2463
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2465
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2467
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2468
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2469
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2473
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2475
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 2476
    const v0, 0x7f0904cf

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    .line 2478
    :cond_1
    return-void
.end method

.method updateScreenOnEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2481
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2484
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 2489
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v2, 0x7f09048d

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2490
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2492
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2493
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2494
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2497
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2500
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2501
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2505
    :cond_0
    return-void
.end method
