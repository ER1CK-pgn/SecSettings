.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mCurrentLeftMenuType:I

.field private static mCurrentRightMenuType:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mMultiConnectClicked:Z

.field private static mMultiConnectInProgress:Z

.field private static mMultiConnectionComplete:Z

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

.field private static mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private btnBundle:Z

.field private customActionBarView:Landroid/view/View;

.field private isBtnEnabled:Z

.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mCancelConnectDialog:Landroid/app/AlertDialog;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDeviceInfoDialog:Landroid/app/AlertDialog;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEndConnectDialog:Landroid/app/AlertDialog;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mHaveSwitch:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsMdpiOrLdpi:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsSetTimer:Z

.field private mIsTablet:Z

.field private mLastGroupFormed:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxClientSupportDialog:Landroid/app/AlertDialog;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMultiButOneDev:Z

.field private mMultiConnect:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pCancel:Landroid/view/MenuItem;

.field private mP2pDone:Landroid/view/MenuItem;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field mTempSsid:Ljava/lang/String;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mToast:Landroid/widget/Toast;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 177
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 178
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 181
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 188
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 190
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 191
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 193
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 224
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 225
    const/4 v0, 0x6

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 251
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 256
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 143
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 179
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 186
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 236
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    .line 239
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 240
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    .line 243
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    .line 245
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 246
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    .line 252
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 253
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 259
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    return p0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic access$3400()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$4200()Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic access$4202(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1531
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1533
    const-string v0, "@android:style/Theme.DeviceDefault"

    const-string v1, "Theme.DeviceDefault.Light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, -0xd9d9da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1537
    :cond_0
    return-void
.end method

.method private addThisDevicePreference()V
    .locals 7

    .prologue
    const/16 v1, 0x9

    const/4 v6, 0x0

    .line 2033
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2037
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2040
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2044
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2045
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2047
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2050
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x1040051

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    if-eqz v0, :cond_4

    .line 2054
    const/4 v3, 0x0

    const/16 v4, 0x2d

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2058
    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    const/16 v3, 0xb

    if-le v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2062
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 2063
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2065
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2066
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2067
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2068
    return-void

    .line 2055
    :catch_0
    move-exception v3

    .line 2056
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse device type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private changeActionBar()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1800
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1802
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    if-eqz v2, :cond_2

    .line 1803
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 1805
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1806
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1808
    :cond_1
    const/16 v2, 0x14

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1810
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1811
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 1814
    :cond_2
    const/16 v1, 0x12

    .line 1815
    .local v1, actionBarFlag:I
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 1817
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1823
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 1824
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1825
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v5, :cond_7

    :goto_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1828
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_4

    .line 1829
    or-int/lit8 v1, v1, 0x4

    .line 1831
    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1832
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 1833
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1820
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1821
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v2, v4

    .line 1824
    goto :goto_2

    :cond_7
    move v3, v4

    .line 1825
    goto :goto_3
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 1511
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1512
    const-string v0, ""

    .line 1513
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1514
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1517
    xor-int/lit16 v1, v1, 0x80

    .line 1518
    :try_start_0
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1519
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1523
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 1526
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1520
    :catch_0
    move-exception v1

    .line 1521
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1567
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1568
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1570
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1579
    :goto_0
    return-object v0

    .line 1572
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1574
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1575
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1577
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x11

    .line 2026
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2029
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1553
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1554
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    .line 1557
    const/4 v0, 0x1

    .line 1563
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1559
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    const-string v0, "WifiP2pSettings"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1563
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 2

    .prologue
    .line 1541
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1542
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1544
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1548
    :goto_0
    return v0

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    const-string v0, "WifiP2pSettings"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setP2pMenu(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f02010b

    const v5, 0x7f02010a

    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1843
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    const/4 v0, 0x4

    if-gt p1, v0, :cond_4

    .line 1847
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1848
    sput v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 1849
    :cond_2
    sput p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 1854
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1856
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_5

    .line 1857
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020111

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1858
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1870
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 1871
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1872
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1874
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_a

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0904d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1851
    :cond_4
    sput p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    goto :goto_1

    .line 1860
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1861
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_7

    .line 1862
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020111

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1864
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1866
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1867
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 1874
    goto :goto_3

    :cond_a
    move v1, v2

    .line 1876
    goto :goto_4

    .line 1881
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_c

    .line 1882
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020111

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1883
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1895
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_b

    .line 1896
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1897
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1899
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1901
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_11

    :goto_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1903
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0904d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1885
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_f

    .line 1886
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_e

    .line 1887
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020111

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1889
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1891
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1892
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    :cond_10
    move v0, v2

    .line 1899
    goto :goto_6

    :cond_11
    move v1, v2

    .line 1901
    goto :goto_7

    .line 1906
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_14

    .line 1907
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020113

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1908
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1920
    :goto_8
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_12

    .line 1921
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1922
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1924
    :cond_12
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_9
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1926
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_13

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_13

    move v2, v1

    :cond_13
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f0907e3

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1910
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_17

    .line 1911
    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_16

    .line 1912
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020113

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1914
    :cond_16
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_8

    .line 1916
    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1917
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_8

    :cond_18
    move v0, v2

    .line 1924
    goto :goto_9

    .line 1931
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_1b

    .line 1932
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f02010d

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1933
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1945
    :goto_a
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_19

    .line 1946
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1947
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1949
    :cond_19
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_b
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1951
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_1a

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_1a

    move v2, v1

    :cond_1a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1954
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v2, 0x7f0904d7

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1935
    :cond_1b
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_1e

    .line 1936
    :cond_1c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_1d

    .line 1937
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f02010d

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1939
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_a

    .line 1941
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1942
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_a

    :cond_1f
    move v0, v2

    .line 1949
    goto :goto_b

    .line 1957
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_22

    .line 1958
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f020110

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1959
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1971
    :goto_c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_20

    .line 1972
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1973
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1975
    :cond_20
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_26

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_d
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1977
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_21

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_21

    move v2, v1

    :cond_21
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1979
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1980
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0904f5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1961
    :cond_22
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_25

    .line 1962
    :cond_23
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_24

    .line 1963
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f020110

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1965
    :cond_24
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_c

    .line 1967
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1968
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_c

    :cond_26
    move v0, v2

    .line 1975
    goto :goto_d

    .line 1983
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_28

    .line 1984
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1985
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1997
    :goto_e
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_27

    .line 1998
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1999
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2001
    :cond_27
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_f
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2003
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_10
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2005
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f0904f6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2006
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1987
    :cond_28
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_2b

    .line 1988
    :cond_29
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_2a

    .line 1989
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1991
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_e

    .line 1993
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1994
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_e

    :cond_2c
    move v0, v2

    .line 2001
    goto :goto_f

    :cond_2d
    move v0, v2

    .line 2003
    goto :goto_10

    .line 2009
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2010
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2011
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_2e

    .line 2012
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2013
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2015
    :cond_2e
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_11
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2017
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_30

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_30

    :goto_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_2f
    move v0, v2

    .line 2015
    goto :goto_11

    :cond_30
    move v1, v2

    .line 2017
    goto :goto_12

    .line 1854
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1584
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    if-eqz p1, :cond_1

    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1588
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1589
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    .line 1622
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1623
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_2

    .line 1624
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f0904a5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1626
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1628
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1629
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1630
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1633
    if-eqz p2, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1677
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1678
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1679
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1680
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1681
    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 1687
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 1688
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1689
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1690
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1692
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0904f8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1693
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1694
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1696
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 1698
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0904ba

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1701
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1702
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1703
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1705
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1708
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1712
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1713
    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    .line 1714
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1716
    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1717
    iget-object v7, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v9, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1718
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_5

    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v7, v10, :cond_6

    .line 1719
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1720
    iget-object v0, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v10, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1721
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    .line 1737
    goto :goto_1

    .line 1722
    :cond_6
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_7

    .line 1723
    add-int/lit8 v3, v3, 0x1

    .line 1724
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    .line 1725
    :cond_7
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_9

    .line 1726
    add-int/lit8 v1, v1, 0x1

    .line 1727
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    .line 1731
    :cond_8
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_9

    .line 1732
    iget-object v0, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1733
    add-int/lit8 v1, v1, 0x1

    .line 1734
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    .line 1739
    :cond_a
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1740
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-eqz v4, :cond_c

    .line 1746
    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1747
    :cond_c
    if-nez v1, :cond_d

    .line 1748
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1749
    :cond_d
    if-nez v3, :cond_e

    .line 1750
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1752
    :cond_e
    add-int v4, v1, v3

    if-ne v4, v0, :cond_13

    .line 1753
    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v4, :cond_f

    if-ne v3, v0, :cond_f

    .line 1755
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$20;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$20;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1764
    :cond_f
    if-lez v1, :cond_10

    .line 1765
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1767
    :cond_10
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1768
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1770
    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 1772
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v0, :cond_11

    .line 1773
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 1774
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 1775
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1785
    :cond_11
    :goto_3
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1786
    :cond_12
    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1790
    :goto_4
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v0, :cond_15

    .line 1791
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f090500

    invoke-virtual {v0, v10, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1792
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1797
    :goto_5
    return-void

    .line 1779
    :cond_13
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-nez v0, :cond_11

    .line 1780
    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1781
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_3

    .line 1788
    :cond_14
    invoke-direct {p0, v10, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_4

    .line 1794
    :cond_15
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1795
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_5
.end method

.method private showMultiConnectDevices()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1641
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1642
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1643
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1645
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 1646
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904fd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1647
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 1648
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1649
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1652
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1653
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1654
    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1655
    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    .line 1656
    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1660
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 1661
    goto :goto_0

    .line 1664
    :cond_2
    if-lez v1, :cond_3

    .line 1665
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1667
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1668
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1672
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    return-void
.end method


# virtual methods
.method public connectFromMultiView()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1141
    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 1142
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0904fe

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1176
    :goto_0
    return v0

    .line 1147
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1148
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1149
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1150
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1151
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_1

    .line 1152
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 1163
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1164
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    :goto_2
    move v0, v1

    .line 1176
    goto :goto_0

    .line 1166
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v9, 0x1

    .line 509
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 510
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 512
    .local v3, intent:Landroid/content/Intent;
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v4, v0

    .line 513
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 514
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_1

    .line 515
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 517
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 519
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0904ba

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 522
    :cond_1
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, ssid:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v7, :cond_2

    .line 527
    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v6, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 531
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v6           #ssid:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    const-string v7, "PEER_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 532
    const-string v7, "PEER_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 533
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 537
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    .line 538
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    .line 539
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 541
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 542
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 544
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v8, 0x7f0904c7

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 545
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 546
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 551
    .end local v5           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 552
    .local v2, dpi:I
    iget-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v7, :cond_5

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_4

    const/16 v7, 0x78

    if-ne v2, v7, :cond_5

    .line 554
    :cond_4
    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 557
    :cond_5
    const-string v7, "AUTO_FINISH"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 558
    iget-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v7, :cond_6

    .line 559
    const-string v7, "AUTO_FINISH"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 560
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->setForcedClick(Z)V

    .line 562
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 564
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    return-void

    .line 548
    .end local v2           #dpi:I
    :cond_7
    const v7, 0x7f0904d1

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1132
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1133
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    if-eqz v0, :cond_0

    .line 1134
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1137
    return-void

    .line 1129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v11, 0x7f0b0093

    const-wide/16 v4, 0x3e8

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 579
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 580
    if-eqz p1, :cond_0

    .line 581
    const-string v0, "isBtnEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 582
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    if-eqz v0, :cond_0

    .line 583
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 586
    :cond_0
    const v0, 0x7f0700e8

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 596
    .local v8, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 599
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 600
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 602
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 603
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 605
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    const-wide/16 v2, 0x7530

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 623
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 641
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 642
    const-string v0, "layout_inflater"

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 643
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040210

    invoke-virtual {v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemText:Landroid/view/View;

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemText:Landroid/view/View;

    .line 650
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_2

    .line 679
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 688
    :cond_2
    :goto_0
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 689
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 704
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 723
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 761
    return-void

    .line 683
    :cond_3
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const v4, 0x7f0907a0

    const v7, 0x7f09079f

    const/4 v1, 0x0

    .line 1181
    if-ne p1, v5, :cond_0

    .line 1182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0904d7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1189
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 1340
    :goto_0
    return-object v0

    .line 1192
    :cond_0
    if-ne p1, v6, :cond_1

    .line 1193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0904d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904f7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1200
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1204
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0904d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904e1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1211
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1213
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 1214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0904ba

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904ed

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1219
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1221
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1222
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1223
    const v2, 0x7f040212

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1224
    const v0, 0x7f0b058c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0904d9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1225
    const v0, 0x7f0b052f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    const v0, 0x7f0b058d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0904af

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1227
    const v0, 0x7f0b04f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09018b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1237
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1239
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1241
    const v2, 0x7f040213

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1242
    const v0, 0x7f0b052f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    .line 1243
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1245
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1246
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 1255
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1257
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0904c5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1283
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1284
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1297
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1299
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1300
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1337
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1248
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    .line 1340
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 933
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_1
    const v0, 0x7f0904d6

    invoke-interface {p1, v3, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    .line 942
    const v1, 0x7f0904f5

    .line 943
    const v0, 0x7f020110

    .line 945
    sget v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    if-eq v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v5, :cond_1

    .line 946
    :cond_0
    const v1, 0x7f0904d7

    .line 947
    const v0, 0x7f02010d

    .line 949
    :cond_1
    const v5, 0x7f090e7d

    invoke-interface {p1, v3, v6, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    .line 950
    const v5, 0x7f0904a3

    invoke-interface {p1, v3, v7, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    .line 951
    const/4 v5, 0x3

    invoke-interface {p1, v3, v4, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    .line 954
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v1, :cond_5

    .line 955
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v5, 0x7f020111

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 956
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 958
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 959
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 971
    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v1, 0x7f02010b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 973
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    const v1, 0x7f02010a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 975
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v1, :cond_9

    :goto_5
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 984
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 985
    return-void

    :cond_3
    move v0, v3

    .line 933
    goto/16 :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    const-string v0, "WifiP2pSettings"

    const-string v1, "Fragment not attached to Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 959
    goto :goto_2

    .line 962
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v1, :cond_6

    .line 963
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v5, 0x7f020111

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 964
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 967
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 968
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_7

    move v0, v2

    :goto_7
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_7

    :cond_8
    move v0, v3

    .line 975
    goto :goto_4

    :cond_9
    move v2, v3

    .line 977
    goto :goto_5

    :cond_a
    move v0, v4

    .line 984
    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 570
    const v1, 0x7f04020f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b04d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 574
    return-object v0
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 1355
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1358
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 994
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1054
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 996
    :sswitch_0
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v0, :cond_1

    .line 997
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_0
    :goto_2
    move v0, v7

    .line 1008
    goto :goto_1

    .line 999
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_2

    .line 1002
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v0, :cond_3

    .line 1003
    invoke-direct {p0, v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_2

    .line 1004
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v0, :cond_0

    .line 1005
    invoke-direct {p0, v6, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_2

    .line 1010
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_4
    :goto_3
    move v0, v7

    .line 1017
    goto :goto_1

    .line 1012
    :cond_5
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_4

    .line 1013
    sput-boolean v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1014
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    goto :goto_3

    .line 1019
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1020
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_6
    move v0, v7

    .line 1021
    goto :goto_1

    .line 1023
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    .line 1024
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904db

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_4
    move v0, v7

    .line 1032
    goto :goto_1

    .line 1030
    :cond_7
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_4

    .line 1034
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->connectFromMultiView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1035
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    :cond_8
    move v0, v7

    .line 1037
    goto :goto_1

    .line 1039
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1040
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1043
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1044
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    move v0, v7

    .line 1045
    goto/16 :goto_1

    .line 1048
    :sswitch_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 1049
    goto/16 :goto_1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    const-string v0, "WifiP2pSettings"

    const-string v1, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x102002c -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 881
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 883
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 884
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 886
    .local v1, isScreenOn:Z
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 887
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 888
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 889
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 892
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 893
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "SAMSUNG_P2P"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 894
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "IS_INVITED"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 896
    const-string v3, "IS_MULTICONNECT"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 897
    const-string v3, "IS_IN_MULTICONNECT"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 898
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 900
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 902
    if-eqz v1, :cond_4

    .line 903
    invoke-direct {p0, v6, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 905
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 906
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v3, :cond_2

    .line 908
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_2

    .line 909
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 910
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 921
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 923
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    if-eqz v3, :cond_3

    .line 925
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 926
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 928
    :cond_3
    return-void

    .line 914
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 915
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 916
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1361
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    const-string v0, "WifiP2pSettings"

    const-string v1, "return, P2P is not enabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_0
    return-void

    .line 1366
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 1367
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 1369
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1372
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1374
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_2

    .line 1375
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 1379
    :cond_2
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1380
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0904c7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1382
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1383
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1385
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1386
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1505
    :cond_5
    :goto_1
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 1390
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0904c9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1396
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1397
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1399
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1400
    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v8, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    :cond_7
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1402
    sget-object v8, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1403
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1404
    iget-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1405
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1406
    add-int/lit8 v3, v3, 0x1

    .line 1416
    :cond_8
    :goto_3
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v5, :cond_16

    move v0, v5

    :goto_4
    move v1, v0

    .line 1417
    goto :goto_2

    .line 1409
    :cond_9
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1410
    add-int/lit8 v4, v4, 0x1

    .line 1411
    iget-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1412
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1413
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v8, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v9, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 1421
    :cond_a
    if-lez v3, :cond_b

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_c

    .line 1422
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1424
    :cond_c
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_d

    .line 1425
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    .line 1427
    :cond_d
    if-eqz v1, :cond_f

    .line 1428
    sput-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1429
    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1430
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1431
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_e

    .line 1432
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1433
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1434
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1436
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1438
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f090500

    invoke-virtual {v0, v5, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1439
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v5}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 1441
    :cond_f
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1442
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v0, :cond_10

    .line 1443
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1445
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1446
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1449
    :cond_10
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_5

    .line 1450
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto/16 :goto_1

    .line 1454
    :cond_11
    const-string v0, "WifiP2pSettings"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1456
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1457
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1462
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_12

    .line 1463
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1464
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1465
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1466
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1469
    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1470
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1471
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1473
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1474
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1475
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1476
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1477
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1479
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_5

    .line 1480
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1481
    const-string v0, "WifiP2pSettings"

    const-string v1, "I am GO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1484
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1485
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 1488
    :cond_13
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1489
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I am GC, my GO addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", converted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1494
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1496
    :cond_15
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1497
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_16
    move v0, v1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1059
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1060
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_4

    .line 1062
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1082
    :cond_0
    :goto_0
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 1083
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 1084
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1085
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sget v3, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v2, v3, :cond_7

    .line 1086
    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1087
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1100
    :cond_1
    :goto_1
    const-string v0, "WifiP2pSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# of Selected Peers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 1103
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v2, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v0, v2, :cond_a

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1105
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1124
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1064
    :cond_5
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0904d3

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1068
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1069
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1089
    :cond_7
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1090
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 1096
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1097
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1098
    :cond_9
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    .line 1108
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 1109
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 1110
    instance-of v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v2, :cond_b

    .line 1111
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 1112
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1113
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1114
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1108
    :cond_b
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1116
    :cond_c
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    .line 1120
    :cond_d
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectAll, # of Selected Peers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 989
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 990
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 767
    :try_start_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 769
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    :goto_0
    const-string v2, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(), mAutoFinish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", p2p enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", p2p connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 782
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 783
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v2, :cond_1

    .line 784
    const/4 v2, 0x6

    sput v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 787
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 788
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    .line 789
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_P2P"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 790
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "IS_IN_MULTICONNECT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 791
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v2, :cond_3

    .line 792
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 796
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 797
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 801
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 821
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_8

    .line 822
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "IS_INVITED"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 823
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "IS_MULTICONNECT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 825
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 826
    sput-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 828
    :cond_5
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 829
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V

    .line 840
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v2, :cond_7

    .line 842
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    :cond_7
    :goto_1
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v2, :cond_9

    .line 850
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 853
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 855
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    if-eqz v2, :cond_8

    .line 856
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 857
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 860
    :cond_8
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 844
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 845
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiP2pSettings"

    const-string v3, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 852
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_9
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1346
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1349
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_1
    const-string v0, "isBtnEnabled"

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1352
    return-void
.end method

.method public onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 864
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 865
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 866
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 867
    .local v1, isScreenOn:Z
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    .line 868
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "SAMSUNG_P2P"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 869
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "IS_IN_MULTICONNECT"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 870
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 871
    .local v2, myKM:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 872
    sput-boolean v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 874
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 875
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "IS_IN_MULTICONNECT"

    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 876
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    return-void
.end method
