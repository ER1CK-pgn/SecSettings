.class Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsEmergencyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;
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

.field private final mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

.field private final mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

.field private mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

.field private final mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

.field private final mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field public mSettingViewClicklistener:Landroid/view/View$OnClickListener;

.field private final mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private final mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

.field private final mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 10
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .parameter "dpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3322
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mTetheredData:I

    .line 4085
    new-instance v0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$6;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    .line 3323
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 3324
    iput-object p3, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 3325
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3329
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 3330
    new-instance v0, Lcom/android/settings/dmr/DMREnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dmr/DMREnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    .line 3344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 3347
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 3351
    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    .line 3354
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 3355
    iput-object p4, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3356
    new-instance v0, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 3357
    new-instance v0, Lcom/android/settings/glance/GlanceEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/glance/GlanceEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    .line 3358
    new-instance v0, Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 3359
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 3361
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 3362
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    .line 3363
    new-instance v0, Lcom/android/settings/location/LocationModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    .line 3364
    new-instance v0, Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 3369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    .line 3372
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 3373
    new-instance v0, Lcom/android/settings/AirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 3375
    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/AirMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    .line 3376
    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    .line 3377
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 3379
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3380
    new-instance v0, Lcom/android/settings/AirCommandEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirCommandEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    .line 3384
    :goto_0
    new-instance v0, Lcom/android/settings/MultiWindowEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    .line 3386
    new-instance v0, Lcom/android/settings/MouseHoveringViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MouseHoveringViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    .line 3387
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3388
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 3393
    :goto_1
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 3398
    new-instance v0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    .line 3400
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 3403
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_2
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 3404
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 3407
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3408
    .local v9, a:Landroid/content/res/TypedArray;
    const/16 v0, 0x109

    const v1, 0x109009b

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 3409
    const/16 v0, 0x13b

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 3411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isTablet:Z

    .line 3413
    return-void

    .line 3382
    .end local v9           #a:Landroid/content/res/TypedArray;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    goto/16 :goto_0

    .line 3390
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_1

    .line 3403
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 3411
    .restart local v9       #a:Landroid/content/res/TypedArray;
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3086
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .parameter "header"

    .prologue
    const-wide/32 v5, 0x7f0b05e4

    const/4 v4, 0x0

    .line 3239
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0640

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e6

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3242
    :cond_0
    const/4 v0, 0x5

    .line 3285
    :goto_0
    return v0

    .line 3244
    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    .line 3251
    const/4 v0, 0x0

    goto :goto_0

    .line 3252
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0602

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0626

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0614

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0603

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0608

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0613

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0662

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0610

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0655

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0648

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b064a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b064b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0649

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b061a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0615

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05f3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0622

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0617

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 3281
    :cond_6
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 3282
    :cond_7
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05d8

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 3283
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 3285
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setCheckBoxTypeValue(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v1, 0x7f0b047e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4097
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4150
    :goto_0
    return-void

    .line 4099
    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4100
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 4101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4100
    goto :goto_1

    :cond_1
    move v2, v3

    .line 4101
    goto :goto_2

    .line 4136
    :sswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4137
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 4138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_3

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4142
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 4137
    goto :goto_3

    :cond_3
    move v2, v3

    .line 4138
    goto :goto_4

    .line 4145
    :sswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4146
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_5

    .line 4097
    :sswitch_data_0
    .sparse-switch
        0x7f0b05e5 -> :sswitch_0
        0x7f0b05e6 -> :sswitch_2
        0x7f0b0640 -> :sswitch_1
    .end sparse-switch
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 3
    .parameter "_switch"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4078
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2700()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4079
    .local v0, value:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4080
    invoke-static {v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$2402(Z)Z

    .line 4081
    return-void

    .end local v0           #value:Z
    :cond_0
    move v0, v1

    .line 4078
    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3949
    iget-object v0, p1, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3950
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3952
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3953
    iget-object v1, p1, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3954
    iget-object v0, p1, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3955
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/32 v5, 0x7f0b05e2

    const/16 v4, 0x8

    .line 3867
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3869
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3871
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3872
    invoke-direct {p0, p2, v0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3876
    :goto_0
    iget-object v0, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3878
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0605

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3879
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3886
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3887
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3888
    iget-object v1, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3912
    iget-object v1, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3915
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3917
    :cond_2
    iget-object v0, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3931
    :cond_3
    :goto_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05e3

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 3932
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3940
    iget-object v1, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3943
    iget-object v1, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3946
    :cond_4
    return-void

    .line 3874
    :cond_5
    iget-object v0, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 3921
    :cond_6
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    .line 3922
    iget-object v0, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3928
    :cond_7
    iget-object v0, p2, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 3298
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 3292
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3293
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3418
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3419
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 3420
    const/4 v2, 0x0

    .line 3422
    if-nez p2, :cond_6

    .line 3423
    new-instance v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsEmergencyActivity$1;)V

    .line 3424
    packed-switch v5, :pswitch_data_0

    .line 3552
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v3

    .line 3559
    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 3852
    :goto_2
    :pswitch_0
    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b05e1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 3863
    :cond_0
    return-object v2

    .line 3426
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isTablet:Z

    if-eqz v1, :cond_2

    .line 3427
    iget v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x1090106

    if-ne v1, v2, :cond_1

    .line 3428
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090103

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_3
    move-object v1, v2

    .line 3434
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 3430
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090104

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 3432
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const v6, 0x1010208

    invoke-direct {v2, v1, v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_3

    .line 3439
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3442
    const v1, 0x7f0b047f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3443
    const v1, 0x7f0b0480

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3444
    const v1, 0x7f0b0481

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3445
    const v1, 0x7f0b0482

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    goto :goto_0

    .line 3449
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3452
    const v1, 0x7f0b0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3453
    const v1, 0x7f0b0094

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3454
    const v1, 0x7f0b00b8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3455
    const v1, 0x7f0b0073

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    goto/16 :goto_0

    .line 3461
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040198

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3462
    const v1, 0x7f0b042c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3463
    const/high16 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 3464
    const v1, 0x7f0b042d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3465
    new-instance v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3474
    new-instance v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$2;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3480
    new-instance v4, Landroid/widget/SearchView;

    iget-object v6, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 3481
    iget-object v6, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090598

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 3482
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 3483
    invoke-virtual {v4}, Landroid/widget/SearchView;->clearFocus()V

    .line 3484
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 3485
    iget-object v6, v4, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusable(Z)V

    .line 3486
    iget-object v6, v4, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 3487
    iget-object v6, v4, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v7, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$3;

    invoke-direct {v7, p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$3;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3493
    iget-object v6, v4, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v7, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3500
    iget-object v6, v4, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setRawInputType(I)V

    .line 3502
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3507
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_4

    .line 3508
    iget v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x1090106

    if-ne v1, v2, :cond_3

    .line 3509
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090108

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 3513
    :goto_4
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3514
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3515
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3516
    const v1, 0x1020393

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 3511
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090109

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    .line 3518
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040151

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3519
    const v1, 0x7f0b0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3520
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3522
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3524
    const v1, 0x7f0b0057

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 3529
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04014d

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3531
    const v1, 0x7f0b0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3532
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3534
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3536
    const v1, 0x7f0b038d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 3537
    const v1, 0x7f0b017b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 3541
    :pswitch_7
    iget-boolean v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_5

    .line 3542
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 3545
    :goto_5
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3546
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3548
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 3544
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    .line 3555
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;

    move-object v2, p2

    move-object v4, v1

    goto/16 :goto_1

    .line 3561
    :pswitch_8
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3566
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3569
    const v1, 0x7f0b047f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3570
    const v1, 0x7f0b0480

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3571
    const v1, 0x7f0b0481

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3572
    const v1, 0x7f0b0482

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    .line 3574
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3576
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v3, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3577
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3579
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3580
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3581
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3583
    :cond_7
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3605
    :pswitch_a
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3607
    const v1, 0x7f0b047b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3608
    const v1, 0x7f0b047c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3609
    const v1, 0x7f0b047d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3610
    const v1, 0x7f0b047e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 3612
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3614
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3615
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3616
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3619
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3620
    iget-object v2, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3621
    iget-object v2, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3626
    :goto_6
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e5

    cmp-long v1, v1, v5

    if-nez v1, :cond_b

    .line 3627
    const v1, 0x7f0b05e5

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 3628
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v1, :cond_8

    .line 3629
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v2, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    .line 3642
    :cond_8
    :goto_7
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3643
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3645
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3646
    :cond_9
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3647
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2400()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2500()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_36

    .line 3648
    invoke-direct {p0, v3}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    .line 3649
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$2402(Z)Z

    move-object v2, v3

    goto/16 :goto_2

    .line 3623
    :cond_a
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 3630
    :cond_b
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0640

    cmp-long v1, v1, v5

    if-nez v1, :cond_d

    .line 3631
    const v1, 0x7f0b0640

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 3632
    const v1, 0x7f0b047e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 3633
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_adjust_touch"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 3636
    :cond_d
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e6

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    .line 3637
    const v1, 0x7f0b05e6

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 3638
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v1, :cond_8

    .line 3639
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    iget-object v2, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    goto/16 :goto_7

    .line 3665
    :pswitch_b
    iget-boolean v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_13

    .line 3666
    iget v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x1090106

    if-ne v1, v2, :cond_12

    .line 3667
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 3671
    :goto_9
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3672
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3673
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3674
    const v1, 0x1020393

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 3675
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3686
    :goto_a
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e0

    cmp-long v1, v5, v7

    if-nez v1, :cond_14

    .line 3687
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3688
    const v1, 0x7f0b05e0

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 3689
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "toddler_mode_switch"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    .line 3690
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3691
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3692
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3799
    :cond_e
    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3800
    :cond_f
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3801
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2400()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2500()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_10

    .line 3802
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    .line 3808
    :cond_10
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3812
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 3815
    :cond_11
    invoke-direct {p0, v0, v4}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 3669
    :cond_12
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090109

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_9

    .line 3677
    :cond_13
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040151

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3678
    const v1, 0x7f0b0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3679
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3680
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3681
    const v1, 0x7f0b0057

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 3682
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 3694
    :cond_14
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0655

    cmp-long v1, v5, v7

    if-nez v1, :cond_15

    .line 3695
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_e

    .line 3696
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3697
    :cond_15
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e1

    cmp-long v1, v5, v7

    if-nez v1, :cond_16

    .line 3704
    :cond_16
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e4

    cmp-long v1, v5, v7

    if-nez v1, :cond_17

    .line 3705
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3707
    :cond_17
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0602

    cmp-long v1, v5, v7

    if-nez v1, :cond_18

    .line 3708
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3709
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3710
    :cond_18
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0622

    cmp-long v1, v5, v7

    if-nez v1, :cond_19

    .line 3711
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/glance/GlanceEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3712
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/glance/GlanceEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3713
    :cond_19
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0603

    cmp-long v1, v5, v7

    if-nez v1, :cond_1a

    .line 3714
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3715
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/DrivingModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3716
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3717
    const-string v1, ""

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3718
    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_b

    .line 3720
    :cond_1a
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0615

    cmp-long v1, v5, v7

    if-nez v1, :cond_1b

    .line 3721
    const v1, 0x7f0b0615

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 3722
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3723
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/VoiceInputControlEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3724
    :cond_1b
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0608

    cmp-long v1, v5, v7

    if-nez v1, :cond_1c

    .line 3725
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3726
    :cond_1c
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e7

    cmp-long v1, v5, v7

    if-nez v1, :cond_1d

    .line 3727
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3728
    :cond_1d
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e9

    cmp-long v1, v5, v7

    if-nez v1, :cond_1e

    .line 3729
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/location/LocationModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3730
    :cond_1e
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0610

    cmp-long v1, v5, v7

    if-nez v1, :cond_1f

    .line 3731
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3732
    :cond_1f
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0642

    cmp-long v1, v5, v7

    if-nez v1, :cond_20

    .line 3733
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v1, :cond_e

    .line 3734
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/motion2014/MotionEnabler2014;->setSwitch(Landroid/widget/Switch;)V

    .line 3735
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion2014/MotionEnabler2014;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3737
    :cond_20
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0613

    cmp-long v1, v5, v7

    if-nez v1, :cond_21

    .line 3738
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3739
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/FingerAirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3740
    :cond_21
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0614

    cmp-long v1, v5, v7

    if-nez v1, :cond_22

    .line 3741
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3742
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/AirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3744
    :cond_22
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0648

    cmp-long v1, v5, v7

    if-nez v1, :cond_23

    .line 3745
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3746
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion2013/AirMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3747
    :cond_23
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b064a

    cmp-long v1, v5, v7

    if-nez v1, :cond_24

    .line 3748
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3749
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion/MotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3750
    :cond_24
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b064b

    cmp-long v1, v5, v7

    if-nez v1, :cond_25

    .line 3751
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3752
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3753
    :cond_25
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0649

    cmp-long v1, v5, v7

    if-nez v1, :cond_26

    .line 3754
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v1, :cond_e

    .line 3755
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/AirCommandEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3756
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/AirCommandEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3758
    :cond_26
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b061a

    cmp-long v1, v5, v7

    if-nez v1, :cond_2a

    .line 3759
    const v1, 0x7f0b061a

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 3761
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "access_control_enabled"

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    .line 3763
    :goto_c
    iget-object v3, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_29

    const/4 v3, 0x1

    .line 3766
    :goto_d
    iget-object v5, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    iget-object v6, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Lcom/android/settings/MultiWindowEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3767
    iget-object v5, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v5, v0, p1}, Lcom/android/settings/MultiWindowEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3769
    if-eqz v1, :cond_27

    if-nez v3, :cond_e

    .line 3770
    :cond_27
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3771
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3772
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_b

    .line 3761
    :cond_28
    const/4 v1, 0x0

    goto :goto_c

    .line 3763
    :cond_29
    const/4 v3, 0x0

    goto :goto_d

    .line 3775
    :cond_2a
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0662

    cmp-long v1, v5, v7

    if-nez v1, :cond_2b

    .line 3776
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/MouseHoveringViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3777
    :cond_2b
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0659

    cmp-long v1, v5, v7

    if-nez v1, :cond_2c

    .line 3778
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/dmr/DMREnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3779
    :cond_2c
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05f0

    cmp-long v1, v5, v7

    if-nez v1, :cond_2d

    .line 3780
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3781
    :cond_2d
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05f2

    cmp-long v1, v5, v7

    if-nez v1, :cond_2e

    .line 3782
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3783
    :cond_2e
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05e2

    cmp-long v1, v5, v7

    if-nez v1, :cond_30

    .line 3786
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->access$2600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3787
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v5, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_b

    .line 3789
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3792
    :cond_30
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b05f3

    cmp-long v1, v5, v7

    if-nez v1, :cond_31

    .line 3793
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_b

    .line 3794
    :cond_31
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b0617

    cmp-long v1, v5, v7

    if-nez v1, :cond_e

    .line 3795
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    iget-object v3, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 3796
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_b

    .line 3819
    :pswitch_c
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0b062f

    cmp-long v1, v5, v7

    if-nez v1, :cond_32

    .line 3820
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v1

    .line 3821
    if-eqz v1, :cond_35

    .line 3822
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3823
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3824
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    .line 3825
    :goto_e
    if-eqz v1, :cond_34

    .line 3826
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v3, 0x7f020210

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3831
    :goto_f
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$5;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$5;-><init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3844
    :cond_32
    :goto_10
    invoke-direct {p0, v0, v4}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 3824
    :cond_33
    const/4 v1, 0x0

    goto :goto_e

    .line 3828
    :cond_34
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v3, 0x1080078

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_f

    .line 3840
    :cond_35
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3841
    iget-object v1, v4, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 3848
    :pswitch_d
    invoke-direct {p0, v0, v4}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    :cond_36
    move-object v2, v3

    goto/16 :goto_2

    .line 3424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3559
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 3308
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3309
    :cond_0
    const/4 v0, 0x7

    .line 3311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 3317
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3303
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 4011
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 4012
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 4018
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 4021
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->pause()V

    .line 4023
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 4024
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 4025
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 4026
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/glance/GlanceEnabler;->pause()V

    .line 4027
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 4028
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 4029
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    .line 4030
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->pause()V

    .line 4032
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 4034
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->pause()V

    .line 4035
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 4036
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    .line 4039
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->pause()V

    .line 4040
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->pause()V

    .line 4042
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 4043
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->pause()V

    .line 4044
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    .line 4046
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->pause()V

    .line 4047
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 4048
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 4049
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v0, :cond_7

    .line 4051
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 4052
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->pause()V

    .line 4053
    :cond_9
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 3966
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 3972
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 3975
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->resume()V

    .line 3977
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 3978
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 3979
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/glance/GlanceEnabler;->resume()V

    .line 3980
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 3981
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 3982
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 3983
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    .line 3984
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->resume()V

    .line 3986
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 3988
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->resume()V

    .line 3989
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 3990
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    .line 3993
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->resume()V

    .line 3994
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->resume()V

    .line 3996
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 3997
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->resume()V

    .line 3998
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    .line 4000
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->resume()V

    .line 4001
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 4002
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 4003
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v0, :cond_7

    .line 4006
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 4007
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mContextualContentsEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->resume()V

    .line 4008
    :cond_9
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 4056
    if-eqz p1, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 4062
    :goto_0
    return-void

    .line 4059
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 4060
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
