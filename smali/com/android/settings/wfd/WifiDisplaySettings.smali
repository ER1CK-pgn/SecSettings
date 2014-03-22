.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# instance fields
.field endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field helpMenu:Landroid/view/MenuItem;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mAutoGO:Z

.field private mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mConnectingDevice:Ljava/lang/String;

.field private mConnectingDialogCalled:Z

.field private mContext:Landroid/content/Context;

.field private mControlByWfdService:Z

.field private mDebugEnable:Z

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableSwitch:Z

.field private mInPickerDialog:Z

.field private mListen:Z

.field private mListenChannel:I

.field private mMenu:Landroid/view/ContextMenu;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mOperatingChannel:I

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mSetPrevSettingsDetach:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mTempSsid:Ljava/lang/String;

.field protected mTurningWifiDisplayOn:Z

.field private mWifiDisplayCertificationOn:Z

.field protected mWifiDisplayOnSetting:Z

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I

.field scanStop:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 148
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 157
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 163
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    .line 167
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 168
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    .line 170
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 171
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 173
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    .line 175
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;

    .line 177
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 178
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mControlByWfdService:Z

    .line 180
    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    .line 183
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 1090
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1109
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1149
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1181
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    return v0
.end method

.method private applyState()V
    .locals 11

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    .line 584
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v1, :cond_9

    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 595
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    .line 596
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 597
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v1, :cond_3

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 600
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 605
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v1, :cond_5

    .line 606
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 612
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    .line 614
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 616
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_6

    .line 617
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 621
    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1b

    .line 622
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 629
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 630
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    array-length v6, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_b

    aget-object v7, v4, v0

    .line 632
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 633
    iget-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    if-eqz v8, :cond_7

    .line 634
    const-string v8, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyState AvailableDisplayAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 589
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto/16 :goto_0

    .line 590
    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v1, :cond_0

    .line 591
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 592
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 638
    :cond_b
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    .line 650
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 652
    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v5, :cond_c

    .line 653
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 656
    :cond_c
    if-eqz v3, :cond_11

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 658
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 662
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 666
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_10

    .line 667
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 668
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0904c8

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 673
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 674
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 744
    :cond_f
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 745
    return-void

    .line 670
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 676
    :cond_11
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v3, :cond_f

    .line 677
    :cond_12
    array-length v3, v0

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_13

    .line 678
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 681
    :cond_13
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    if-nez v3, :cond_18

    .line 684
    new-instance v3, Lcom/android/settings/ProgressCategory;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x7f0902ba

    invoke-direct {v3, v5, v6, v7}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    .line 686
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const v5, 0x7f0902bc

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 690
    :goto_4
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 692
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    if-eqz v1, :cond_14

    if-eqz v4, :cond_14

    .line 693
    const-string v1, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_14
    array-length v3, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_19

    aget-object v5, v0, v1

    .line 695
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 696
    if-eqz v4, :cond_15

    .line 697
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    if-eqz v6, :cond_15

    if-nez v2, :cond_15

    .line 701
    const-string v6, "WifiDisplaySettings"

    const-string v7, "connectLastConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 703
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectLastConnection(Landroid/hardware/display/WifiDisplay;)V

    .line 706
    :cond_15
    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v6

    if-nez v6, :cond_17

    const/4 v6, 0x1

    if-eq v2, v6, :cond_17

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17

    .line 709
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 711
    :cond_16
    const-string v6, "WifiDisplaySettings"

    const-string v7, "Only one device found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 713
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 694
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 688
    :cond_18
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .line 717
    :cond_19
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_1a

    .line 718
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 719
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_f

    .line 720
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    goto/16 :goto_3

    .line 722
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 723
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_f

    .line 724
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    goto/16 :goto_3

    .line 729
    :cond_1b
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 731
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 733
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v1, :cond_1f

    :cond_1d
    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_f

    .line 735
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const v1, 0x7f090507

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 740
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_3
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 774
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    .line 775
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 776
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 783
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 785
    const v1, 0x7f0902cc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 786
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 790
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 828
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 836
    const v1, 0x7f0902cd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 837
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 838
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 841
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 853
    const v1, 0x7f0902ce

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 854
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 855
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 858
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 871
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 873
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Default"

    aput-object v2, v1, v5

    const-string v2, "PBC"

    aput-object v2, v1, v6

    const-string v2, "KEYPAD"

    aput-object v2, v1, v7

    const-string v2, "DISPLAY"

    aput-object v2, v1, v8

    .line 874
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "2"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    .line 879
    const v3, 0x7f0902d1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 880
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 881
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 883
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 887
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 899
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    .line 900
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    .line 901
    const v3, 0x7f0902d2

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 902
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 903
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 905
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 909
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 921
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    const-string v2, "36"

    aput-object v2, v1, v4

    .line 922
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    const-string v3, "36"

    aput-object v3, v2, v4

    .line 923
    const v3, 0x7f0902d3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 924
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 927
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 929
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private checkDebugLogEnable()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "secmm.wfds.wfds"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "WifiDisplaySettings"

    const-string v1, "WifiDisplaySettings debug log enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    goto :goto_0
.end method

