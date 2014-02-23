.class public Lcom/android/settings/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 161
    const-string v3, "key_pen_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    .line 162
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    const-string v3, "key_pen_information_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 166
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    .line 169
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 172
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v3, "key_pen_icon_label"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    .line 175
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 178
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string v3, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 189
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_view_master_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 195
    .local v2, value:Z
    :goto_0
    const-string v3, "key_pen_pointer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 217
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_0
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 194
    goto :goto_0

    .line 198
    .restart local v2       #value:Z
    :cond_2
    const-string v3, "key_pen_information_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 200
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_3
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_4
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_5
    const-string v3, "key_pen_icon_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 209
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_6
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    const-string v8, "pen_hovering_information_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, inforPreview:I
    const-string v8, "pen_hovering_progress_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 223
    .local v3, progressPreview:I
    const-string v8, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 224
    .local v5, speedDialPreview:I
    const-string v8, "pen_hovering_icon_label"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, iconLabel:I
    const-string v8, "pen_hovering_list_scroll"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, listScroll:I
    const-string v8, "pen_hovering_sound"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 232
    .local v4, soundHaptic:I
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private showAirViewDialog(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 241
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e65

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e39

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 254
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettingsMenu$3;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 263
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    const-string v0, "PenAirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->addPreferencesFromResource(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->initializeAllPreferences()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 268
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 270
    .local v2, value:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_pointer"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    .end local p2
    :cond_0
    :goto_1
    return v4

    .end local v2           #value:I
    .restart local p2
    :cond_1
    move v2, v5

    .line 268
    goto :goto_0

    .line 272
    .restart local v2       #value:I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "air_button_onoff"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v4

    .line 275
    .local v0, airButtonState:Z
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 277
    .local v1, isChecked:Z
    if-nez v1, :cond_4

    if-ne v0, v4, :cond_4

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V

    goto :goto_1

    .end local v0           #airButtonState:Z
    .end local v1           #isChecked:Z
    .restart local p2
    :cond_3
    move v0, v5

    .line 273
    goto :goto_2

    .line 280
    .end local p2
    .restart local v0       #airButtonState:Z
    .restart local v1       #isChecked:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 282
    .end local v0           #airButtonState:Z
    .end local v1           #isChecked:Z
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_6

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_progress_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 284
    :cond_6
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_7

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 286
    :cond_7
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_8

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_icon_label"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 288
    :cond_8
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    const-string v4, "PenAirViewSettings"

    const-string v5, "onPreferenceTreeClick() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 142
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 143
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 144
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 145
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_sound"

    iget-object v6, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    .line 143
    goto :goto_0

    :cond_3
    move v2, v3

    .line 153
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "PenAirViewSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updateState()V

    .line 113
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 119
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 297
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    return-void

    :cond_0
    move v0, v2

    .line 295
    goto :goto_0

    :cond_1
    move v0, v2

    .line 297
    goto :goto_1

    :cond_2
    move v0, v2

    .line 299
    goto :goto_2

    :cond_3
    move v0, v2

    .line 301
    goto :goto_3

    :cond_4
    move v0, v2

    .line 303
    goto :goto_4

    :cond_5
    move v0, v2

    .line 305
    goto :goto_5

    :cond_6
    move v1, v2

    .line 307
    goto :goto_6
.end method
