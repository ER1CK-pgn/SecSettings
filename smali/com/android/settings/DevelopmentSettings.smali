.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/CheckBoxPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTerminal:Landroid/preference/CheckBoxPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mForceMsaa:Landroid/preference/CheckBoxPreference;

.field private mForceRtlLayout:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSearchStartMenu:Z

.field private mSearchTargetKey:Ljava/lang/String;

.field private mSearchTargetValue:I

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUnavailable:Z

.field private mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimation3DStyle:Landroid/preference/ListPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 258
    const-string v0, "restrictions_pin_set"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetKey:Ljava/lang/String;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetValue:I

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "prefKey"

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 447
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    return-object v0
.end method

.method private currentRuntimeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    const-string v0, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 923
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    :goto_0
    return v0

    .line 926
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 927
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1581
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1585
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1589
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1591
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 875
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 878
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 882
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 885
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 886
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 890
    goto :goto_0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 461
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1741
    :cond_0
    :goto_0
    return v1

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 507
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 509
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 713
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 714
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 716
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 718
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 722
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 723
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 724
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 726
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimation3DStylePref(Ljava/lang/Object;)V

    .line 728
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 729
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 730
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 731
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 732
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 734
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 832
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 522
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 524
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 525
    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 894
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 650
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 662
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v0, "adb_enabled"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 666
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.terminal"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 670
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v0, "bugreport_in_power_menu"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 672
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 674
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    const-string v0, "bluetooth_hci_log"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v3, "mock_location"

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 678
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    .line 679
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 680
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 681
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 682
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 683
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 684
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 685
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 686
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 687
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 688
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 691
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 692
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 693
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 696
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimation3DStyleOptions()V

    .line 698
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 699
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 701
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 702
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 703
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 704
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 705
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 706
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 707
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 710
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 662
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 666
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 670
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 672
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 674
    goto :goto_4

    :cond_7
    move v1, v2

    .line 676
    goto :goto_5
.end method

.method private updateAnimation3DStyleOptions()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimation3DStyle:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimation3DStyleView(Landroid/preference/ListPreference;)V

    .line 1237
    return-void
.end method

