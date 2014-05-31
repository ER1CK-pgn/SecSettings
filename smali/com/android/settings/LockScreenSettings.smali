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

    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 128
    iput v0, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 136
    iput-boolean v0, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 139
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 140
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 197
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 200
    :cond_0
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 204
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 207
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 213
    :cond_1
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 714
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 715
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 716
    .local v0, State:I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 718
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 536
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dualclock_menu_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_clock_size"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 540
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

    .line 541
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 548
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_3

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 559
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "unlock_text"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 561
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 562
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wake_up_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 564
    :cond_5
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_6

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 566
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091373

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "my_profile_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    .line 574
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    .line 581
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_e

    .line 582
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f09137e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 588
    :cond_8
    :goto_5
    return-void

    .end local v0           #mClockSizeValue:I
    :cond_9
    move v1, v3

    .line 536
    goto/16 :goto_0

    .restart local v0       #mClockSizeValue:I
    :cond_a
    move v1, v3

    .line 559
    goto :goto_1

    :cond_b
    move v1, v3

    .line 562
    goto :goto_2

    .line 569
    :cond_c
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091372

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 577
    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ca5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 584
    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f09137d

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 251
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

    .line 744
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "personal_message_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "multiple_widget_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 754
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 745
    goto :goto_0

    :cond_3
    move v1, v2

    .line 749
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 758
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 759
    const-string v0, "LockScreenSettings"

    const-string v1, "configuration changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    .line 149
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 158
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 164
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_option_category"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 167
    const-string v1, "personal_message_category"

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 170
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

    .line 171
    :cond_3
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    .end local v0           #padding:I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "clock_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f09137d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 189
    :cond_5
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->setHasOptionsMenu(Z)V

    .line 193
    :cond_6
    return-void

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091019

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f091367

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 592
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 595
    const-string v0, "LockScreenSettings"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
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

    .line 671
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, key:Ljava/lang/String;
    const-string v6, "dualclock_settings"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 673
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 674
    .local v3, value:I
    :goto_0
    const-string v6, "oversea"

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 675
    .local v0, isRoamingArea:Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 676
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f091015

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 678
    const v6, 0x7f09162a

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 679
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LockScreenSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/LockScreenSettings$3;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 710
    .end local v0           #isRoamingArea:Z
    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 673
    goto :goto_0

    .line 688
    .restart local v0       #isRoamingArea:Z
    .restart local v3       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 691
    .end local v0           #isRoamingArea:Z
    .end local v3           #value:I
    .restart local p2
    :cond_3
    const-string v6, "lock_screen_profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 692
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 693
    .restart local v3       #value:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "my_profile_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_4
    move v3, v5

    .line 692
    goto :goto_2

    .line 695
    .restart local p2
    :cond_5
    const-string v6, "lock_screen_short_or_camera_widget"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 697
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 700
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 701
    .restart local v3       #value:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kg_enable_camera_widget"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_7
    move v3, v5

    .line 700
    goto :goto_3

    .line 706
    .restart local p2
    :cond_8
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 602
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 603
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v9, :cond_1

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 604
    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v7, :cond_3

    move v0, v7

    .local v0, bValue:Z
    :goto_0
    move-object v1, p2

    .line 605
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 606
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 607
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 612
    .end local v0           #bValue:Z
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "unlock_text"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_1
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_3
    return v7

    :cond_3
    move v0, v8

    .line 604
    goto :goto_0

    :cond_4
    move v7, v8

    .line 613
    goto :goto_1

    .line 614
    :cond_5
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_up_lock_screen"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_6

    :goto_4
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_4

    .line 616
    :cond_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 617
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "com.android.settings.ShortCameraMenu"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 620
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 621
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 622
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "com.android.settings.ShortCameraMenu"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 624
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 625
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 626
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings.ClockMyprofileMenuTablet"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 629
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings.ClockMyprofileMenu"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 632
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 636
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_date_and_year"

    iget-object v11, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_c

    :goto_5
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    move v7, v8

    goto :goto_5

    .line 638
    :cond_d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 639
    const v7, 0x7f0901ca

    invoke-static {v7}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v6

    .line 640
    .local v6, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 641
    .end local v6           #newFragment:Landroid/app/DialogFragment;
    :cond_e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 642
    const-string v9, "oversea"

    const-string v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 643
    .local v4, isRoamingArea:Z
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 644
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    .local v5, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f091015

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 646
    const v9, 0x7f09162a

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 647
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 656
    .end local v4           #isRoamingArea:Z
    .end local v5           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_f
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 658
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.daemonapp.weather.setting"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "SETTING_MODE"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 661
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 662
    .local v2, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v8, "LockScreenSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.sec.android.daemonapp.weather.setting : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 664
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v8

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 265
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 266
    :cond_0
    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 268
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 272
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 273
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_2

    .line 274
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 278
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 279
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 289
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2f

    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "u0lte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 295
    :cond_2
    :goto_1
    const-string v9, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    .line 296
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_30

    .line 300
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 308
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 310
    const-string v9, "lock_screen_widget_options_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 311
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_4

    .line 312
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_31

    .line 313
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f09137e

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 319
    :cond_4
    :goto_3
    const-string v9, "lock_screen_profile"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    .line 320
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_5

    .line 321
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-nez v9, :cond_5

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_5
    const-string v9, "clock_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 327
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_32

    .line 328
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 333
    :goto_4
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "my_profile_enabled"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_33

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 335
    const-string v9, "lock_screen_date_and_year"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 336
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    .line 337
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "lock_screen_date_and_year"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_34

    move v9, v10

    :goto_6
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    :cond_6
    const-string v9, "clock_weather"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 343
    :cond_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_9
    const-string v9, "owner_info_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 354
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_35

    move v3, v10

    .line 355
    .local v3, mIsOwner:Z
    :goto_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_a

    if-nez v3, :cond_a

    .line 356
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0901d0

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 359
    :cond_a
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 360
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    const-string v9, "LockScreenSettings"

    const-string v12, " remove Dualclock menu"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_b
    const-string v9, "help_text"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 368
    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 370
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_c

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_d

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_e

    .line 380
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0913af

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    :cond_e
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 385
    .local v4, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_f

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 395
    const/4 v6, 0x1

    .line 397
    .local v6, svoice_state:Z
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 398
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_36

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_36

    move v6, v10

    .line 400
    :cond_10
    :goto_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_11

    .line 401
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    :cond_11
    if-eqz v4, :cond_12

    .line 403
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 406
    :cond_12
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_13

    .line 407
    const-string v9, "LockScreenSettings"

    const-string v12, "onResume(): isLockScreenEnabled = false"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->finish()V

    .line 412
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 415
    const/4 v5, 0x0

    .line 416
    .local v5, state:Z
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_37

    move v5, v10

    .line 421
    :cond_14
    :goto_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_38

    move v5, v10

    .line 425
    :cond_15
    :goto_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_16

    .line 426
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    :cond_16
    const-string v9, "lock_screen_favapp_or_camera_widget"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_17

    .line 431
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 435
    :cond_17
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_18

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_enable_camera_widget_type"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_39

    .line 437
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091373

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    :cond_18
    :goto_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 447
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_19

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    :cond_19
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1a

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1b

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1c

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_1d

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    :cond_1d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1e

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    :cond_1e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 472
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1f

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_20

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 478
    :cond_20
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_21

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_21
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_22

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 484
    :cond_22
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_23

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_23
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "clock_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 492
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_24

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_24
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_25

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_25
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_26

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    .end local v5           #state:Z
    :cond_26
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-nez v9, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 510
    :cond_27
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    iput-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 511
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 512
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    if-eqz v9, :cond_28

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_28

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 514
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v9, "extra_parent_preference_key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, targetKey:Ljava/lang/String;
    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v10, :cond_3a

    move v8, v10

    .line 516
    .local v8, value:Z
    :goto_c
    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 517
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_28

    .line 518
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 519
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 520
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 528
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v7           #targetKey:Ljava/lang/String;
    .end local v8           #value:Z
    :cond_28
    :goto_d
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 531
    :cond_29
    return-void

    .line 282
    .end local v3           #mIsOwner:Z
    .end local v4           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v6           #svoice_state:Z
    :cond_2a
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v13, "kg_enable_camera_widget"

    invoke-static {v9, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2b

    move v9, v10

    :goto_e
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2c

    move v1, v10

    .line 284
    .local v1, isMultiple:Z
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "is_secured_lock"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2d

    move v2, v10

    .line 285
    .local v2, isSecured:Z
    :goto_10
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2e

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_2e

    move v9, v10

    :goto_11
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_2b
    move v9, v11

    .line 282
    goto :goto_e

    :cond_2c
    move v1, v11

    .line 283
    goto :goto_f

    .restart local v1       #isMultiple:Z
    :cond_2d
    move v2, v11

    .line 284
    goto :goto_10

    .restart local v2       #isSecured:Z
    :cond_2e
    move v9, v11

    .line 285
    goto :goto_11

    .line 291
    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_2f
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 303
    :cond_30
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 315
    :cond_31
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f09137d

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 330
    :cond_32
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_33
    move v9, v11

    .line 333
    goto/16 :goto_5

    :cond_34
    move v9, v11

    .line 337
    goto/16 :goto_6

    :cond_35
    move v3, v11

    .line 354
    goto/16 :goto_7

    .restart local v3       #mIsOwner:Z
    .restart local v4       #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .restart local v6       #svoice_state:Z
    :cond_36
    move v6, v11

    .line 398
    goto/16 :goto_8

    .restart local v5       #state:Z
    :cond_37
    move v5, v11

    .line 417
    goto/16 :goto_9

    :cond_38
    move v5, v11

    .line 422
    goto/16 :goto_a

    .line 440
    :cond_39
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091372

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .end local v5           #state:Z
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v7       #targetKey:Ljava/lang/String;
    :cond_3a
    move v8, v11

    .line 515
    goto/16 :goto_c

    .line 522
    .restart local v8       #value:Z
    :cond_3b
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 523
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 524
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 525
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    goto/16 :goto_d
.end method
