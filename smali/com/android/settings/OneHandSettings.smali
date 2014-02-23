.class public Lcom/android/settings/OneHandSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAnyScreen:Landroid/preference/CheckBoxPreference;

.field private mCalculator:Landroid/preference/CheckBoxPreference;

.field private mDialer:Landroid/preference/CheckBoxPreference;

.field private mEnableLog:Z

.field private mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

.field private mHelp:Landroid/preference/PreferenceScreen;

.field private mOneHandOperation:Landroid/preference/PreferenceCategory;

.field private mOneHandTutorial:Landroid/preference/PreferenceCategory;

.field private mPattern:Landroid/preference/CheckBoxPreference;

.field private mSamsungKeypad:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method


# virtual methods
.method public areAllHandAdaptiveModeOptionsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "hand_adaptable_operation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "onehand_dialer_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "onehand_calculator_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 282
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "onehand_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 283
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->showGuideDialog()V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public createHandAdaptiveModeDeselectAllDialog()V
    .locals 4

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 462
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "deselect_hand_adaptive_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 463
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->showHandAdaptiveModeDeselectAllDialog()V

    .line 466
    :cond_0
    return-void
.end method

.method public createHandAdaptiveModeDisableDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 413
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "disable_hand_adaptive_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->showHandAdaptiveModeDisableDialog()V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hand_adaptable_operation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v2, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method public createHandAdaptiveModeEnableDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 364
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "enable_hand_adaptive_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->showHandAdaptiveModeEnableDialog()V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hand_adaptable_operation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    iget-object v2, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-boolean v3, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v3, :cond_0

    const-string v3, "OneHandSettings"

    const-string v4, "OneHandSettings onCreate() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v3, 0x7f070065

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->addPreferencesFromResource(I)V

    .line 90
    const-string v3, "category_onehand_operation"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mOneHandOperation:Landroid/preference/PreferenceCategory;

    .line 91
    const-string v3, "any_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    .line 92
    const-string v3, "dialer"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v3, "samsung_keypad"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    .line 94
    const-string v3, "calculator"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v3, "pattern"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v3, "category_tutorial"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mOneHandTutorial:Landroid/preference/PreferenceCategory;

    .line 97
    const-string v3, "onehand_help"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mHelp:Landroid/preference/PreferenceScreen;

    .line 99
    const-string v3, "hand_adaptive_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    .line 100
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v3, :cond_3

    const-string v3, "OneHandSettings"

    const-string v4, "OneHandSettings onCreate() end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iget-boolean v3, p0, Lcom/android/settings/OneHandSettings;->mOpenDetailMenu:Z

    if-eqz v3, :cond_4

    .line 132
    sget v3, Lcom/android/settings/OneHandSettings;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/OneHandSettings;->mSettingValue:I

    if-ne v3, v2, :cond_5

    .line 136
    .local v2, value:Z
    :goto_0
    const-string v3, "hand_adaptive_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/OneHandSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 148
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_4
    return-void

    .line 135
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 178
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 326
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 329
    .local v1, value:I
    :goto_0
    const-string v4, "hand_adaptive_mode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    if-ne v1, v2, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_dialer_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "onehand_samsungkeypad_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "onehand_calculator_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "onehand_pattern_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->showHandAdaptiveModeInfoDialog()V

    .line 346
    :cond_0
    :goto_1
    return v2

    .end local v1           #value:I
    :cond_1
    move v1, v3

    .line 327
    goto :goto_0

    .line 340
    .restart local v1       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->createHandAdaptiveModeEnableDialog()V

    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->createHandAdaptiveModeDisableDialog()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    const-string v3, "OneHandSettings"

    const-string v4, "mAnyScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 188
    .local v1, magnificationEnabled:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->createGuideDialog()V

    .line 198
    .end local v1           #magnificationEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 200
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v3, Lcom/android/settings/OneHandSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandSettings$1;-><init>(Lcom/android/settings/OneHandSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    .end local v0           #mHandler:Landroid/os/Handler;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->areAllHandAdaptiveModeOptionsDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hand_adaptable_operation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->createHandAdaptiveModeDeselectAllDialog()V

    .line 245
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v2

    .line 186
    goto :goto_0

    .line 193
    .restart local v1       #magnificationEnabled:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->createGuideDialog()V

    goto :goto_1

    .line 196
    .end local v1           #magnificationEnabled:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 205
    :cond_5
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    const-string v3, "OneHandSettings"

    const-string v4, "mDialer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 210
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 214
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const-string v3, "OneHandSettings"

    const-string v4, "mSamsungKeypad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 219
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 222
    :cond_9
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 223
    const-string v3, "OneHandSettings"

    const-string v4, "mCalculator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 227
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 229
    :cond_b
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v3, "OneHandSettings"

    const-string v4, "mPattern"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 234
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandSettings"

    const-string v3, "OneHandSettings onResume() start"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "any_screen_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mHandAdaptiveMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hand_adaptable_operation"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_2

    const-string v0, "OneHandSettings"

    const-string v1, "OneHandSettings onResume() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 155
    goto :goto_0

    :cond_4
    move v0, v2

    .line 158
    goto :goto_1

    :cond_5
    move v0, v2

    .line 160
    goto :goto_2

    :cond_6
    move v0, v2

    .line 164
    goto :goto_3

    :cond_7
    move v0, v2

    .line 167
    goto :goto_4

    :cond_8
    move v1, v2

    .line 169
    goto :goto_5
.end method

.method public showGuideDialog()V
    .locals 8

    .prologue
    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 296
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 298
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/OneHandSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 299
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040119

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, layout:Landroid/view/View;
    const v6, 0x7f0b0138

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 302
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 303
    const v6, 0x7f091113

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 305
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/OneHandSettings$5;

    invoke-direct {v7, p0, v1, v5}, Lcom/android/settings/OneHandSettings$5;-><init>(Lcom/android/settings/OneHandSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    new-instance v6, Lcom/android/settings/OneHandSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/OneHandSettings$6;-><init>(Lcom/android/settings/OneHandSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 323
    return-void
.end method

.method public showHandAdaptiveModeDeselectAllDialog()V
    .locals 9

    .prologue
    .line 470
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 473
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 475
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 476
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040116

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 477
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0b0138

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 479
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v7, 0x7f0b0316

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 480
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f09112a

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 483
    const v7, 0x7f091123

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 485
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/OneHandSettings$11;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/OneHandSettings$11;-><init>(Lcom/android/settings/OneHandSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    new-instance v7, Lcom/android/settings/OneHandSettings$12;

    invoke-direct {v7, p0}, Lcom/android/settings/OneHandSettings$12;-><init>(Lcom/android/settings/OneHandSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 498
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 499
    return-void
.end method

.method public showHandAdaptiveModeDisableDialog()V
    .locals 9

    .prologue
    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 427
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 429
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 430
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040116

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 431
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0b0138

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 433
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v7, 0x7f0b0316

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 434
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f091129

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 437
    const v7, 0x7f091123

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 439
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/OneHandSettings$9;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/OneHandSettings$9;-><init>(Lcom/android/settings/OneHandSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    new-instance v7, Lcom/android/settings/OneHandSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/OneHandSettings$10;-><init>(Lcom/android/settings/OneHandSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    return-void
.end method

.method public showHandAdaptiveModeEnableDialog()V
    .locals 9

    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 378
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 380
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 381
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040116

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 382
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0b0138

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 384
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v7, 0x7f0b0316

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 385
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f091128

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 388
    const v7, 0x7f091123

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 390
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/OneHandSettings$7;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/OneHandSettings$7;-><init>(Lcom/android/settings/OneHandSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    new-instance v7, Lcom/android/settings/OneHandSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/OneHandSettings$8;-><init>(Lcom/android/settings/OneHandSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 408
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 409
    return-void
.end method

.method public showHandAdaptiveModeInfoDialog()V
    .locals 3

    .prologue
    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f091123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 505
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 506
    const v1, 0x7f090d18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 507
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/OneHandSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/OneHandSettings$13;-><init>(Lcom/android/settings/OneHandSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 516
    return-void
.end method
