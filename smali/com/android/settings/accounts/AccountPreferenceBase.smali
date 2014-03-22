.class Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 118
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFacebookSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 7
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    sget-object v5, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 261
    .local v0, appAccount:[Landroid/accounts/Account;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 263
    .local v3, sns3Account:[Landroid/accounts/Account;
    array-length v4, v0

    if-lez v4, :cond_0

    array-length v4, v3

    if-nez v4, :cond_0

    .line 264
    const-string v4, "AccountSettings"

    const-string v5, "Facebook SSO was Failed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 267
    .local v1, facebookSSORetry:Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.sns3"

    const-string v6, "com.sec.android.app.sns3.auth.sp.facebook.SnsAccountFbAuthSSOActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    const-string v4, "facebookSSORetry"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 270
    const v4, 0x7f0913cc

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    const v4, 0x7f0913cd

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 275
    .end local v1           #facebookSSORetry:Landroid/preference/PreferenceScreen;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 155
    const-string v3, "com.sec.android.sCloudBackupApp"

    .line 158
    .local v3, samsungbackupPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 159
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 161
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Backup is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 164
    .local v2, samsungBackup:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungbackup"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 165
    const v4, 0x7f0912cf

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceBase$2;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$2;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2           #samsungBackup:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Backup is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSamsungRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 190
    const-string v3, "com.sec.android.sCloudBackupApp"

    .line 193
    .local v3, samsungbackupPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 194
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 196
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Restore is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 199
    .local v2, samsungBackup:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungrestore"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 200
    const v4, 0x7f0912d0

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceBase$3;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$3;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2           #samsungBackup:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Restore is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSamsungStorageUsagePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 225
    const-string v3, "com.sec.android.scloud.quota"

    .line 228
    .local v3, samsungquotaPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 231
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Storage usage is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 234
    .local v2, samsungQuota:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungstorageusage"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 235
    const v4, 0x7f0912cd

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceBase$4;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$4;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2           #samsungQuota:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Storage usage is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addTwitterSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 7
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    sget-object v5, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 284
    .local v0, appAccount:[Landroid/accounts/Account;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 286
    .local v2, sns3Account:[Landroid/accounts/Account;
    array-length v4, v0

    if-lez v4, :cond_0

    array-length v4, v2

    if-nez v4, :cond_0

    .line 287
    const-string v4, "AccountSettings"

    const-string v5, "Twitter SSO was Failed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 290
    .local v3, twitterSSORetry:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.sns3"

    const-string v6, "com.sec.android.app.sns3.auth.sp.twitter.SnsAccountTwAuthSSOActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 292
    const-string v4, "twitterSSORetry"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 293
    const v4, 0x7f0913cc

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    const v4, 0x7f0913cd

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 296
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 298
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #twitterSSORetry:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 17
    .parameter "accountType"
    .parameter "parent"

    .prologue
    .line 307
    const/4 v10, 0x0

    .line 308
    .local v10, prefs:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 309
    const/4 v5, 0x0

    .line 312
    .local v5, desc:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const-string v14, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v13, v14}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    .line 323
    :goto_0
    if-eqz v5, :cond_8

    iget v13, v5, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v13, :cond_8

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v14, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 327
    .local v2, authContext:Landroid/content/Context;
    const/4 v8, 0x1

    .line 328
    .local v8, isMatch:Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v9, preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v13

    iget v14, v5, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v13, v2, v14, v15}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 332
    .local v3, authPrefScreen:Landroid/preference/PreferenceScreen;
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .local v4, count:I
    :goto_1
    if-ge v7, v4, :cond_6

    .line 333
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 334
    .local v1, accountPref:Landroid/preference/Preference;
    instance-of v13, v1, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_2

    .line 335
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 336
    .local v11, tmpPref:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v11           #tmpPref:Landroid/preference/PreferenceCategory;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 316
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v2           #authContext:Landroid/content/Context;
    .end local v3           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #isMatch:Z
    .end local v9           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_0
    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const-string v14, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v13, v14}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    goto :goto_0

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    goto :goto_0

    .line 338
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v2       #authContext:Landroid/content/Context;
    .restart local v3       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v4       #count:I
    .restart local v7       #i:I
    .restart local v8       #isMatch:Z
    .restart local v9       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_2
    instance-of v13, v1, Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_4

    .line 339
    new-instance v11, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    .local v11, tmpPref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 344
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 399
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v2           #authContext:Landroid/content/Context;
    .end local v3           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #isMatch:Z
    .end local v9           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v11           #tmpPref:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v6

    .line 400
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v5           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_3
    return-object v10

    .line 345
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v2       #authContext:Landroid/content/Context;
    .restart local v3       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v4       #count:I
    .restart local v5       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v7       #i:I
    .restart local v8       #isMatch:Z
    .restart local v9       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_4
    :try_start_1
    instance-of v13, v1, Landroid/preference/Preference;

    if-eqz v13, :cond_5

    .line 346
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 347
    .local v11, tmpPref:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 351
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 401
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v2           #authContext:Landroid/content/Context;
    .end local v3           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #isMatch:Z
    .end local v9           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v11           #tmpPref:Landroid/preference/Preference;
    :catch_1
    move-exception v6

    .line 402
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 353
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v2       #authContext:Landroid/content/Context;
    .restart local v3       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v4       #count:I
    .restart local v7       #i:I
    .restart local v8       #isMatch:Z
    .restart local v9       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 357
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_6
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    .line 358
    move-object/from16 v10, p2

    .line 359
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v7, v4, :cond_7

    .line 360
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 361
    .restart local v1       #accountPref:Landroid/preference/Preference;
    invoke-virtual {v10, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 367
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_7
    const-string v13, "com.osp.app.signin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/settings/accounts/AccountPreferenceBase;->addSamsungStorageUsagePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 372
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 373
    .local v12, userInfo:Landroid/content/pm/UserInfo;
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    if-nez v13, :cond_8

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/settings/accounts/AccountPreferenceBase;->addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/settings/accounts/AccountPreferenceBase;->addSamsungRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 385
    .end local v2           #authContext:Landroid/content/Context;
    .end local v3           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #isMatch:Z
    .end local v9           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #userInfo:Landroid/content/pm/UserInfo;
    :cond_8
    :goto_5
    :try_start_4
    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v13, :cond_a

    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "com.sec.android.app.sns3.facebook"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 388
    :cond_9
    move-object/from16 v10, p2

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/settings/accounts/AccountPreferenceBase;->addFacebookSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 393
    :cond_a
    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v13, :cond_3

    sget-object v13, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "com.sec.android.app.sns3.twitter"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 396
    :cond_b
    move-object/from16 v10, p2

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/settings/accounts/AccountPreferenceBase;->addTwitterSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 377
    .restart local v2       #authContext:Landroid/content/Context;
    .restart local v3       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v4       #count:I
    .restart local v7       #i:I
    .restart local v8       #isMatch:Z
    .restart local v9       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :catch_2
    move-exception v6

    .line 378
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 130
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 131
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 132
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 133
    aget-object v3, v4, v1

    .line 134
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 135
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "accountType"

    .prologue
    .line 419
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 424
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 75
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 98
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 99
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 104
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 110
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 411
    return-void
.end method
