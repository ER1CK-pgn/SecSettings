.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private bRegisterReceiver:Z

.field private isDeviceLockTime:Z

.field private layoutType:I

.field private mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

.field private mAutoSwipe:Landroid/preference/CheckBoxPreference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockMenu:Landroid/preference/PreferenceScreen;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mFavoriteApps:Landroid/preference/PreferenceScreen;

.field private mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

.field private mFlipCoverCategory:Landroid/preference/PreferenceCategory;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field mInkEffectSummaryForTablet:[I

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMagazineCard:Landroid/preference/PreferenceScreen;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

.field private mSelectInfo:Landroid/preference/Preference;

.field private mSetShortcuts:Landroid/preference/ListPreference;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mStartFromSearch:Z

.field private mSviewColor:Landroid/preference/Preference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 190
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 201
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 203
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    .line 210
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 211
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 227
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 239
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    .line 251
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    return-void

    .line 227
    :array_0
    .array-data 0x4
        0xd9t 0x12t 0x9t 0x7ft
        0xdat 0x12t 0x9t 0x7ft
        0xdct 0x12t 0x9t 0x7ft
        0xddt 0x12t 0x9t 0x7ft
        0xdft 0x12t 0x9t 0x7ft
        0xe0t 0x12t 0x9t 0x7ft
        0xe1t 0x12t 0x9t 0x7ft
        0xdet 0x12t 0x9t 0x7ft
        0xe3t 0x12t 0x9t 0x7ft
    .end array-data

    .line 239
    :array_1
    .array-data 0x4
        0xd9t 0x12t 0x9t 0x7ft
        0xdat 0x12t 0x9t 0x7ft
        0xdct 0x12t 0x9t 0x7ft
        0xddt 0x12t 0x9t 0x7ft
        0xdft 0x12t 0x9t 0x7ft
        0xe0t 0x12t 0x9t 0x7ft
        0xe1t 0x12t 0x9t 0x7ft
        0xdet 0x12t 0x9t 0x7ft
        0xe3t 0x12t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const v12, 0x7f090202

    const v11, 0x7f0901fb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 290
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 294
    :cond_0
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_56

    move v2, v3

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_58

    .line 300
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 301
    const v0, 0x7f0700ae

    move v6, v0

    .line 345
    :goto_1
    if-eqz v6, :cond_1

    .line 346
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 349
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 350
    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 353
    :cond_2
    iput v6, p0, Lcom/android/settings/LockscreenMenuSettings;->layoutType:I

    .line 354
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 355
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v5, v0

    .line 360
    :goto_2
    const-string v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 362
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_3
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    :cond_4
    :goto_3
    const-string v1, "lock_after_timeout"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 391
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    .line 393
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_5

    .line 394
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f09006a

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f09006a

    invoke-virtual {v1, v7}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f0a001d

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 397
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f0a001e

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 400
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 401
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 405
    :cond_6
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 409
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 411
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 415
    const v1, 0x7f0700a5

    if-eq v6, v1, :cond_7

    const v1, 0x7f0700b5

    if-ne v6, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v7, 0x1

    if-eq v1, v7, :cond_8

    .line 418
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 419
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    :cond_8
    const-string v1, "keyguard_enable_widgets"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 425
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 426
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    :cond_9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 457
    :cond_a
    const-string v1, "owner_info_settings"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 458
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_b

    .line 459
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    :cond_b
    const-string v1, "lock_screen_widget_options"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 464
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "u0lte"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 471
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_d

    .line 472
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "easy_mode_switch"

    invoke-static {v1, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5f

    move v1, v3

    :goto_5
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 476
    :cond_d
    const-string v1, "quick_note"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 477
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.android.quickmemo"

    invoke-static {v1, v7}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 478
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f091345

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f091346

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 481
    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_f

    .line 485
    :cond_f
    const-string v1, "auto_swipe"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    .line 486
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_11

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v2, :cond_11

    .line 487
    :cond_10
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_11
    const-string v1, "visiblesignature"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 491
    const-string v1, "signature_verification_level"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 492
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_12

    .line 493
    invoke-direct {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 497
    :cond_12
    const-string v1, "unlock_tactile_feedback"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 498
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_13

    .line 499
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_13

    .line 500
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    :cond_13
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 524
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lock_screen_face_with_voice"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 526
    if-ne v7, v3, :cond_14

    .line 527
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 528
    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 529
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 531
    :cond_14
    const-string v1, "LockScreenMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_15
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_16

    .line 536
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    :cond_16
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_17

    .line 539
    const-string v1, "LockScreenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLockPatternUtils.isSecureForSetting(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "is_secured_lock"

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_60

    move v1, v3

    :goto_6
    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    :cond_17
    const-string v1, "dualclock_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 545
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_18

    .line 546
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 547
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "dualclock_menu_settings"

    invoke-static {v1, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_61

    move v1, v3

    :goto_7
    invoke-virtual {v7, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 554
    :cond_18
    :goto_8
    const-string v1, "safetyzone_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 555
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_19

    .line 556
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "easy_mode_switch"

    invoke-static {v1, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_63

    move v1, v3

    :goto_9
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 558
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 569
    :cond_19
    const-string v1, "set_shortcuts"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    .line 570
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1a

    .line 571
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    :cond_1a
    const-string v1, "lock_screen_favorite_apps"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    .line 575
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 578
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1c

    .line 579
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1d

    .line 581
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 584
    :cond_1d
    const-string v1, "lock_screen_shortcut_menu"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 585
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1f

    .line 586
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 587
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 590
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1f

    .line 591
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 595
    :cond_1f
    const-string v1, "lock_screen_finger_print"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lock_screen_fingerprint_shortcut"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 597
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v7, :cond_20

    .line 598
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 599
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_64

    move v1, v3

    :goto_a
    invoke-virtual {v7, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 602
    :cond_20
    const-string v1, "unlock_effect"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 604
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_22

    .line 610
    const-string v1, "3"

    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removeUnsupportedEffect(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 616
    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f091733

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 620
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f091748

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_21
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 625
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 629
    :cond_22
    const-string v1, "ink_effect"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 630
    const-string v1, "hltejs01dcm"

    const-string v7, "ro.product.device"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "SC-02F"

    const-string v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 631
    :cond_23
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 635
    :cond_24
    const-string v1, "help_text"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 636
    const-string v1, "say_your_wakeup"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 638
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 639
    const-string v1, "flip_cover"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    .line 640
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 641
    const-string v1, "sview_color"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    .line 642
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    .line 645
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isCoverVerified()Z

    move-result v1

    .line 646
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getTypeOfCover()I

    move-result v7

    .line 648
    const-string v8, "LockScreenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCoverVerified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v8, "LockScreenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coverType"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz v1, :cond_65

    if-eq v7, v3, :cond_25

    const/4 v8, 0x3

    if-ne v7, v8, :cond_65

    .line 652
    :cond_25
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 681
    :cond_26
    :goto_b
    const v1, 0x7f0700a8

    if-ne v6, v1, :cond_2b

    .line 682
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_27

    .line 684
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09135d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 688
    :cond_27
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_28

    .line 693
    :cond_28
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_29

    .line 700
    :cond_29
    const-string v1, "set_wakeup_command"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 701
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2b

    .line 702
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 703
    if-eqz v1, :cond_2b

    .line 704
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 705
    invoke-virtual {v6, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 706
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_2b

    .line 707
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2a

    .line 708
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 709
    :cond_2a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2b

    .line 710
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 724
    :cond_2b
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 725
    :cond_2c
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    if-eqz v1, :cond_2d

    .line 726
    sget v1, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2d

    .line 727
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 728
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    sget v6, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v6, v3, :cond_6b

    .line 730
    :goto_c
    const-string v4, "lock_screen_shortcut_menu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 731
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 732
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 733
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 749
    :cond_2d
    :goto_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 750
    const-string v1, "lock_screen_wakeup_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 751
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2e

    .line 752
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 756
    :cond_2e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 759
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 760
    const-string v1, "multiple_lock_screenswitch"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 762
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2f

    .line 763
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "com.android.settings.LockScreenSettings"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$2;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 774
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_30

    .line 775
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 780
    :cond_30
    const-string v1, "lock_screen_magazine_card"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    .line 782
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 786
    const-string v1, "lock_screen_clock_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    .line 787
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_31

    .line 788
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    const-string v3, "com.android.settings.LockScreenSettings"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$3;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 799
    :cond_31
    const-string v1, "lock_screen_myprofile_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 802
    const-string v1, "lock_screen_wakeup_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 804
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 805
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 806
    const-string v1, "LockScreenMenu"

    const-string v3, "removePreference lock_screen_wakeup_settings if Svoice is not supported"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_32
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_33

    .line 810
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 811
    :cond_33
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_34

    .line 812
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 814
    :cond_34
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 816
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_35

    .line 817
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 820
    :cond_35
    const-string v1, "additional_information"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    .line 822
    const-string v1, "LockScreenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lock type :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0901f7

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_6e

    .line 825
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f090230

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 826
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f091317

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 828
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    .line 829
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 830
    :cond_36
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_37

    if-eqz v2, :cond_37

    .line 831
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 832
    :cond_37
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v1, :cond_38

    .line 833
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 834
    :cond_38
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_39

    .line 835
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 836
    :cond_39
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3a

    .line 837
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 838
    :cond_3a
    if-eqz v3, :cond_3b

    .line 839
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 840
    :cond_3b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3c

    .line 841
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 842
    :cond_3c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3d

    .line 843
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 844
    :cond_3d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3e

    .line 845
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 846
    :cond_3e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 847
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1147
    :cond_3f
    :goto_e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1149
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09022f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1151
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v1, :cond_40

    .line 1152
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1153
    :cond_40
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_41

    .line 1154
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1155
    :cond_41
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_42

    .line 1156
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1157
    :cond_42
    if-eqz v3, :cond_43

    .line 1158
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1159
    :cond_43
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_44

    .line 1160
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1161
    :cond_44
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_45

    .line 1162
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1163
    :cond_45
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_46

    .line 1164
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1165
    :cond_46
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_47

    .line 1166
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1167
    :cond_47
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_48

    .line 1168
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1169
    :cond_48
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_49

    .line 1170
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1171
    :cond_49
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4a

    .line 1172
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1173
    :cond_4a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_4b

    .line 1174
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1175
    :cond_4b
    if-eqz v0, :cond_4c

    .line 1176
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1177
    :cond_4c
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4d

    .line 1178
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1179
    :cond_4d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4e

    .line 1180
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1181
    :cond_4e
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4f

    .line 1182
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1183
    :cond_4f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_50

    .line 1184
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1185
    :cond_50
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_51

    .line 1186
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1187
    :cond_51
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v0, :cond_52

    .line 1188
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1189
    :cond_52
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_53

    .line 1190
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1191
    :cond_53
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_54

    .line 1192
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1193
    :cond_54
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_55

    .line 1194
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1200
    :cond_55
    return-object v5

    :cond_56
    move v2, v4

    .line 296
    goto/16 :goto_0

    .line 303
    :cond_57
    const v0, 0x7f0700a8

    .line 304
    const v5, 0x7f0901f7

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v6, v0

    goto/16 :goto_1

    .line 306
    :cond_58
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 308
    const v0, 0x7f0700a5

    .line 309
    const v5, 0x7f090231

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v6, v0

    goto/16 :goto_1

    .line 310
    :cond_59
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 312
    const v0, 0x7f0700b5

    .line 313
    const v5, 0x7f090232

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v6, v0

    goto/16 :goto_1

    .line 315
    :cond_5a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    .line 343
    :goto_f
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v6, v0

    goto/16 :goto_1

    .line 317
    :sswitch_0
    const v0, 0x7f0700b1

    .line 318
    const v5, 0x7f0901fe

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 321
    :sswitch_1
    const v0, 0x7f0700ac

    .line 322
    const v5, 0x7f091631

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 325
    :sswitch_2
    const v0, 0x7f0700b3

    .line 326
    const v5, 0x7f09022a

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 329
    :sswitch_3
    const v0, 0x7f0700a6

    .line 330
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 335
    :sswitch_4
    const v0, 0x7f0700b0

    .line 336
    const v5, 0x7f09022c

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 339
    :sswitch_5
    const v0, 0x7f0700a7

    .line 340
    const v5, 0x7f090200

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_f

    .line 365
    :cond_5b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 366
    new-instance v1, Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 367
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v7, "multiple_lock_screenswitch"

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const v7, 0x7f091315

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 369
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const v7, 0x7f091316

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 372
    if-eqz v0, :cond_4

    .line 373
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 376
    :cond_5c
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    .line 377
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v7, "multiple_lock_screen"

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f091315

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f091316

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 382
    if-eqz v0, :cond_4

    .line 383
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 466
    :cond_5d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_c

    .line 467
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    const v7, 0x7f09131f

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 468
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "easy_mode_switch"

    invoke-static {v1, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5e

    move v1, v3

    :goto_10
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_5e
    move v1, v4

    goto :goto_10

    :cond_5f
    move v1, v4

    .line 472
    goto/16 :goto_5

    :cond_60
    move v1, v4

    .line 540
    goto/16 :goto_6

    :cond_61
    move v1, v4

    .line 547
    goto/16 :goto_7

    .line 550
    :cond_62
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_63
    move v1, v4

    .line 556
    goto/16 :goto_9

    :cond_64
    move v1, v4

    .line 599
    goto/16 :goto_a

    .line 659
    :cond_65
    if-eqz v1, :cond_66

    if-nez v7, :cond_66

    .line 660
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 661
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 662
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 668
    :cond_66
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_67

    .line 669
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 671
    :cond_67
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    :cond_68
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 673
    :cond_69
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 674
    :cond_6a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    :cond_6b
    move v3, v4

    .line 729
    goto/16 :goto_c

    .line 735
    :cond_6c
    const-string v4, "dualclock_settings"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 736
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 737
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 738
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 740
    :cond_6d
    const-string v4, "safetyzone_settings"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 741
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 742
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 743
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 848
    :cond_6e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0901fe

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_7b

    .line 850
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f090233

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 851
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f091318

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 853
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 854
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 855
    :cond_6f
    if-eqz v3, :cond_70

    .line 856
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 857
    :cond_70
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_71

    .line 858
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 859
    :cond_71
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_72

    .line 860
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 861
    :cond_72
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_73

    .line 862
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 863
    :cond_73
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_74

    .line 864
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 865
    :cond_74
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_75

    .line 866
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 867
    :cond_75
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_76

    .line 868
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 869
    :cond_76
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_77

    .line 870
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 871
    :cond_77
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_78

    .line 872
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 873
    :cond_78
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_79

    .line 874
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 875
    :cond_79
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7a

    .line 876
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    :cond_7a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 878
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 879
    :cond_7b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f091631

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_8a

    .line 881
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f090235

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 882
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f090235

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 884
    if-eqz v3, :cond_7c

    .line 885
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 886
    :cond_7c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_7d

    .line 887
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 888
    :cond_7d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7e

    .line 889
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 890
    :cond_7e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_7f

    .line 891
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 892
    :cond_7f
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_80

    .line 893
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 894
    :cond_80
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_81

    .line 895
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 896
    :cond_81
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_82

    .line 897
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 898
    :cond_82
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_83

    .line 899
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 900
    :cond_83
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_84

    .line 901
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 902
    :cond_84
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_85

    .line 903
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 904
    :cond_85
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_86

    .line 905
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 906
    :cond_86
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_87

    .line 907
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 908
    :cond_87
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_89

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    if-eqz v2, :cond_89

    .line 909
    :cond_88
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 910
    :cond_89
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 911
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 912
    :cond_8a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f09022a

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_98

    .line 914
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 915
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f091319

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 917
    if-eqz v3, :cond_8b

    .line 918
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 919
    :cond_8b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_8c

    .line 920
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 921
    :cond_8c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_8d

    .line 922
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 923
    :cond_8d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_8e

    .line 924
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 925
    :cond_8e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_8f

    .line 926
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 927
    :cond_8f
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_90

    .line 928
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 929
    :cond_90
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_91

    .line 930
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 931
    :cond_91
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_92

    .line 932
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 933
    :cond_92
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_93

    .line 934
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 935
    :cond_93
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_94

    .line 936
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 937
    :cond_94
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_95

    .line 938
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 939
    :cond_95
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_96

    .line 940
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 941
    :cond_96
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_97

    .line 942
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 943
    :cond_97
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 944
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 945
    :cond_98
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f090200

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_a6

    .line 947
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09021f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 949
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09021f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 952
    if-eqz v3, :cond_99

    .line 953
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 954
    :cond_99
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_9a

    .line 955
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 956
    :cond_9a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_9b

    .line 957
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 958
    :cond_9b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_9c

    .line 959
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 960
    :cond_9c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_9d

    .line 961
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 962
    :cond_9d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_9e

    .line 963
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 964
    :cond_9e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_9f

    .line 965
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 966
    :cond_9f
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_a0

    .line 967
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 968
    :cond_a0
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a1

    .line 969
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 970
    :cond_a1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a2

    .line 971
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 972
    :cond_a2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a3

    .line 973
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 974
    :cond_a3
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_a4

    .line 975
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 976
    :cond_a4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a5

    .line 977
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 978
    :cond_a5
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 979
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 980
    :cond_a6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f09022c

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_b5

    .line 982
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f090236

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 983
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v4, 0x7f09131c

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 985
    if-eqz v3, :cond_a7

    .line 986
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 987
    :cond_a7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_a8

    .line 988
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 989
    :cond_a8
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_a9

    .line 990
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 991
    :cond_a9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_aa

    .line 992
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 993
    :cond_aa
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_ab

    .line 994
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 995
    :cond_ab
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_ac

    .line 996
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 997
    :cond_ac
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_ad

    .line 998
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 999
    :cond_ad
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_ae

    .line 1000
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1001
    :cond_ae
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_af

    .line 1002
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1003
    :cond_af
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b0

    .line 1004
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1005
    :cond_b0
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b1

    .line 1006
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1007
    :cond_b1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b2

    .line 1008
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1009
    :cond_b2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b4

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    if-eqz v2, :cond_b4

    .line 1010
    :cond_b3
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1011
    :cond_b4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1012
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 1013
    :cond_b5
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_c3

    .line 1015
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 1016
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 1018
    if-eqz v3, :cond_b6

    .line 1019
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1020
    :cond_b6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b7

    .line 1021
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1022
    :cond_b7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_b8

    .line 1023
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1024
    :cond_b8
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_b9

    .line 1025
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1026
    :cond_b9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_ba

    .line 1027
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1028
    :cond_ba
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_bb

    .line 1029
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1030
    :cond_bb
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_bc

    .line 1031
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1032
    :cond_bc
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_bd

    .line 1033
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1034
    :cond_bd
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_be

    .line 1035
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1036
    :cond_be
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_bf

    .line 1037
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1038
    :cond_bf
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c0

    .line 1039
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1040
    :cond_c0
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c1

    .line 1041
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1042
    :cond_c1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c2

    .line 1043
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1044
    :cond_c2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1045
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 1046
    :cond_c3
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v2, 0x7f090231

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_d1

    .line 1048
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1049
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09131a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 1051
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c4

    .line 1052
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1053
    :cond_c4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_c5

    .line 1054
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1055
    :cond_c5
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_c6

    .line 1056
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1057
    :cond_c6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_c7

    .line 1058
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1059
    :cond_c7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c8

    .line 1060
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1061
    :cond_c8
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_c9

    .line 1062
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1063
    :cond_c9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_ca

    .line 1064
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1066
    :cond_ca
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1067
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v2, 0x1

    if-eq v1, v2, :cond_cb

    .line 1068
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cb

    .line 1069
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1077
    :cond_cb
    :goto_11
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cc

    .line 1078
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1079
    :cond_cc
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cd

    .line 1080
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1081
    :cond_cd
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_ce

    .line 1082
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1083
    :cond_ce
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cf

    .line 1084
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1085
    :cond_cf
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1086
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 1073
    :cond_d0
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cb

    .line 1074
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_11

    .line 1087
    :cond_d1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_de

    .line 1089
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 1090
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09131a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 1092
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_d2

    .line 1093
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1094
    :cond_d2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_d3

    .line 1095
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1096
    :cond_d3
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_d4

    .line 1097
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1098
    :cond_d4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_d5

    .line 1099
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1100
    :cond_d5
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_d6

    .line 1101
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1102
    :cond_d6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_d7

    .line 1103
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1104
    :cond_d7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_d8

    .line 1105
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1106
    :cond_d8
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_d9

    .line 1107
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1108
    :cond_d9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_da

    .line 1109
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1110
    :cond_da
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_db

    .line 1111
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1112
    :cond_db
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_dc

    .line 1113
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1114
    :cond_dc
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_dd

    .line 1115
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1116
    :cond_dd
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1117
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 1118
    :cond_de
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v2, 0x7f090232

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3f

    .line 1119
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1120
    const-string v1, "lock_screen_options_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09131b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 1122
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_df

    .line 1123
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1124
    :cond_df
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_e0

    .line 1125
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1126
    :cond_e0
    if-eqz v3, :cond_e1

    .line 1127
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1128
    :cond_e1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_e2

    .line 1129
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1130
    :cond_e2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_e3

    .line 1131
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1132
    :cond_e3
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v1, :cond_e4

    .line 1133
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1134
    :cond_e4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_e5

    .line 1135
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1136
    :cond_e5
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_e6

    .line 1137
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1138
    :cond_e6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e7

    .line 1139
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1140
    :cond_e7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e8

    .line 1141
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1142
    :cond_e8
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e9

    .line 1143
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1144
    :cond_e9
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1145
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_ea
    move-object v5, v1

    goto/16 :goto_2

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x41000 -> :sswitch_1
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_3
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1348
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1349
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "screen_off_timeout"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    move v0, v1

    .line 1356
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 1357
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1358
    cmp-long v7, v7, p1

    if-gtz v7, :cond_0

    .line 1359
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, p1, v7

    .line 1367
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 1369
    const v0, 0x7f091137

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_2
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1379
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 1380
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1389
    :goto_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1391
    return-void

    .line 1382
    :cond_4
    const-string v0, "LockScreenMenu"

    const-string v3, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1441
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 2152
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 2153
    div-long v2, v0, v4

    .line 2154
    rem-long v4, v0, v4

    .line 2156
    const-string v0, ""

    .line 2157
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 2158
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110009

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000a

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    :cond_2
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    return-object v0
.end method

.method private getTypeOfCover()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2247
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 2249
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2250
    const/4 v2, 0x0

    .line 2252
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v3, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2253
    const/16 v2, 0xf

    :try_start_1
    new-array v2, v2, [C

    .line 2254
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 2255
    if-lez v3, :cond_0

    .line 2256
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    .line 2263
    :cond_0
    if-eqz v1, :cond_1

    .line 2265
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2271
    :cond_1
    :goto_0
    return v0

    .line 2258
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 2263
    :goto_1
    if-eqz v1, :cond_1

    .line 2265
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2266
    :catch_1
    move-exception v1

    goto :goto_0

    .line 2260
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 2263
    :goto_2
    if-eqz v1, :cond_1

    .line 2265
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 2266
    :catch_3
    move-exception v1

    goto :goto_0

    .line 2263
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 2265
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2267
    :cond_2
    :goto_4
    throw v0

    .line 2266
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 2263
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2260
    :catch_6
    move-exception v2

    goto :goto_2

    .line 2258
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private isCoverVerified()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2275
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 2277
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2278
    const/4 v2, 0x0

    .line 2280
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v3, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2281
    const/16 v2, 0xf

    :try_start_1
    new-array v2, v2, [C

    .line 2282
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 2283
    if-lez v3, :cond_0

    .line 2284
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2291
    :cond_0
    if-eqz v1, :cond_1

    .line 2293
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2299
    :cond_1
    :goto_0
    return v0

    .line 2286
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 2291
    :goto_1
    if-eqz v1, :cond_1

    .line 2293
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2294
    :catch_1
    move-exception v1

    goto :goto_0

    .line 2288
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 2291
    :goto_2
    if-eqz v1, :cond_1

    .line 2293
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 2294
    :catch_3
    move-exception v1

    goto :goto_0

    .line 2291
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 2293
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2295
    :cond_2
    :goto_4
    throw v0

    .line 2294
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 2291
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2288
    :catch_6
    move-exception v2

    goto :goto_2

    .line 2286
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private isEffect()Z
    .locals 6

    .prologue
    .line 1422
    const/4 v2, 0x0

    .line 1423
    .local v2, water_effect:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1426
    .local v0, effect:I
    const/4 v2, 0x2

    .line 1430
    if-ne v0, v2, :cond_0

    .line 1431
    const/4 v1, 0x1

    .line 1435
    .local v1, state:Z
    :goto_0
    return v1

    .line 1433
    .end local v1           #state:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #state:Z
    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2197
    .line 2198
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 2199
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2205
    :goto_0
    if-nez v2, :cond_2

    .line 2211
    :cond_0
    :goto_1
    return v1

    .line 2201
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2207
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2208
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 2207
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 1867
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1226
    const/4 v0, 0x1

    .line 1229
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1230
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    return v0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    const-string v0, "LockScreenMenu"

    const-string v2, "SVoice is not installed."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1233
    goto :goto_0
.end method

.method private removeUnsupportedEffect(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    .line 1204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v3, 0x7f0a000d

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1211
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1213
    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 1215
    aget-object v5, v4, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1213
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_0
    aget-object v5, v3, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1221
    :cond_1
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1223
    return-void
.end method

.method private setupLockAfterPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 1277
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1279
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1281
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1282
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 1284
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 1290
    iget-boolean v6, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 1293
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 1281
    goto :goto_0

    .line 1290
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1394
    if-nez p1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v2, 0x7f040187

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 1396
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_signature_verification_level"

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1402
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1405
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 1408
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 1409
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1410
    int-to-long v8, v3

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    move v2, v0

    .line 1408
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1415
    :cond_2
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1416
    const-string v2, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get signature verification level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v3, 0x7f091166

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1419
    return-void
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 2079
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$8;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$7;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2102
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2108
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2110
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2113
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2114
    const v2, 0x7f04006e

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2115
    const v0, 0x7f0b007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2117
    const v3, 0x7f090d20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2118
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2119
    const v0, 0x7f090d1a

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2120
    const v0, 0x7f09079f

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2121
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2122
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2123
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$9;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$9;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2142
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1299
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1300
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1301
    const/4 v1, 0x0

    .line 1302
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 1303
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1304
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v1, v0

    .line 1302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 1311
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v8, v0

    .line 1313
    const-wide/16 v10, 0x0

    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1317
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_4

    const v0, 0x7f09006b

    .line 1318
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_5

    const v2, 0x7f09006c

    .line 1321
    :goto_4
    aget-object v3, v7, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_7

    cmp-long v3, v10, v4

    if-gez v3, :cond_7

    .line 1322
    const-string v3, "LockScreenMenu"

    const-string v4, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-boolean v3, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_6

    cmp-long v3, v10, v8

    if-gez v3, :cond_6

    .line 1325
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1345
    :goto_5
    return-void

    .line 1310
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 1313
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 1317
    :cond_4
    const v0, 0x7f0901c5

    goto :goto_3

    .line 1318
    :cond_5
    const v2, 0x7f091136

    goto :goto_4

    .line 1327
    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1332
    :cond_7
    if-nez v1, :cond_8

    .line 1333
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1335
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v2

    if-eqz v2, :cond_a

    cmp-long v2, v4, v10

    if-ltz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_a

    .line 1336
    :cond_9
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1338
    :cond_a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 2065
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2066
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2068
    .local v3, values:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2069
    .local v0, State:I
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2071
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2072
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2073
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2071
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2076
    :cond_1
    return-void
.end method

.method private updateSetSchortcutsMenu()V
    .locals 5

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2223
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2224
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "set_shortcuts_mode"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "set_shortcuts"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2230
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 2231
    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    .line 2232
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2238
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2239
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 2240
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2241
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2245
    :cond_1
    return-void

    .line 2234
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 2239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2303
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2304
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2305
    if-nez v3, :cond_0

    .line 2321
    :goto_0
    return v1

    .line 2309
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 2310
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2312
    if-nez v0, :cond_1

    move v1, v3

    .line 2314
    goto :goto_0

    .line 2317
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 2321
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1245
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1246
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenMenuSettings$4;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1268
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 1875
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1876
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1878
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1880
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 1882
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1883
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1884
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 1891
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1894
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1898
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 264
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 267
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 269
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 271
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 274
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 275
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 278
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_2

    .line 285
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 287
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1272
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1273
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1729
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1730
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1731
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1733
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mUnlockEffect dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1902
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    move-object v0, p2

    .line 1903
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1905
    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1906
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_after_timeout_rollback"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v0

    .line 1912
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_screen_lock_after_timeout"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1920
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    int-to-long v6, v3

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 1921
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 1924
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 2020
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2022
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1b

    .line 2023
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 2024
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "my_profile_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2061
    :cond_3
    :goto_3
    return v1

    .line 1908
    :cond_4
    const v0, 0x1b7741

    move v3, v0

    goto :goto_0

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    const-string v4, "SecuritySettings"

    const-string v5, "could not persist lockAfter timeout setting"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1925
    :cond_5
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 1926
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1928
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_signature_verification_level"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1934
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1930
    :catch_1
    move-exception v0

    .line 1931
    const-string v3, "SecuritySettings"

    const-string v4, "could not persist signature verification level setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1935
    :cond_6
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1936
    const-string v0, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1937
    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1938
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1939
    const v3, 0x7f090fda

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1940
    const v3, 0x7f0915c9

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1941
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/LockscreenMenuSettings$6;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1947
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1950
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_5

    .line 1952
    :cond_9
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p2

    .line 1953
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1955
    if-eqz v0, :cond_c

    .line 1956
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "safetyzone_settings"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1957
    if-eqz v0, :cond_1

    .line 1959
    const-string v3, "DoNotShowDialogOn"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1960
    if-nez v0, :cond_a

    .line 1961
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 1963
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "safety_zone_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1965
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 1967
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "safety_zone_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1971
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1972
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090d23

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1973
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_d

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_6

    .line 1975
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto :goto_7

    .line 1978
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_12

    .line 1979
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1980
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1981
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    .line 1982
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1983
    :cond_11
    const-string v3, "LockScreenMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LockScreen : lockscreen_ripple_effect :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1984
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_13

    .line 1985
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1986
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 1987
    const-string v3, "LockScreenMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SET_SHORTCUTS_MODE :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1988
    :cond_13
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_15

    move-object v0, p2

    .line 1989
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1990
    if-eqz v0, :cond_14

    .line 1991
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_fingerprint_shortcut"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1993
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_fingerprint_shortcut"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1994
    :cond_15
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_18

    .line 1996
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_16
    move-object v0, p2

    .line 1999
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 2000
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2001
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2002
    const-string v4, "isEnable"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2003
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_17
    move v0, v2

    .line 1999
    goto :goto_8

    .line 2007
    :cond_18
    const-string v0, "multiple_lock_screen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_19
    move-object v0, p2

    .line 2012
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    .line 2013
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2014
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple lock screen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kg_multiple_lockscreen"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    move v0, v2

    .line 2012
    goto :goto_9

    .line 2025
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1d

    .line 2026
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v2, v1

    .line 2027
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_up_lock_screen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 2028
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1f

    .line 2029
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v2, v1

    .line 2030
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 2031
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_3

    .line 2032
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    .line 2033
    :goto_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_weather"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v1

    .line 2035
    :goto_b
    if-ne v0, v1, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->checkNetwork()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2036
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090c71

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2038
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2039
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2040
    if-ne v0, v1, :cond_23

    if-eqz v3, :cond_23

    .line 2041
    const-string v2, "START"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2044
    :goto_c
    const-string v2, "PACKAGE"

    const-string v3, "android"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    const-string v2, "CP"

    const-string v3, "Kweather"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2057
    :goto_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_info"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_21
    move v0, v2

    .line 2032
    goto :goto_a

    :cond_22
    move v3, v2

    .line 2033
    goto :goto_b

    .line 2043
    :cond_23
    const-string v3, "START"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_c

    .line 2048
    :cond_24
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    if-ne v0, v1, :cond_25

    if-eqz v3, :cond_25

    .line 2050
    const-string v2, "START"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2053
    :goto_e
    const-string v2, "PACKAGE"

    const-string v3, "android"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    const-string v2, "CP"

    const-string v3, "Accuweather"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2055
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_d

    .line 2052
    :cond_25
    const-string v3, "START"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1739
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1741
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1742
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    .line 1743
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1744
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v0, v3, :cond_4

    move v1, v3

    :goto_0
    move-object v0, p2

    .line 1745
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1746
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1747
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1754
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1755
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1756
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1758
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1759
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1760
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1858
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    :cond_4
    move v1, v6

    .line 1744
    goto :goto_0

    .line 1762
    :cond_5
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1763
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1765
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1771
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_1

    .line 1773
    :cond_6
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1774
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1775
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 1780
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1781
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1783
    const/16 v3, 0x7d

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1789
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1790
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 1793
    :cond_8
    const-string v1, "lockenabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1794
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 1795
    :cond_9
    const-string v1, "visiblepattern"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1796
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 1797
    :cond_a
    const-string v1, "quick_note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1798
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_quick_note"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_3
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v3, v6

    goto :goto_3

    .line 1799
    :cond_c
    const-string v1, "visiblesignature"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1800
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_1

    .line 1801
    :cond_d
    const-string v1, "unlock_tactile_feedback"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1803
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1804
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1

    .line 1805
    :cond_e
    const-string v1, "keyguard_enable_widgets"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1806
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_1

    .line 1807
    :cond_f
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_10

    .line 1808
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_1

    .line 1809
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1810
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 1811
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1812
    :cond_11
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1813
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_text"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_4
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v3, v6

    goto :goto_4

    .line 1814
    :cond_13
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1815
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_5
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v3, v6

    goto :goto_5

    .line 1816
    :cond_15
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1817
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wake_up_lock_screen"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_6
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_16
    move v3, v6

    goto :goto_6

    .line 1818
    :cond_17
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1819
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1820
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1822
    const v1, 0x7f090fda

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1823
    const v1, 0x7f0915c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1824
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$5;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1829
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1830
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1833
    :cond_18
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1835
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.InkeffectPreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1839
    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.InkeffectPreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1844
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1845
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_swipe_main_user"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_7
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1b
    move v3, v6

    goto :goto_7

    .line 1846
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1847
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 1848
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1849
    const-string v1, "com.android.settings.myprofile.PersonalMessage"

    const v3, 0x7f090fde

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 1851
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1852
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 1853
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1854
    const-string v1, "com.android.settings.MagazineCard"

    const v3, 0x7f091347

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1450
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1451
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1457
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1459
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 1460
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1468
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "lock_screen_quick_note"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 1471
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "auto_swipe_main_user"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1473
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_27

    .line 1474
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1478
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1481
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1482
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1484
    :cond_5
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 1485
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1486
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1487
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f091461

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1491
    :cond_6
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 1492
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1495
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_28

    move v0, v2

    .line 1496
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1497
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_hovering_ink_effect"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1500
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1502
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    .line 1503
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1504
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1520
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1522
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_9

    .line 1523
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1524
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1540
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v3, :cond_c

    .line 1541
    if-nez v0, :cond_a

    if-lez v5, :cond_31

    .line 1542
    :cond_a
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1547
    :goto_6
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v7, 0x1

    if-ne v3, v7, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_b

    .line 1550
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1553
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1555
    :cond_c
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_f

    .line 1556
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1557
    if-nez v0, :cond_d

    if-lez v5, :cond_e

    .line 1558
    :cond_d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1560
    :cond_e
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1561
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1566
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    .line 1567
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "unlock_text"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1570
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_11

    .line 1571
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "automatic_unlock"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1574
    :cond_11
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_12

    .line 1575
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wake_up_lock_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1576
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_36

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1579
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    .line 1580
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_37

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1584
    :cond_13
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1585
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_d
    move v3, v0

    .line 1587
    :goto_e
    if-nez v3, :cond_15

    .line 1588
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_14

    .line 1589
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1590
    :cond_14
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    .line 1591
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1597
    :cond_15
    iget v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/16 v5, 0xb

    if-ne v0, v5, :cond_39

    .line 1598
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v0, v5, v11}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1600
    iput v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 1610
    :cond_16
    :goto_f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1611
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 1615
    :cond_17
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1616
    const-string v0, "LockScreenMenu"

    const-string v5, "onResume(): isLockScreenEnabled = false"

    invoke-static {v0, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1620
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "safety_zone_enable"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1623
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1624
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1626
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_19

    .line 1627
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1628
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1641
    :cond_19
    :goto_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1a

    .line 1642
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1643
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "kg_multiple_lockscreen"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_11
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1646
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1b

    .line 1647
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3e

    move v0, v1

    :goto_12
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1650
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1c

    .line 1651
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1652
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "my_profile_enabled"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_13
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1653
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_40

    move v0, v1

    :goto_14
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1656
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1d

    .line 1657
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1660
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1e

    .line 1661
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1662
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "wake_up_lock_screen"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_41

    move v0, v1

    :goto_15
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1663
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_42

    move v0, v1

    :goto_16
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1666
    :cond_1e
    if-nez v3, :cond_1f

    .line 1667
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1f

    .line 1668
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1671
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_20

    .line 1672
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1673
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "lock_additional_info"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_43

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1679
    :cond_20
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1680
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1681
    :cond_21
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_24

    .line 1682
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-eq v0, v9, :cond_24

    .line 1683
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1684
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v3, v1, :cond_44

    .line 1686
    :goto_18
    const-string v3, "multiple_lock_screenswitch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1687
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_22

    .line 1688
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1689
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1690
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1693
    :cond_22
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1719
    :cond_23
    :goto_19
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1723
    :cond_24
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1725
    return-void

    :cond_25
    move v0, v2

    .line 1468
    goto/16 :goto_0

    :cond_26
    move v0, v2

    .line 1471
    goto/16 :goto_1

    .line 1476
    :cond_27
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_28
    move v0, v1

    .line 1495
    goto/16 :goto_3

    .line 1508
    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "kg_multiple_lockscreen"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2a

    move v3, v1

    .line 1510
    :goto_1a
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_8

    .line 1511
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1512
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2b

    move v3, v1

    :goto_1b
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_2a
    move v3, v2

    .line 1508
    goto :goto_1a

    :cond_2b
    move v3, v2

    .line 1512
    goto :goto_1b

    .line 1528
    :cond_2c
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_9

    .line 1529
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "lock_screen_shortcut"

    invoke-static {v3, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v1

    :goto_1c
    invoke-virtual {v7, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1530
    const-string v3, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1531
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2e

    move v3, v1

    :goto_1d
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_2d
    move v3, v2

    .line 1529
    goto :goto_1c

    :cond_2e
    move v3, v2

    .line 1531
    goto :goto_1d

    .line 1533
    :cond_2f
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_30

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_30

    move v3, v1

    :goto_1e
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_30
    move v3, v2

    goto :goto_1e

    .line 1544
    :cond_31
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1563
    :cond_32
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_33
    move v0, v2

    .line 1567
    goto/16 :goto_8

    :cond_34
    move v0, v2

    .line 1571
    goto/16 :goto_9

    :cond_35
    move v0, v2

    .line 1575
    goto/16 :goto_a

    :cond_36
    move v0, v2

    .line 1576
    goto/16 :goto_b

    :cond_37
    move v0, v2

    .line 1580
    goto/16 :goto_c

    :cond_38
    move v0, v2

    .line 1585
    goto/16 :goto_d

    .line 1601
    :cond_39
    iget v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    if-ne v0, v9, :cond_16

    .line 1606
    const-string v0, "LockScreenMenu"

    const-string v5, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v0, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_f

    .line 1632
    :cond_3a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "kg_multiple_lockscreen"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3b

    move v0, v1

    .line 1634
    :goto_1f
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_19

    .line 1635
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1636
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3c

    move v0, v1

    :goto_20
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_10

    :cond_3b
    move v0, v2

    .line 1632
    goto :goto_1f

    :cond_3c
    move v0, v2

    .line 1636
    goto :goto_20

    :cond_3d
    move v0, v2

    .line 1643
    goto/16 :goto_11

    :cond_3e
    move v0, v2

    .line 1647
    goto/16 :goto_12

    :cond_3f
    move v0, v2

    .line 1652
    goto/16 :goto_13

    :cond_40
    move v0, v2

    .line 1653
    goto/16 :goto_14

    :cond_41
    move v0, v2

    .line 1662
    goto/16 :goto_15

    :cond_42
    move v0, v2

    .line 1663
    goto/16 :goto_16

    :cond_43
    move v0, v2

    .line 1673
    goto/16 :goto_17

    :cond_44
    move v1, v2

    .line 1685
    goto/16 :goto_18

    .line 1694
    :cond_45
    const-string v3, "lock_screen_shortcut_menu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1695
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_46

    .line 1696
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1697
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1698
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1701
    :cond_46
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_19

    .line 1702
    :cond_47
    const-string v3, "lock_screen_myprofile_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1703
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_48

    .line 1704
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1705
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1706
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1709
    :cond_48
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_19

    .line 1710
    :cond_49
    const-string v3, "lock_screen_wakeup_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1711
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4a

    .line 1712
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1713
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1714
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1717
    :cond_4a
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_19

    :cond_4b
    move v3, v1

    goto/16 :goto_e
.end method

.method public showDeviceLockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2174
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2176
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2178
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2181
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2182
    const v2, 0x7f040139

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2183
    const v0, 0x7f0b033e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2184
    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2186
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2187
    const v0, 0x7f0905a0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2188
    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2191
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2192
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 1862
    const v0, 0x7f0901c7

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 1863
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 2145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2146
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2147
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2148
    return-void
.end method
