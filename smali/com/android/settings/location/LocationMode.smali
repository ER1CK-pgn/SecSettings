.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

.field private mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

.field private mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 67
    :cond_0
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationMode;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 70
    const-string v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    .line 71
    const-string v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    .line 72
    const-string v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    .line 73
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->refreshLocationMode()V

    .line 78
    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3
    .parameter "activated"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 239
    const v0, 0x7f090c51

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 10
    .parameter "mode"
    .parameter "restricted"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    move v0, v5

    .line 189
    .local v0, enabled:Z
    :goto_1
    const/4 v1, 0x0

    .line 190
    .local v1, isGpsBlocked:Z
    const/4 v3, 0x0

    .line 191
    .local v3, isNetworkBlocked:Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 192
    .local v2, isGpsEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 194
    .local v4, isNetworkEnabled:Z
    iget-object v7, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    if-eqz v7, :cond_0

    .line 195
    iget-object v7, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    const-string v8, "gps"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 196
    iget-object v7, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    const-string v8, "network"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v3

    .line 197
    const-string v7, "LocationMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isGpsBlocked("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") isGpsEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") isNetworkBlocked("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") isNetworkEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 202
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 203
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_1

    :cond_1
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 204
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_2

    :cond_2
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 235
    :goto_2
    return-void

    .line 172
    .end local v0           #enabled:Z
    .end local v1           #isGpsBlocked:Z
    .end local v2           #isGpsEnabled:Z
    .end local v3           #isNetworkBlocked:Z
    .end local v4           #isNetworkEnabled:Z
    :pswitch_0
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto/16 :goto_0

    .line 175
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto/16 :goto_0

    .line 178
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto/16 :goto_0

    .line 181
    :pswitch_3
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 187
    goto/16 :goto_1

    .line 206
    .restart local v0       #enabled:Z
    .restart local v1       #isGpsBlocked:Z
    .restart local v2       #isGpsEnabled:Z
    .restart local v3       #isNetworkBlocked:Z
    .restart local v4       #isNetworkEnabled:Z
    :cond_4
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    .line 207
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_5

    :cond_5
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 208
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_6

    :cond_6
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 209
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    .line 211
    :cond_7
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    .line 212
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 213
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_8

    :cond_8
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 214
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    .line 216
    :cond_9
    if-nez v1, :cond_b

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 217
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 219
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_a

    :cond_a
    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    .line 221
    :cond_b
    if-eqz v1, :cond_e

    if-nez v2, :cond_e

    .line 222
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_c

    :cond_c
    invoke-virtual {v7, v6}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 223
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v7, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 224
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_d
    move v5, v6

    goto :goto_3

    .line 227
    :cond_e
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 228
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 229
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 60
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3
    .parameter "emiter"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 105
    const/4 v0, 0x3

    .line 157
    :cond_0
    :goto_0
    const-string v1, "USC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    iget v1, p0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    if-eq v1, v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/location/LocationMode;->showUSCLocationConsentDialog(Landroid/content/Context;I)V

    .line 165
    :goto_1
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    .line 166
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 130
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationMode;->setLocationMode(I)V

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationMode;->setLocationMode(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 55
    return-void
.end method
