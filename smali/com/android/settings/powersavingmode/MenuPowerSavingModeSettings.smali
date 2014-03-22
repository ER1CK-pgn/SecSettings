.class public Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSavinge:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mBackgroundColor:Landroid/preference/CheckBoxPreference;

.field private mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

.field private mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

.field private mEnableSettings:Landroid/preference/ListPreference;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIsFromHelp:Z

.field private mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 100
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 103
    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 475
    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400be

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 482
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 485
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 486
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 489
    .end local v0           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 492
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 494
    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400bf

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 499
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 500
    .local v0, closeBtn:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 510
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 512
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 513
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 514
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 516
    .end local v0           #closeBtn:Landroid/widget/ImageView;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateUIPowerSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 343
    :cond_0
    const-string v1, "MenuPowerSavingModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez v0, :cond_2

    .line 345
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep1Dialog()V

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V

    goto :goto_0
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "value"

    .prologue
    .line 252
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 253
    .local v3, values:[Ljava/lang/CharSequence;
    const-string v2, ""

    .line 254
    .local v2, ret:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 255
    .local v1, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 256
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    move v1, v0

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 406
    .local v4, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_cpu_clock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, cpu:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_display"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 408
    .local v2, display:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_background_colour"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, back:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 412
    .local v3, haptic:I
    const-string v6, "power_saving_cpu"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    .line 413
    const/4 v1, 0x0

    .line 414
    :cond_0
    const-string v6, "power_saving_display"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_1

    .line 415
    const/4 v2, 0x0

    .line 416
    :cond_1
    const-string v6, "power_saving_background_color"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_2

    .line 417
    const/4 v0, 0x0

    .line 418
    :cond_2
    const-string v6, "power_saving_haptic"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_3

    .line 419
    const/4 v3, 0x0

    .line 421
    :cond_3
    const-string v6, "MenuPowerSavingModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cpu : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", back : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", haptic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 426
    .local v5, retVal:Z
    :cond_4
    return v5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 194
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 334
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 114
    const-string v4, "MenuPowerSavingModeSettings"

    const-string v7, "onCreate() "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 120
    const-string v4, "fromHelp"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 122
    const-string v4, "fromHelp"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 125
    :cond_0
    const-string v4, "MenuPowerSavingModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFromHelp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-nez v4, :cond_1

    .line 129
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.android.browser"

    invoke-static {v4, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    .line 134
    const v4, 0x7f07006f

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 138
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 139
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 141
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f0034

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 143
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 154
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    new-instance v4, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v7, v6}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 156
    const-string v4, "power_saving_cpu"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_cpu_clock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    const-string v4, "power_saving_display"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    .line 159
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_display"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    const-string v4, "power_saving_background_color"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_background_colour"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090d36

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 167
    :cond_3
    const-string v4, "enable_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    .line 168
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 170
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    if-eqz v4, :cond_8

    .line 183
    :goto_3
    const-string v4, "power_saving_haptic"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 184
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 185
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    :goto_5
    return-void

    :cond_5
    move v4, v6

    .line 157
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 159
    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 161
    goto :goto_2

    .line 179
    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "psm_background_colour"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    move v5, v6

    .line 184
    goto :goto_4

    .line 186
    :cond_a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_haptic_feedback"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 456
    const/4 v0, 0x1

    const v1, 0x7f091291

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 458
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 314
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 318
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 322
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 324
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 469
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 464
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "battery_conservation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 467
    const/4 v1, 0x1

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 270
    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0912b7

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    return-void

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, key:Ljava/lang/String;
    const-string v3, "enable_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 436
    .local v2, value:I
    const-string v3, "MenuPowerSavingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v3}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->changeAutoEnable()V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, entry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    if-ne v2, v7, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 449
    .end local v0           #entry:Ljava/lang/String;
    .end local v2           #value:I
    :cond_1
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 368
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    .line 370
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 371
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 372
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 373
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 380
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_1
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_cpu_clock"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 395
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 400
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    move v1, v3

    .line 371
    goto :goto_0

    :cond_4
    move v4, v3

    .line 381
    goto :goto_1

    .line 383
    :cond_5
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_display"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_4
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_4

    .line 386
    :cond_7
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_background_colour"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_5
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_5

    .line 389
    :cond_9
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_haptic_feedback"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_6
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v4, v3

    goto :goto_6

    .line 397
    :cond_b
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    const-string v2, "MenuPowerSavingModeSettings"

    const-string v5, "onResume() "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 218
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_background_colour"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_haptic_feedback"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    .line 228
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 229
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 230
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "psm_cpu_clock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 237
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "psm_display"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_haptic_feedback"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, curEnableValue:I
    const-string v2, "MenuPowerSavingModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curEnableValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, entry:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .end local v0           #curEnableValue:I
    .end local v1           #entry:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 236
    goto :goto_0

    :cond_3
    move v2, v4

    .line 237
    goto :goto_1

    :cond_4
    move v3, v4

    .line 238
    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 295
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 303
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 307
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 309
    :cond_2
    return-void
.end method
