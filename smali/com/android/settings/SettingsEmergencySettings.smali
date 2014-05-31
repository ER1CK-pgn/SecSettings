.class public Lcom/android/settings/SettingsEmergencySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsEmergencySettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mMobilePreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/SettingsEmergencySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsEmergencySettings$1;-><init>(Lcom/android/settings/SettingsEmergencySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->addPreferencesFromResource(I)V

    .line 81
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 82
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 84
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->destroy()V

    .line 134
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 153
    const-string v6, "mobile_network_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_2

    .line 288
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 289
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 291
    .local v3, simState:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    if-eqz v3, :cond_0

    if-ne v3, v5, :cond_1

    .line 294
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f090ba9

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090baa

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v3           #simState:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v5

    .line 303
    .restart local v3       #simState:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v6, "KDI"

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 304
    .local v2, isKDI:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v1, intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isKDI:Ljava/lang/Boolean;
    .end local v3           #simState:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 117
    return-void
.end method
