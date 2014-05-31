.class public Lcom/android/settings/SecurityPolicySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecurityPolicySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

.field private mPrefNetwork:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "key"

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 148
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "value"

    .prologue
    .line 134
    iget-object v4, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 135
    .local v3, values:[Ljava/lang/CharSequence;
    const-string v2, ""

    .line 136
    .local v2, ret:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 137
    .local v1, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 138
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    move v1, v0

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 47
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 51
    :cond_0
    const v1, 0x7f0700a3

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    const-string v1, "auto_policy_update"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    .line 55
    const-string v1, "pref_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityPolicySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "pref_network"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecurityPolicySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, key:Ljava/lang/String;
    const-string v3, "pref_network"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, value:I
    const-string v3, "jjh"

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

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "use_wifi_only_db"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    iget-object v3, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityPolicySettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, entry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    .end local v0           #entry:Ljava/lang/String;
    .end local v2           #value:I
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "security_update_db"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 94
    .local v2, state:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "security_update_db"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object v3, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    .end local v2           #state:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    move v2, v4

    .line 92
    goto :goto_0

    .line 98
    .restart local v2       #state:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "security_update_db"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object v4, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 111
    .end local v2           #state:Z
    :cond_3
    const-string v3, "manual_updates"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.policydm.intent.action.PULL_RECEIVE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "security_update_db"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "use_wifi_only_db"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 73
    .local v0, curPrefNet:I
    :goto_1
    const-string v2, "jjh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curPrefNet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/SecurityPolicySettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, entry:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecurityPolicySettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 84
    return-void

    .line 69
    .end local v0           #curPrefNet:I
    .end local v1           #entry:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecurityPolicySettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 72
    goto :goto_1
.end method