.method private updateAnimation3DStyleView(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1245
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ANIMATION_3D_STYLE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1247
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1248
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1249
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1250
    if-ne v1, v3, :cond_0

    .line 1251
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1252
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1260
    :goto_1
    return-void

    .line 1248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1257
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1258
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1229
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1230
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1231
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1232
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 1209
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1210
    .local v1, scale:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1211
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1213
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1214
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1215
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1216
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1217
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1218
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1226
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1214
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    .end local v2           #val:F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1223
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1224
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1322
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1323
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1324
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1325
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1326
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 1327
    if-eqz v0, :cond_0

    .line 1328
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1330
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1331
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1339
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1324
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1336
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1337
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 899
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 900
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 901
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 903
    .local v0, adbEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 904
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 905
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 915
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 901
    goto :goto_0

    .line 907
    .restart local v0       #adbEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 908
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 909
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 910
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 913
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1177
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1179
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1114
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    if-nez v0, :cond_0

    .line 1116
    const-string v0, ""

    .line 1119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1120
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1121
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1129
    :goto_1
    return-void

    .line 1120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1141
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 839
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 841
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 843
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 846
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 853
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a79

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 855
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 860
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 841
    goto :goto_0

    .line 849
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 850
    :catch_0
    move-exception v0

    .line 851
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a78

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 965
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 966
    if-eqz v2, :cond_0

    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 969
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 970
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 972
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 974
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 975
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 978
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 979
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 981
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 976
    goto :goto_0

    :cond_2
    move v0, v1

    .line 980
    goto :goto_1

    .line 984
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1150
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1152
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1024
    return-void
.end method

.method private updateHdcpValues()V
    .locals 7

    .prologue
    .line 784
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 785
    if-eqz v0, :cond_0

    .line 786
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 789
    const/4 v2, 0x1

    .line 790
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 791
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 796
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 797
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 800
    :cond_0
    return-void

    .line 790
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1203
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1205
    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1033
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1297
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    if-nez v0, :cond_0

    .line 1299
    const-string v0, ""

    .line 1302
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1303
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1304
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1312
    :goto_1
    return-void

    .line 1303
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1311
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    if-nez v0, :cond_0

    .line 1275
    const-string v0, ""

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1279
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1280
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1288
    :goto_1
    return-void

    .line 1279
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090a07

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 812
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090a06

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 948
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 950
    return-void
.end method

.method private updateRuntimeValue()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 765
    const-string v0, "select_runtime"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 766
    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->currentRuntimeValue()Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a007c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a007d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 771
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 772
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 777
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 778
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 779
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 781
    :cond_0
    return-void

    .line 771
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1357
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1359
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1105
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1094
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1066
    const-string v0, "debug.hwui.show_non_rect_clip"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-nez v0, :cond_0

    .line 1069
    const-string v0, "hide"

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1073
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1074
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1082
    :goto_1
    return-void

    .line 1073
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 958
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 960
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 939
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 940
    return-void

    .line 939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1041
    const-string v0, "debug.hwui.profile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    if-nez v0, :cond_0

    .line 1043
    const-string v0, ""

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1047
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1048
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1056
    :goto_1
    return-void

    .line 1047
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 863
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 865
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 866
    return-void

    .line 863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1163
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1166
    return-void
.end method

.method private writeAnimation3DStylePref(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ANIMATION_3D_STYLE"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1241
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimation3DStyle:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimation3DStyleView(Landroid/preference/ListPreference;)V

    .line 1242
    return-void

    .line 1239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 1264
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1265
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 1264
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1343
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1344
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1345
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 1343
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 815
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 816
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 817
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    return-void

    .line 817
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 1183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1187
    if-eqz v1, :cond_1

    .line 1188
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1192
    :goto_1
    return-void

    .line 1183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1132
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1135
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1136
    return-void

    .line 1132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1144
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1147
    return-void

    .line 1144
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 824
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1007
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1008
    if-eqz v1, :cond_1

    .line 1009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1010
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1011
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1012
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1014
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_1
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 1156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    const-string v2, "debug.force_rtl"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1160
    return-void

    .line 1156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1158
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1027
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1029
    return-void

    .line 1027
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1036
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1038
    return-void

    .line 1036
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1315
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1317
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1318
    return-void

    .line 1315
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1294
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 945
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1354
    return-void

    .line 1351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1108
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1111
    return-void

    .line 1108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1097
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1100
    return-void

    .line 1097
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1085
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1088
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1089
    return-void

    .line 1085
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 955
    return-void

    .line 953
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 990
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 991
    if-eqz v1, :cond_1

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 993
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 994
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 995
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 997
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 936
    :goto_1
    return-void

    .line 932
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1059
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1062
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1063
    return-void

    .line 1059
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 869
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    return-void

    .line 869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1169
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    :cond_0
    return-void

    .line 1170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method filterRuntimeOptions(Landroid/preference/Preference;)V
    .locals 11
    .parameter

    .prologue
    .line 737
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 738
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 740
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a007c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a007d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 742
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 743
    aget-object v6, v4, v1

    .line 744
    aget-object v7, v5, v1

    .line 745
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 746
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 751
    const/4 v1, 0x1

    if-gt v4, v1, :cond_2

    .line 753
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 758
    :goto_1
    return-void

    .line 755
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 756
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 471
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 473
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 474
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 476
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 478
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 479
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1389
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1390
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1391
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1392
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1393
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1363
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 1364
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 1365
    if-eqz p2, :cond_2

    .line 1366
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1367
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1368
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090859

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090858

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1375
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1378
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1380
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1381
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 1594
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1595
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1597
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1619
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1621
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1622
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1623
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1624
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1626
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 1636
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1637
    if-ne p2, v1, :cond_0

    .line 1639
    :try_start_0
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1640
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 1641
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    const-string v1, "DevelopmentSettings"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1646
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 1647
    if-ne p2, v1, :cond_4

    .line 1648
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1649
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1651
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1652
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1655
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1657
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isMockLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1659
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundProcessLimitAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1660
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1677
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 266
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 268
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 270
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-eqz v8, :cond_1

    .line 271
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    .line 272
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const v8, 0x7f070033

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 278
    const-string v8, "debug_debugging_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 282
    .local v1, debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 284
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_2

    .line 285
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 288
    :cond_2
    const-string v8, "enable_adb"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 289
    const-string v8, "clear_adb_keys"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 290
    const-string v8, "ro.adb.secure"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 291
    if-eqz v1, :cond_3

    .line 292
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    :cond_3
    const-string v8, "enable_terminal"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 296
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.terminal"

    invoke-static {v8, v9}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 297
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    iput-object v11, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 301
    :cond_4
    const-string v8, "bugreport"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 302
    const-string v8, "bugreport_in_power"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    .line 303
    const-string v8, "keep_screen_on"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 304
    const-string v8, "bt_hci_snoop_log"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v8, "allow_mock_location"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 306
    const-string v8, "local_backup_password"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 307
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 310
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 311
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 312
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 313
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 316
    :cond_5
    const-string v8, "debug_app"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 317
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v8, "wait_for_debugger"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 319
    const-string v8, "verify_apps_over_usb"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    .line 320
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v8

    if-nez v8, :cond_6

    .line 321
    if-eqz v1, :cond_b

    .line 322
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_6
    :goto_1
    const-string v8, "strict_mode"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 328
    const-string v8, "pointer_location"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 329
    const-string v8, "show_touches"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 330
    const-string v8, "show_screen_updates"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v8, "disable_overlays"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 332
    const-string v8, "show_cpu_usage"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 333
    const-string v8, "force_hw_ui"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 334
    const-string v8, "force_msaa"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    .line 335
    const-string v8, "track_frame_time"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 336
    const-string v8, "show_non_rect_clip"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 337
    const-string v8, "show_hw_screen_udpates"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 338
    const-string v8, "show_hw_layers_udpates"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    .line 339
    const-string v8, "debug_layout"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 340
    const-string v8, "force_rtl_layout_all_locales"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v8, "debug_hw_overdraw"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 342
    const-string v8, "wifi_display_certification"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    .line 343
    const-string v8, "window_animation_scale"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 344
    const-string v8, "transition_animation_scale"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 345
    const-string v8, "animator_duration_scale"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 346
    const-string v8, "overlay_display_devices"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 347
    const-string v8, "enable_opengl_traces"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 349
    const-string v8, "window_animation_3d_style"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimation3DStyle:Landroid/preference/ListPreference;

    .line 350
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, prodName:Ljava/lang/String;
    const-string v8, "debug_drawing_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 384
    .local v5, mCategory:Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimation3DStyle:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    const-string v8, "immediately_destroy_activities"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 390
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v8, "app_process_limit"

    invoke-direct {p0, v8}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 394
    const-string v8, "show_all_anrs"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 396
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v8, "select_runtime"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 400
    .local v7, selectRuntime:Landroid/preference/Preference;
    if-eqz v7, :cond_7

    .line 401
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->filterRuntimeOptions(Landroid/preference/Preference;)V

    .line 405
    :cond_7
    const-string v8, "hdcp_checking"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 406
    .local v3, hdcpChecking:Landroid/preference/Preference;
    if-eqz v3, :cond_8

    .line 407
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 411
    :cond_8
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_9

    .line 412
    const-string v8, "user"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 413
    const-string v8, "debug_debugging_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 414
    .local v2, debuggingCategory:Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 426
    .end local v2           #debuggingCategory:Landroid/preference/PreferenceCategory;
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 427
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 428
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 429
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "extra_from_search"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    .line 433
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    if-eqz v8, :cond_0

    .line 434
    const-string v8, "extra_second_fragment_bundle_key"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 435
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 436
    const-string v8, "extra_parent_preference_key"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetKey:Ljava/lang/String;

    .line 437
    const-string v8, "extra_setting_value"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetValue:I

    goto/16 :goto_0

    .line 324
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #hdcpChecking:Landroid/preference/Preference;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mCategory:Landroid/preference/PreferenceCategory;
    .end local v6           #prodName:Ljava/lang/String;
    .end local v7           #selectRuntime:Landroid/preference/Preference;
    :cond_b
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 431
    .restart local v3       #hdcpChecking:Landroid/preference/Preference;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #prodName:Ljava/lang/String;
    .restart local v7       #selectRuntime:Landroid/preference/Preference;
    :cond_c
    iput-boolean v10, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1699
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1700
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1701
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1684
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1685
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1688
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1695
    :cond_1
    :goto_0
    return-void

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1690
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1691
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1693
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1508
    const-string v2, "select_runtime"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1509
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v2

    .line 1510
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1512
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1513
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1514
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090850

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1516
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1526
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1532
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1575
    :cond_0
    :goto_0
    return v0

    .line 1535
    :cond_1
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1536
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 1538
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    goto :goto_0

    .line 1542
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimation3DStyle:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1543
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimation3DStylePref(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    .line 1575
    goto :goto_0

    .line 1547
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1548
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1550
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1551
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1553
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1554
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1556
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1557
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1559
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1560
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1562
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1563
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1565
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1566
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1568
    :cond_b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 1569
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1571
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1572
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1402
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    :goto_0
    return v3

    .line 1407
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1409
    iget v0, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetValue:I

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_1
    move-object v0, p2

    .line 1410
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1411
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1412
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 1419
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1421
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1422
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090856

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090855

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1428
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1409
    goto :goto_1

    .line 1430
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1432
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1433
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1434
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto/16 :goto_0

    .line 1436
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 1437
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1438
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090857

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1443
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 1444
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1445
    const-string v1, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_2

    .line 1448
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 1449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_3

    .line 1452
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 1453
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    :goto_4
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto :goto_4

    .line 1457
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 1458
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1459
    :cond_f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 1460
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    move v2, v3

    goto :goto_5

    .line 1463
    :cond_11
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 1464
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1465
    :cond_12
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 1466
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1467
    :cond_13
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 1468
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1469
    :cond_14
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 1470
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1471
    :cond_15
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 1472
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1473
    :cond_16
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 1474
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1475
    :cond_17
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 1476
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1477
    :cond_18
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1478
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1479
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 1480
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1481
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 1482
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1483
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 1484
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1485
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1486
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1487
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 1488
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1489
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1490
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1491
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 1492
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1493
    :cond_20
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 1494
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1495
    :cond_21
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 1496
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1497
    :cond_22
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 1498
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1500
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 529
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 531
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v2, :cond_1

    .line 533
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020004

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 534
    .local v8, emptyView:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 535
    if-eqz v8, :cond_0

    .line 536
    const v2, 0x7f090842

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 640
    .end local v8           #emptyView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isDeveloperModeAllowed(Z)Z

    move-result v9

    .line 543
    .local v9, isDeveloperModeAllowed:Z
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 544
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 547
    if-nez v9, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 549
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 550
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-lez v2, :cond_a

    .line 560
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 566
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v2, "development_settings_enabled"

    const/4 v4, 0x0

    invoke-static {v7, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 568
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 569
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 571
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_3

    .line 576
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 579
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 580
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 583
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 584
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isMockLocationEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 587
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundProcessLimitAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 588
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 605
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 608
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 613
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 616
    .local v10, open_item:Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 617
    .local v0, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 618
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 619
    .local v11, preferenceAdapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .line 620
    .local v3, position:I
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 621
    invoke-interface {v11, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    .line 622
    .local v6, check_item:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetKey:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 623
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 624
    iget v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchTargetValue:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    .line 625
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 633
    :cond_8
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mSearchStartMenu:Z

    .line 620
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 562
    .end local v0           #ps:Landroid/preference/PreferenceScreen;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v3           #position:I
    .end local v6           #check_item:Landroid/preference/Preference;
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v10           #open_item:Landroid/preference/Preference;
    .end local v11           #preferenceAdapter:Landroid/widget/ListAdapter;
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 566
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 627
    .restart local v0       #ps:Landroid/preference/PreferenceScreen;
    .restart local v1       #list:Landroid/widget/ListView;
    .restart local v3       #position:I
    .restart local v6       #check_item:Landroid/preference/Preference;
    .restart local v10       #open_item:Landroid/preference/Preference;
    .restart local v11       #preferenceAdapter:Landroid/widget/ListAdapter;
    :cond_c
    instance-of v2, v10, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_8

    instance-of v2, v10, Landroid/preference/SwitchPreference;

    if-nez v2, :cond_8

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 630
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_4
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 488
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 489
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 490
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 492
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 496
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 501
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 502
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 503
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 504
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1708
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 643
    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 644
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 645
    return-void
.end method
