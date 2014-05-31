.class public Lcom/android/settings/PenAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettings.java"


# instance fields
.field private mAirButtonDisablePopup:Landroid/app/AlertDialog;

.field private mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    const-string v0, "key_pen_pointer"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    const-string v0, "key_pen_information_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    const-string v0, "key_pen_progress_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    .line 189
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    const-string v0, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    .line 193
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    const-string v0, "key_pen_icon_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    .line 197
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    const-string v0, "key_pen_list_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    .line 200
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v0, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 183
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 186
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 189
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 193
    goto :goto_3

    :cond_5
    move v0, v2

    .line 197
    goto :goto_4

    :cond_6
    move v0, v2

    .line 200
    goto :goto_5

    :cond_7
    move v1, v2

    .line 204
    goto :goto_6
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 219
    const-string v9, "pen_hovering_pointer"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, pointer:I
    const-string v9, "pen_hovering_information_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, inforPreview:I
    const-string v9, "pen_hovering_progress_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 222
    .local v4, progressPreview:I
    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 223
    .local v6, speedDialPreview:I
    const-string v9, "pen_hovering_icon_label"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, iconLabel:I
    const-string v9, "pen_hovering_list_scroll"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 225
    .local v2, listScroll:I
    const-string v9, "pen_hovering_sound"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 231
    .local v5, soundHaptic:I
    or-int v9, v3, v1

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    or-int/2addr v9, v0

    or-int/2addr v9, v2

    or-int/2addr v9, v5

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private showAirButtonDisableDialog()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 242
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fb1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$2;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenAirViewSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$1;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 257
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettings$3;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 266
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 128
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

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->initializeAllPreferences()V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090f9d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    const-string v6, "PenAirViewSettings"

    const-string v7, "onPreferenceTreeClick() "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    .line 137
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 138
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    if-ne v6, v4, :cond_3

    move v3, v4

    .local v3, value:Z
    :goto_0
    move-object v1, p2

    .line 139
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 140
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v3           #value:Z
    :cond_1
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_3
    move v3, v5

    .line 138
    goto :goto_0

    :cond_4
    move v4, v5

    .line 148
    goto :goto_1

    .line 150
    :cond_5
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    move v0, v4

    .line 153
    .local v0, airButtonState:Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 155
    .local v2, isChecked:Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    if-ne v0, v4, :cond_7

    .line 156
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->showAirButtonDisableDialog()V

    goto :goto_2

    .end local v0           #airButtonState:Z
    .end local v2           #isChecked:Z
    :cond_6
    move v0, v5

    .line 151
    goto :goto_3

    .line 158
    .restart local v0       #airButtonState:Z
    .restart local v2       #isChecked:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_4

    .line 161
    .end local v0           #airButtonState:Z
    .end local v2           #isChecked:Z
    :cond_9
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_progress_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_5

    .line 164
    :cond_b
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_speed_dial_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_c

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_c
    move v4, v5

    goto :goto_6

    .line 167
    :cond_d
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_icon_label"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    move v4, v5

    goto :goto_7

    .line 170
    :cond_f
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_list_scroll"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_10

    :goto_8
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    move v4, v5

    goto :goto_8

    .line 173
    :cond_11
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_12

    :goto_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    move v4, v5

    goto :goto_9
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "PenAirViewSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 114
    return-void
.end method
