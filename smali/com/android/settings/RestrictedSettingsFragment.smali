.class public Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# instance fields
.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mProtectedByRestictionsPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictionKey:Ljava/lang/String;

.field private mResumeActionBundle:Landroid/os/Bundle;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "restrictionKey"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    .line 71
    new-instance v0, Lcom/android/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedSettingsFragment$1;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/RestrictedSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RestrictedSettingsFragment;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Landroid/preference/Preference;)V

    return-void
.end method

.method private ensurePin(Landroid/preference/Preference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 179
    iget-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 181
    .local v1, um:Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v2, :cond_1

    .line 182
    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    const-string v3, "pref"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    const-string v3, "isChecked"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, requestPin:Landroid/content/Intent;
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 197
    .end local v0           #requestPin:Landroid/content/Intent;
    .end local v1           #um:Landroid/os/UserManager;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 198
    return-void
.end method


# virtual methods
.method ensurePinRestrictedPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "restrictions_pin_set"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->restrictionsPinCheck(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRestrictedAndNotPinProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "restrictions_pin_set"

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 142
    const/16 v5, 0x3015

    if-ne p1, v5, :cond_4

    .line 143
    iget-object v4, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 144
    .local v4, resumeActionBundle:Landroid/os/Bundle;
    iput-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 145
    iput-boolean v6, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 146
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 147
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 148
    if-nez v4, :cond_2

    .line 150
    .local v3, prefKey:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/settings/RestrictedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 152
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 155
    instance-of v5, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    const-string v5, "isChecked"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const-string v5, "isChecked"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, isChecked:Z
    move-object v5, v1

    .line 159
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    .end local v0           #isChecked:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 163
    .local v2, prefIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #prefIntent:Landroid/content/Intent;
    .end local v3           #prefKey:Ljava/lang/String;
    .end local v4           #resumeActionBundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 148
    .restart local v4       #resumeActionBundle:Landroid/os/Bundle;
    :cond_2
    const-string v5, "pref"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->finishFragment()V

    goto :goto_1

    .line 175
    .end local v4           #resumeActionBundle:Landroid/os/Bundle;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "chsc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 101
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 102
    const-string v0, "rsmb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 104
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Landroid/preference/Preference;)V

    .line 129
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void

    .line 127
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "rsmb"

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    :cond_1
    return-void
.end method

.method protected protectByRestrictions(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    return-void
.end method

.method protected protectByRestrictions(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 265
    .local v0, pref:Landroid/preference/Preference;
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 266
    return-void
.end method

.method protected restrictionsPinCheck(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "restrictionsKey"
    .parameter "preference"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Landroid/preference/Preference;)V

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldBePinProtected(Ljava/lang/String;)Z
    .locals 4
    .parameter "restrictionKey"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return v2

    .line 237
    :cond_0
    const-string v3, "restrictions_pin_set"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    .line 239
    .local v0, restricted:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    .end local v0           #restricted:Z
    :cond_2
    move v0, v2

    .line 237
    goto :goto_1

    .restart local v0       #restricted:Z
    :cond_3
    move v1, v2

    .line 239
    goto :goto_2
.end method
