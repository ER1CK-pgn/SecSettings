.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

.field private mTetheredData:I

.field private final mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

.field private final mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private final mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1460
    invoke-direct {p0, p1, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1344
    iput v4, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTetheredData:I

    .line 1461
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1462
    iput-object p3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1463
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1467
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1472
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    .line 1491
    new-instance v1, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 1493
    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    .line 1494
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1495
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 1496
    new-instance v1, Lcom/android/settings/DrivingModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 1497
    new-instance v1, Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    .line 1498
    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 1499
    new-instance v1, Lcom/android/settings/motion/MotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 1500
    new-instance v1, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 1501
    new-instance v1, Lcom/android/settings/AirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 1502
    new-instance v1, Lcom/android/settings/torchlight/TorchlightEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/torchlight/TorchlightEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    .line 1504
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v1, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 1506
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    :cond_0
    new-instance v1, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 1520
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    invoke-static {v1}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v1, p1

    .line 1521
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1, v2, v5}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1524
    :cond_1
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1525
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x109

    const v2, 0x109009b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 1526
    const/16 v1, 0x13b

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 1528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_3

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    .line 1529
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_2
    move-object v1, v2

    .line 1520
    goto :goto_0

    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_3
    move v1, v4

    .line 1528
    goto :goto_1
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .parameter "header"

    .prologue
    const-wide/32 v5, 0x7f0b05e4

    const/4 v4, 0x0

    .line 1387
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 1394
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    .line 1395
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05df

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05fc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0602

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0603

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0600

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0607

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0608

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0613

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0614

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0610

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0655

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0615

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f3

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1417
    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1418
    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05d8

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 1419
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1421
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1961
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$600()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1962
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05e0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1963
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 1989
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/android/settings/SettingsTabActivity;->access$402(Z)Z

    .line 1990
    return-void

    :cond_1
    move v0, v1

    .line 1961
    goto :goto_0

    .line 1964
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05e2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1965
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1966
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05f0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1968
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05f2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1970
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0602

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1971
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1972
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0603

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1973
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/DrivingModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1974
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05fc

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1975
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1976
    :cond_6
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0608

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1977
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1978
    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0614

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 1979
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/AirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1980
    :cond_8
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0615

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 1981
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings/VoiceInputControlEnabler;->updateSwitch(Z)V

    goto/16 :goto_1

    .line 1982
    :cond_9
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0607

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 1983
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1984
    :cond_a
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0613

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1985
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/FingerAirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1987
    :cond_b
    const-string v0, "SettingsTapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDirectSettingValue() mSearchHeaderID none : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1429
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1534
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 1535
    .local v6, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v6}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    .line 1536
    .local v7, headerType:I
    const/16 v16, 0x0

    .line 1538
    .local v16, view:Landroid/view/View;
    if-nez p2, :cond_8

    .line 1539
    new-instance v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsTabActivity$1;)V

    .line 1540
    .local v8, holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    packed-switch v7, :pswitch_data_0

    .line 1636
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1643
    :goto_1
    packed-switch v7, :pswitch_data_1

    .line 1857
    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e1

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 1868
    :cond_1
    return-object v16

    .line 1542
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090106

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090103

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_3
    move-object/from16 v17, v16

    .line 1550
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1546
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090104

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_3

    .line 1548
    :cond_3
    new-instance v16, Landroid/widget/TextView;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010208

    invoke-direct/range {v16 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v16       #view:Landroid/view/View;
    goto :goto_3

    .line 1554
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f0401c3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1556
    const v17, 0x7f0b0093

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1557
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1558
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1559
    const v17, 0x7f0b0057

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1560
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090106

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090108

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1566
    :goto_4
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1567
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1568
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1569
    const v17, 0x1020393

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1564
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090109

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_4

    .line 1571
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040151

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1572
    const v17, 0x7f0b0093

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1573
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1575
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1577
    const v17, 0x7f0b0057

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1582
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1586
    :goto_5
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1587
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1589
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1585
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109009b

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_5

    .line 1593
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040198

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1594
    const v17, 0x7f0b042c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1595
    .local v12, searchLayout:Landroid/widget/LinearLayout;
    const/high16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 1596
    const v17, 0x7f0b042d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1597
    .local v13, searchViewLayout:Landroid/widget/LinearLayout;
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1606
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    new-instance v11, Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 1613
    .local v11, mSearchView:Landroid/widget/SearchView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f090598

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1614
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1615
    invoke-virtual {v11}, Landroid/widget/SearchView;->clearFocus()V

    .line 1616
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1632
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1638
    .end local v8           #holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    .end local v11           #mSearchView:Landroid/widget/SearchView;
    .end local v12           #searchLayout:Landroid/widget/LinearLayout;
    .end local v13           #searchViewLayout:Landroid/widget/LinearLayout;
    :cond_8
    move-object/from16 v16, p2

    .line 1639
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v8       #holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1645
    :pswitch_4
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1651
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f0401c3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1653
    const v17, 0x7f0b0093

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1654
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1655
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1656
    const v17, 0x7f0b0057

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1657
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1659
    const v17, 0x7f0b0449

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1660
    .local v15, textLayout:Landroid/view/View;
    if-eqz v15, :cond_9

    instance-of v0, v15, Landroid/widget/LinearLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1661
    const v17, 0x7f0b0093

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1662
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    .end local v15           #textLayout:Landroid/view/View;
    :cond_9
    :goto_6
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e0

    cmp-long v17, v17, v19

    if-nez v17, :cond_13

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1762
    :cond_a
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1763
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$300()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1764
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$400()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1765
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    .line 1770
    :cond_b
    const v17, 0x102031d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1771
    .local v5, dynamicDivider:Landroid/view/View;
    if-eqz v5, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1772
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    :cond_c
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1780
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1787
    .end local v5           #dynamicDivider:Landroid/view/View;
    :cond_d
    :pswitch_6
    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1789
    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1791
    .local v4, accType:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1792
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f004c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1794
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1795
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1797
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1801
    .end local v4           #accType:Ljava/lang/String;
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_8
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0605

    cmp-long v17, v17, v19

    if-nez v17, :cond_e

    .line 1804
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1811
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1812
    .local v14, summary:Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_23

    .line 1813
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1836
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$500()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_22

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_f

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e2

    cmp-long v17, v17, v19

    if-nez v17, :cond_22

    .line 1840
    :cond_f
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1685
    .end local v14           #summary:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1686
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090106

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090108

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1691
    :goto_9
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1692
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1693
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1694
    const v17, 0x1020393

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1695
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1689
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090109

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_9

    .line 1697
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040151

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1698
    const v17, 0x7f0b0093

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1699
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1700
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1701
    const v17, 0x7f0b0057

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1702
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1709
    :cond_13
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05df

    cmp-long v17, v17, v19

    if-nez v17, :cond_14

    .line 1714
    :cond_14
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e1

    cmp-long v17, v17, v19

    if-nez v17, :cond_15

    .line 1721
    :cond_15
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e4

    cmp-long v17, v17, v19

    if-nez v17, :cond_16

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1724
    :cond_16
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05fc

    cmp-long v17, v17, v19

    if-nez v17, :cond_17

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1726
    :cond_17
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0602

    cmp-long v17, v17, v19

    if-nez v17, :cond_18

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1728
    :cond_18
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0603

    cmp-long v17, v17, v19

    if-nez v17, :cond_19

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1730
    :cond_19
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0600

    cmp-long v17, v17, v19

    if-nez v17, :cond_1a

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1732
    :cond_1a
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0607

    cmp-long v17, v17, v19

    if-nez v17, :cond_1b

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/torchlight/TorchlightEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1734
    :cond_1b
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0608

    cmp-long v17, v17, v19

    if-nez v17, :cond_1c

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1736
    :cond_1c
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0610

    cmp-long v17, v17, v19

    if-nez v17, :cond_1d

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1738
    :cond_1d
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0613

    cmp-long v17, v17, v19

    if-nez v17, :cond_1e

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1740
    :cond_1e
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0614

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    .line 1742
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05f0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    .line 1744
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05f2

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    .line 1746
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e2

    cmp-long v17, v17, v19

    if-nez v17, :cond_1f

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1755
    :cond_1f
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0615

    cmp-long v17, v17, v19

    if-nez v17, :cond_20

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1757
    :cond_20
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05f3

    cmp-long v17, v17, v19

    if-nez v17, :cond_a

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1799
    :cond_21
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1844
    .restart local v14       #summary:Ljava/lang/CharSequence;
    :cond_22
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05e2

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    .line 1845
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1850
    :cond_23
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1643
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1446
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x4

    .line 1449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 1439
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1923
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 1925
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1926
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1927
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 1928
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 1929
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 1930
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 1934
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 1936
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1892
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 1894
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1895
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 1896
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 1897
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1898
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 1899
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 1901
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->resume()V

    .line 1902
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    invoke-virtual {v0}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->resume()V

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 1907
    :cond_2
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1957
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1945
    return-void
.end method
