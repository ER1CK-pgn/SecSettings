.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isMyprofile:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mClockMyprofile:Landroid/preference/PreferenceScreen;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockWeather:Landroid/preference/PreferenceScreen;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditClock:Landroid/preference/PreferenceScreen;

.field private mFavappCameraWidget:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyprofile:Landroid/preference/PreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mPersonalmessage:Landroid/preference/Preference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSearchMenuOpen:Z

.field private mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

.field private mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

.field private option:Ljava/lang/String;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    iput v0, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 131
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 132
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 189
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    :cond_0
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 199
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 205
    :cond_1
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 697
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 698
    .local v0, State:I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 528
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dualclock_menu_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_clock_size"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, mClockSizeValue:I
    const-string v1, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClockSizeValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 540
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_3

    .line 542
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 545
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 546
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 551
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "unlock_text"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 554
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wake_up_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 556
    :cond_5
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_6

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 558
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091321

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 564
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "my_profile_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    .line 566
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090fde

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    .line 573
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_e

    .line 574
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f09132c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 580
    :cond_8
    :goto_5
    return-void

    .end local v0           #mClockSizeValue:I
    :cond_9
    move v1, v3

    .line 528
    goto/16 :goto_0

    .restart local v0       #mClockSizeValue:I
    :cond_a
    move v1, v3

    .line 551
    goto :goto_1

    :cond_b
    move v1, v3

    .line 554
    goto :goto_2

    .line 561
    :cond_c
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091320

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 569
    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c6d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 576
    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f09132b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "personal_message_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "multiple_widget_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 736
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 727
    goto :goto_0

    :cond_3
    move v1, v2

    .line 731
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 740
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 741
    const-string v0, "LockScreenSettings"

    const-string v1, "configuration changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    .line 141
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 150
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 156
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_option_category"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 159
    const-string v1, "personal_message_category"

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    :cond_3
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 165
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    .end local v0           #padding:I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "clock_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f09132b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 181
    :cond_5
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 185
    :cond_6
    return-void

    .line 176
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090fde

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 178
    :cond_8
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091315

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 585
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 587
    const-string v0, "LockScreenSettings"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 653
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, key:Ljava/lang/String;
    const-string v6, "dualclock_settings"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 655
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 656
    .local v3, value:I
    :goto_0
    const-string v6, "oversea"

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 657
    .local v0, isRoamingArea:Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f090fda

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 660
    const v6, 0x7f0915c9

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 661
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LockScreenSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/LockScreenSettings$3;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 668
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 692
    .end local v0           #isRoamingArea:Z
    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 655
    goto :goto_0

    .line 670
    .restart local v0       #isRoamingArea:Z
    .restart local v3       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 673
    .end local v0           #isRoamingArea:Z
    .end local v3           #value:I
    .restart local p2
    :cond_3
    const-string v6, "lock_screen_profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 674
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 675
    .restart local v3       #value:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "my_profile_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_4
    move v3, v5

    .line 674
    goto :goto_2

    .line 677
    .restart local p2
    :cond_5
    const-string v6, "lock_screen_short_or_camera_widget"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 679
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 682
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 683
    .restart local v3       #value:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kg_enable_camera_widget"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_7
    move v3, v5

    .line 682
    goto :goto_3

    .line 688
    .restart local p2
    :cond_8
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 594
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    :cond_0
    iget-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v8, :cond_1

    sget v8, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 596
    sget v8, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v8, v6, :cond_3

    move v0, v6

    .local v0, bValue:Z
    :goto_0
    move-object v1, p2

    .line 597
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 598
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 599
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 604
    .end local v0           #bValue:Z
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "unlock_text"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_1
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_3
    return v6

    :cond_3
    move v0, v7

    .line 596
    goto :goto_0

    :cond_4
    move v6, v7

    .line 605
    goto :goto_1

    .line 606
    :cond_5
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wake_up_lock_screen"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_4

    .line 608
    :cond_7
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 609
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 612
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 613
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 614
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 616
    .end local v2           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 617
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 618
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.ClockMyprofileMenuTablet"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 621
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.ClockMyprofileMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 624
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 628
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_date_and_year"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    move v6, v7

    goto :goto_5

    .line 630
    :cond_d
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 631
    const v6, 0x7f0901c7

    invoke-static {v6}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v5

    .line 632
    .local v5, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 633
    .end local v5           #newFragment:Landroid/app/DialogFragment;
    :cond_e
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 634
    const-string v8, "oversea"

    const-string v9, "ril.currentplmn"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 635
    .local v3, isRoamingArea:Z
    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 636
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    .local v4, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f090fda

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 638
    const v8, 0x7f0915c9

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 639
    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v9, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 257
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 258
    :cond_0
    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 260
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 264
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 265
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_2

    .line 266
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_28

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v9

    if-nez v9, :cond_28

    .line 270
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 281
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "u0lte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 287
    :cond_2
    :goto_1
    const-string v9, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    .line 288
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_2e

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2e

    .line 292
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 302
    const-string v9, "lock_screen_widget_options_category"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 303
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_4

    .line 304
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_2f

    .line 305
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f09132c

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 311
    :cond_4
    :goto_3
    const-string v9, "lock_screen_profile"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    .line 312
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_5

    .line 313
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-nez v9, :cond_5

    .line 314
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    :cond_5
    const-string v9, "clock_size"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 319
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_30

    .line 320
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    :goto_4
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "my_profile_enabled"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_31

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    const-string v9, "lock_screen_date_and_year"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 328
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    .line 329
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "lock_screen_date_and_year"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_32

    move v9, v10

    :goto_6
    invoke-virtual {v12, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    :cond_6
    const-string v9, "clock_weather"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    .line 340
    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_7

    .line 341
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_7
    const-string v9, "owner_info_settings"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 346
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_33

    move v3, v10

    .line 347
    .local v3, mIsOwner:Z
    :goto_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    if-nez v3, :cond_8

    .line 348
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0901cd

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 351
    :cond_8
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 352
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 355
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    const-string v9, "LockScreenSettings"

    const-string v12, " remove Dualclock menu"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_9
    const-string v9, "help_text"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 360
    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 362
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_a

    .line 363
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 367
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    :cond_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_c

    .line 372
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09135d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    :cond_c
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 377
    .local v4, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_d

    .line 378
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 387
    const/4 v6, 0x1

    .line 389
    .local v6, svoice_state:Z
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 390
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_34

    move v6, v10

    .line 392
    :cond_e
    :goto_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_f

    .line 393
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 394
    :cond_f
    if-eqz v4, :cond_10

    .line 395
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 398
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_11

    .line 399
    const-string v9, "LockScreenSettings"

    const-string v12, "onResume(): isLockScreenEnabled = false"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 404
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 407
    const/4 v5, 0x0

    .line 408
    .local v5, state:Z
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_35

    move v5, v10

    .line 413
    :cond_12
    :goto_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_36

    move v5, v10

    .line 417
    :cond_13
    :goto_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_14

    .line 418
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 421
    :cond_14
    const-string v9, "lock_screen_favapp_or_camera_widget"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_15

    .line 423
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    :cond_15
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_16

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_enable_camera_widget_type"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_37

    .line 429
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091321

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    :cond_16
    :goto_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 439
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_17

    .line 440
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    :cond_17
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_18

    .line 443
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_18
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_19

    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_19
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1a

    .line 449
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 451
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_1b

    .line 452
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1c

    .line 455
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 464
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1d

    .line 465
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_1d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1e

    .line 468
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    :cond_1e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1f

    .line 471
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_20

    .line 474
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_20
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_21

    .line 477
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_21
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "clock_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 484
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_22

    .line 485
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    :cond_22
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_23

    .line 488
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_23
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_24

    .line 491
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 501
    .end local v5           #state:Z
    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 502
    :cond_25
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    iput-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 503
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 504
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    if-eqz v9, :cond_26

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_26

    .line 505
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 506
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v9, "extra_parent_preference_key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, targetKey:Ljava/lang/String;
    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v10, :cond_38

    move v8, v10

    .line 508
    .local v8, value:Z
    :goto_c
    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 509
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_26

    .line 510
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 511
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 512
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 520
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v7           #targetKey:Ljava/lang/String;
    .end local v8           #value:Z
    :cond_26
    :goto_d
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 523
    :cond_27
    return-void

    .line 274
    .end local v3           #mIsOwner:Z
    .end local v4           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v6           #svoice_state:Z
    :cond_28
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v13, "kg_enable_camera_widget"

    invoke-static {v9, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_29

    move v9, v10

    :goto_e
    invoke-virtual {v12, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2a

    move v1, v10

    .line 276
    .local v1, isMultiple:Z
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "is_secured_lock"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2b

    move v2, v10

    .line 277
    .local v2, isSecured:Z
    :goto_10
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2c

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_2c

    move v9, v10

    :goto_11
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_29
    move v9, v11

    .line 274
    goto :goto_e

    :cond_2a
    move v1, v11

    .line 275
    goto :goto_f

    .restart local v1       #isMultiple:Z
    :cond_2b
    move v2, v11

    .line 276
    goto :goto_10

    .restart local v2       #isSecured:Z
    :cond_2c
    move v9, v11

    .line 277
    goto :goto_11

    .line 283
    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_2d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 295
    :cond_2e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 307
    :cond_2f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f09132b

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3

    .line 322
    :cond_30
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_31
    move v9, v11

    .line 325
    goto/16 :goto_5

    :cond_32
    move v9, v11

    .line 329
    goto/16 :goto_6

    :cond_33
    move v3, v11

    .line 346
    goto/16 :goto_7

    .restart local v3       #mIsOwner:Z
    .restart local v4       #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .restart local v6       #svoice_state:Z
    :cond_34
    move v6, v11

    .line 390
    goto/16 :goto_8

    .restart local v5       #state:Z
    :cond_35
    move v5, v11

    .line 409
    goto/16 :goto_9

    :cond_36
    move v5, v11

    .line 414
    goto/16 :goto_a

    .line 432
    :cond_37
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091320

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .end local v5           #state:Z
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v7       #targetKey:Ljava/lang/String;
    :cond_38
    move v8, v11

    .line 507
    goto/16 :goto_c

    .line 514
    .restart local v8       #value:Z
    :cond_39
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 515
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 516
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 517
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    goto/16 :goto_d
.end method
