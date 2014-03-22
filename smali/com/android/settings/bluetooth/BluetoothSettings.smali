.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field private static mInteractiveHelp:Z

.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mLocalAdapterNameTemp:Ljava/lang/String;

.field private static mNewOrientation:I

.field private static mOldOrientation:I

.field private static mSmartcardPasswordEnforced:Z


# instance fields
.field private isEnableTalkback:Z

.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mButtonView:Landroid/widget/TextView;

.field private mDeviceName:Landroid/app/DialogFragment;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mMyDeviceCategory:Landroid/preference/PreferenceCategory;

.field mMyDevicePreference:Landroid/preference/CheckBoxPreference;

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mScan:Landroid/view/MenuItem;

.field mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field private mShowVisibileTimeoutFragment:Z

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTimeOutFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 145
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 148
    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 149
    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    .line 150
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 157
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    .line 829
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 579
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 580
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 581
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 585
    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 963
    monitor-enter p0

    .line 964
    :try_start_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 967
    :cond_0
    monitor-exit p0

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 944
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 971
    monitor-enter p0

    .line 972
    :try_start_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 973
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 977
    :cond_0
    monitor-exit p0

    .line 978
    return-void

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateContent(IZ)V
    .locals 11
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 588
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 589
    .local v4, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 590
    .local v1, messageId:I
    const-string v5, "BluetoothSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateContent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scanState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 758
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    sget-boolean v5, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v5, :cond_1

    .line 760
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 761
    :cond_1
    :goto_1
    return-void

    .line 594
    :pswitch_0
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 595
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 596
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 599
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    if-nez v5, :cond_2

    .line 600
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    .line 602
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    const v8, 0x7f09025e

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 603
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 604
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 605
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 608
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-nez v5, :cond_3

    .line 610
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 614
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "device_name"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 615
    sget-object v5, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 616
    const-string v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 618
    :cond_4
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v8, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 632
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0201a1

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 640
    :goto_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 641
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 642
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_5

    .line 645
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v5, :cond_5

    .line 646
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 649
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 650
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5, v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 656
    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v5, :cond_a

    .line 657
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 661
    :goto_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v8, 0x7f09027d

    sget-object v9, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v8, v9}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 664
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 666
    .local v3, numberOfPairedDevices:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v5, :cond_6

    .line 667
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5, v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 671
    :cond_6
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v5, :cond_b

    .line 672
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 676
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_7

    .line 677
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v8, 0x7f09027e

    sget-object v9, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v8, v9}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 681
    :cond_7
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 682
    .local v2, numberOfAvailableDevices:I
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 684
    if-nez v2, :cond_c

    .line 685
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 695
    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accessibility_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_accessibility_services"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "(?i).*talkback.*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    :goto_6
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isEnableTalkback:Z

    .line 698
    if-nez v3, :cond_8

    .line 699
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 700
    if-ne p2, v6, :cond_e

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isEnableTalkback:Z

    if-nez v5, :cond_e

    .line 701
    const-string v5, "BluetoothSettings"

    const-string v6, "updateContent :: startScanning()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 738
    :cond_8
    :goto_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 637
    .end local v2           #numberOfAvailableDevices:I
    .end local v3           #numberOfPairedDevices:I
    :cond_9
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f020197

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 659
    :cond_a
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_3

    .line 674
    .restart local v3       #numberOfPairedDevices:I
    :cond_b
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .line 689
    .restart local v2       #numberOfAvailableDevices:I
    :cond_c
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 690
    .local v0, isDiscovering:Z
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v5, Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v0}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_5

    .end local v0           #isDiscovering:Z
    :cond_d
    move v5, v7

    .line 695
    goto :goto_6

    .line 705
    :cond_e
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v5, :cond_f

    .line 706
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 709
    :cond_f
    if-nez v2, :cond_8

    .line 710
    const-string v5, "BluetoothSettings"

    const-string v8, "updateContent :: No nearby BT devices found"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_10

    .line 713
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 716
    :cond_10
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v5, :cond_12

    .line 717
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 722
    :goto_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 723
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 725
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v5, :cond_11

    .line 726
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 727
    sget-boolean v5, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v5, :cond_13

    .line 728
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f04002b

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 731
    :goto_9
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 733
    :cond_11
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 719
    :cond_12
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_8

    .line 730
    :cond_13
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f04002c

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_9

    .line 742
    .end local v2           #numberOfAvailableDevices:I
    .end local v3           #numberOfPairedDevices:I
    :pswitch_1
    const v1, 0x7f090125

    .line 743
    goto/16 :goto_0

    .line 746
    :pswitch_2
    const v1, 0x7f090287

    .line 747
    sget-boolean v5, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v5, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 752
    :pswitch_3
    const v1, 0x7f090124

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090103

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 520
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    .line 556
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 528
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 530
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 531
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f0907e3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 539
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 548
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 549
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 550
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_4

    const v0, 0x7f020113

    .line 551
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 550
    .end local v0           #iconId:I
    :cond_4
    const v0, 0x7f020111

    goto :goto_1

    .line 553
    .end local v1           #isDiscovering:Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 554
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 226
    sget-boolean v5, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v5, :cond_0

    .line 227
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 260
    :goto_0
    return-void

    .line 230
    :cond_0
    const v5, 0x7f070025

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 234
    .local v2, activity:Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v2, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_2

    move-object v4, v2

    .line 237
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 238
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    .line 239
    :cond_1
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 241
    .local v3, padding:I
    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 244
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 250
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v5, v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 252
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 255
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 257
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 940
    const v0, 0x7f090c0d

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 855
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 856
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    :cond_0
    return-void
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 986
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 987
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

    .line 988
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 989
    const/4 v4, 0x1

    .line 992
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 212
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 222
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 204
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothScanDialog;

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 205
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 765
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 766
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 769
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->dismissDisconnectDialog()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 776
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 865
    const-string v0, "BluetoothSettings"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 871
    :try_start_0
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_1
    if-eqz p1, :cond_0

    .line 881
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 882
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 889
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 890
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 891
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate-mLocalAdapterName ( NULL ), ro.product.model( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "SmartcardPasswordEnforced"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    .line 895
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 897
    return-void

    :cond_2
    move v0, v1

    .line 871
    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 395
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_4

    move v1, v4

    .line 401
    .local v1, bluetoothIsEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 403
    .local v2, isDiscovering:Z
    if-eqz v2, :cond_5

    const v3, 0x7f0907e3

    .line 405
    .local v3, textId:I
    :goto_2
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 407
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 410
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-eq v6, v4, :cond_0

    .line 426
    const/4 v4, 0x3

    const v6, 0x7f0900fa

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f020106

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 430
    const/4 v4, 0x4

    const v6, 0x7f09011b

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f020105

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 433
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v4, :cond_2

    .line 434
    const/4 v4, 0x5

    const v6, 0x7f09011c

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f02010e

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 439
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 440
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, ChinaNalSecurityType:Ljava/lang/String;
    const-string v4, "ChinaNalSecurity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 442
    const/4 v4, 0x6

    const v6, 0x7f090196

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f0201ad

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 448
    .end local v0           #ChinaNalSecurityType:Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto/16 :goto_0

    .end local v1           #bluetoothIsEnabled:Z
    .end local v2           #isDiscovering:Z
    .end local v3           #textId:I
    :cond_4
    move v1, v5

    .line 400
    goto/16 :goto_1

    .line 403
    .restart local v1       #bluetoothIsEnabled:Z
    .restart local v2       #isDiscovering:Z
    :cond_5
    const v3, 0x7f090103

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 936
    return-void

    .line 924
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 930
    const-string v0, "BluetoothSettings"

    const-string v1, "Unable to dismiss Fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 823
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 826
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 827
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 573
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 575
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 576
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 514
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 457
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    const-string v0, "BluetoothSettings"

    const-string v1, "onOptionsItemSelected :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    :cond_0
    :goto_1
    move v0, v7

    .line 466
    goto :goto_0

    .line 462
    :cond_1
    const-string v0, "BluetoothSettings"

    const-string v1, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_1

    .line 479
    :pswitch_2
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 480
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v7

    .line 483
    goto :goto_0

    .line 486
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    if-eqz v1, :cond_2

    .line 489
    const-string v1, "SmartcardPasswordEnforced"

    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v7

    .line 492
    goto :goto_0

    .line 495
    :pswitch_4
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v0, :cond_4

    .line 496
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 498
    const-string v0, "default"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v7

    .line 499
    goto :goto_0

    .line 501
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    const-string v1, "helphub:section"

    const-string v2, "bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    move v0, v7

    .line 506
    goto/16 :goto_0

    .line 509
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothOnCheckSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090196

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 512
    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 368
    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_1

    .line 369
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 377
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 381
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    if-eqz v0, :cond_3

    .line 382
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->reenableStatusBar()V

    .line 385
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 266
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 273
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 282
    :cond_2
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v0, :cond_3

    .line 283
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 360
    :cond_4
    :goto_0
    return-void

    .line 296
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    if-eqz v0, :cond_6

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 300
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_6

    .line 304
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 305
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 311
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 312
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNewOrientation:I

    .line 354
    :cond_7
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSmartcardPasswordEnforced:Z

    if-eqz v0, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->disableStatusBar()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 911
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2
    .parameter "started"

    .prologue
    .line 780
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 783
    if-nez p1, :cond_6

    .line 784
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_4

    .line 787
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 792
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 793
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 797
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_5

    .line 798
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v1, 0x7f04002b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 801
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 812
    :cond_1
    :goto_2
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v0, :cond_3

    .line 813
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 816
    :cond_2
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 819
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 820
    return-void

    .line 789
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 800
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v1, 0x7f04002c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_1

    .line 806
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 565
    :cond_1
    const-string v0, "BluetoothSettings"

    const-string v1, "Do startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