.method private connectLastConnection(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1088
    :cond_1
    return-void
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1249
    .line 1252
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    .line 1253
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    aput-object v0, v2, v4

    .line 1274
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1275
    const v1, 0x7f040213

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1276
    const v0, 0x7f0b052f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1277
    const v1, 0x7f0b058f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1278
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    const v1, 0x7f0b0590

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1280
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    const-string v4, "~`!@$%^&*()-_=+[];:\'\",<.>/?"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1284
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1285
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1287
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    :cond_0
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 1303
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1304
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 1305
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1307
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09051e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09079f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0907a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1332
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1333
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1340
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1342
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 1343
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    invoke-direct {v4, p0, v3, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1382
    return-object v1
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1011
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 1012
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1034
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1035
    const v1, 0x7f040204

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 1037
    :cond_1
    return-object v0

    .line 1015
    :pswitch_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1019
    :pswitch_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const v1, 0x7f0902bd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1021
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1029
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDongleRenameAvailable()Z

    move-result v0

    .line 1397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1388
    const/4 v0, 0x1

    .line 1390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setListenMode(Z)V
    .locals 3
    .parameter

    .prologue
    .line 971
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting listen mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 988
    return-void
.end method

.method private setMenuIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 364
    .local v0, isLandscape:Z
    :goto_0
    const-string v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMenuIcon():: isLandscape="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-nez v4, :cond_3

    .line 367
    :cond_0
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    :goto_1
    return-void

    .end local v0           #isLandscape:Z
    :cond_2
    move v0, v3

    .line 363
    goto :goto_0

    .line 370
    .restart local v0       #isLandscape:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 372
    if-eqz v0, :cond_4

    .line 373
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 376
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v3, 0x7f02039a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 380
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 383
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v4, 0x7f02039a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 386
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_5

    .line 387
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 393
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 394
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 390
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 992
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wifi p2p channel: lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1008
    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    return-void
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 5
    .parameter

    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040203

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1042
    const v0, 0x7f0b0141

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1043
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 1056
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 1063
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0902c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0902c6

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902c5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1071
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 933
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Starting Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 948
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 952
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Stopping Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 967
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 229
    const-string v3, "WifiDisplaySettings"

    const-string v4, "onActivityCreated()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 231
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 233
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_3

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    .local v0, padding:I
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 254
    .end local v0           #padding:I
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 255
    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    .line 268
    return-void

    .line 245
    .restart local v1       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 247
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    new-instance v3, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 248
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const v4, 0x7f090502

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 402
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 430
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 431
    const-string v0, "WifiDisplaySettings"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 443
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 438
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 440
    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->checkDebugLogEnable()V

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 210
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 212
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 213
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 215
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 216
    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    .line 222
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() : mInPickerDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 410
    .local v0, preference:Landroid/preference/Preference;
    const v1, 0x7f090502

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 411
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 412
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    instance-of v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v1, :cond_0

    .line 414
    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 415
    const-string v1, "WifiDisplaySettings"

    const-string v2, "user press to connect!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x4

    const v2, 0x7f09051d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v0       #preference:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    instance-of v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x5

    const v2, 0x7f09051e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const v0, 0x7f0907e3

    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    .line 455
    const/4 v0, 0x2

    const v3, 0x7f0904d7

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    .line 459
    const v0, 0x7f0904db

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    .line 463
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch_from_help"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 470
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 471
    return-void

    .line 449
    :cond_2
    const v0, 0x7f0904d6

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 272
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const v1, 0x7f0401e3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b04d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    .line 275
    const v1, 0x7f0b04d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 276
    const v1, 0x7f0b04da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    .line 278
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f02036f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0912f4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f090507

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-object v0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    if-eqz v0, :cond_1

    .line 323
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090509

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 475
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 531
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_1
    return v2

    .line 477
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 478
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v3

    if-nez v3, :cond_2

    .line 479
    const-string v3, "WifiDisplaySettings"

    const-string v4, "scanWifiDisplay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 481
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 482
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 483
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 487
    :cond_1
    const-string v3, "WifiDisplaySettings"

    const-string v4, "onOptionsItemSelected scanWifiDisplays"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_1

    .line 491
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_2
    const-string v3, "WifiDisplaySettings"

    const-string v4, "stopWifiDisplay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    goto :goto_1

    .line 497
    :pswitch_1
    const/4 v0, 0x0

    .line 498
    .local v0, intentToHelpActivity:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intentToHelpActivity:Landroid/content/Intent;
    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v0       #intentToHelpActivity:Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "allshare_cast"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 528
    .end local v0           #intentToHelpActivity:Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 341
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 344
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_2

    .line 345
    const-string v1, "wlan.wfd.settingontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 360
    :cond_1
    return-void

    .line 347
    :cond_2
    :try_start_1
    const-string v1, "wlan.wfd.pickerdialogontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 537
    instance-of v2, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 538
    check-cast v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 539
    .local v1, p:Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 541
    .local v0, display:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    .line 549
    .end local v0           #display:Landroid/hardware/display/WifiDisplay;
    .end local v1           #p:Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 544
    .restart local v0       #display:Landroid/hardware/display/WifiDisplay;
    .restart local v1       #p:Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 545
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 546
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 290
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 292
    const-string v1, "wlan.wfd.settingontop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 310
    const-string v1, "wlan.wfd.autoconnect"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    .line 311
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    .line 314
    return-void

    .line 294
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "wlan.wfd.pickerdialogontop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected update()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    const-string v0, "WifiDisplaySettings"

    const-string v3, "update"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_certification_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 565
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    .line 575
    const-string v0, "WifiDisplaySettings"

    const-string v1, "update scanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 579
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    .line 580
    return-void

    :cond_2
    move v0, v2

    .line 559
    goto :goto_0

    :cond_3
    move v1, v2

    .line 561
    goto :goto_1
.end method
