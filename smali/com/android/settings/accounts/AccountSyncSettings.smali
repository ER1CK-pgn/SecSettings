.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccounts:[Landroid/accounts/Account;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToUpdateState:Z

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 902
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSyncSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/AccountSyncSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    return v0
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v7, 0x0

    .line 362
    new-instance v1, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 364
    .local v1, item:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 366
    .local v2, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 370
    .local v3, providerLabel:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 371
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider needs a label for authority \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 377
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 378
    const-string v5, "com.osp.app.signin"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 380
    if-nez v2, :cond_3

    const-string v5, "com.sec.android.widgetapp.q1_penmemo"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    :cond_3
    if-nez v2, :cond_4

    const-string v5, "com.samsung.sec.android"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 395
    :cond_4
    const v5, 0x7f090a67

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 398
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v4           #title:Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.ldap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 4

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 631
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 632
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 636
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSyncSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSyncSettings$3;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    return-void
.end method

.method private checkValidationState()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 248
    const-string v3, "content://com.msc.openprovider.openContentProvider/tncRequest"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, tncUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 252
    .local v12, tncState:I
    const/4 v11, 0x0

    .line 253
    .local v11, nameCheckState:I
    const/4 v9, 0x0

    .line 255
    .local v9, emailValidationState:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    .line 256
    .local v10, manager:Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v10, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 258
    .local v6, accountArr:[Landroid/accounts/Account;
    array-length v3, v6

    if-lez v3, :cond_5

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, emailID:Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 271
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 272
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 273
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tncState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nameCheckState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailValidationState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int v2, v12, v11

    add-int/2addr v2, v9

    if-nez v2, :cond_1

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v13

    .line 298
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #emailID:Ljava/lang/String;
    :goto_0
    return v2

    .line 282
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #emailID:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v14

    .line 284
    goto :goto_0

    .line 288
    .end local v8           #emailID:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_4
    const-string v2, "AccountSettings"

    const-string v3, "Fail to obtain cursor"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 291
    goto :goto_0

    .line 294
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_5
    const-string v2, "AccountSettings"

    const-string v3, "Samsung account is not Signed-in"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 295
    goto :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v7       #cur:Landroid/database/Cursor;
    :cond_6
    move v2, v14

    .line 298
    goto :goto_0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 683
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    const/4 v2, 0x1

    .line 687
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 672
    if-eqz p3, :cond_0

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 675
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 679
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .parameter "startSync"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 649
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 650
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 651
    .local v3, pref:Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 649
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 654
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 655
    .local v5, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 658
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 661
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_4

    .line 662
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 664
    .local v4, syncAdapter:Landroid/content/SyncAdapterType;
    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 665
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 669
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #syncAdapter:Landroid/content/SyncAdapterType;
    :cond_4
    return-void
.end method

.method private setFeedsState()V
    .locals 21

    .prologue
    .line 700
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 701
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v11

    .line 702
    const/4 v4, 0x0

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 707
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    move v9, v2

    :goto_0
    if-ge v9, v12, :cond_10

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 709
    instance-of v3, v2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v3, :cond_0

    .line 707
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 712
    :cond_0
    check-cast v2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 714
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 715
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v14

    .line 717
    invoke-static {v14, v13}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 718
    invoke-static {v14, v13}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .line 719
    if-nez v6, :cond_5

    const/4 v3, 0x0

    move v8, v3

    .line 720
    :goto_2
    if-nez v6, :cond_6

    const/4 v3, 0x0

    .line 722
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v13}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v16

    .line 723
    if-eqz v6, :cond_7

    iget-wide v0, v6, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_7

    const/4 v5, 0x1

    .line 727
    :goto_4
    if-nez v15, :cond_12

    const/4 v5, 0x0

    move v7, v5

    .line 728
    :goto_5
    if-eqz v7, :cond_1

    if-nez v16, :cond_1

    if-nez v8, :cond_1

    .line 729
    const/4 v4, 0x1

    .line 731
    :cond_1
    const-string v5, "AccountSettings"

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 732
    const-string v5, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Update sync status: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " active = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pend ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_2
    if-nez v6, :cond_8

    const-wide/16 v5, 0x0

    .line 737
    :goto_6
    if-nez v15, :cond_9

    .line 738
    const v5, 0x7f090a4d

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 748
    :goto_7
    invoke-static {v14, v13}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    .line 750
    if-eqz v16, :cond_c

    if-ltz v6, :cond_c

    if-nez v3, :cond_c

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v2, v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 752
    if-eqz v8, :cond_d

    if-ltz v6, :cond_d

    if-nez v3, :cond_d

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 755
    invoke-virtual {v2, v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 756
    const-string v3, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 758
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 759
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    .line 760
    if-eqz v5, :cond_3

    if-nez v3, :cond_e

    :cond_3
    const/4 v3, 0x1

    .line 761
    :goto_a
    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 762
    if-nez v3, :cond_4

    if-eqz v15, :cond_f

    :cond_4
    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 719
    :cond_5
    iget-boolean v3, v6, Landroid/content/SyncStatusInfo;->pending:Z

    move v8, v3

    goto/16 :goto_2

    .line 720
    :cond_6
    iget-boolean v3, v6, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 723
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 736
    :cond_8
    iget-wide v5, v6, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto :goto_6

    .line 739
    :cond_9
    if-eqz v16, :cond_a

    .line 740
    const v5, 0x7f090a50

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_7

    .line 741
    :cond_a
    const-wide/16 v17, 0x0

    cmp-long v17, v5, v17

    if-eqz v17, :cond_b

    .line 742
    invoke-virtual {v10, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 743
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accounts/AccountPreferenceBase;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v17, 0x7f090a4f

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 746
    :cond_b
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 750
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 752
    :cond_d
    const/4 v3, 0x0

    goto :goto_9

    .line 760
    :cond_e
    const/4 v3, 0x0

    goto :goto_a

    .line 762
    :cond_f
    const/4 v3, 0x0

    goto :goto_b

    .line 764
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 766
    return-void

    .line 764
    :cond_11
    const/16 v2, 0x8

    goto :goto_c

    :cond_12
    move v7, v5

    goto/16 :goto_5
.end method

.method private startSyncForEnabledProviders()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 613
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 614
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 615
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 618
    iput-boolean v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 619
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSyncSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSyncSettings$2;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    .line 792
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 794
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 795
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 797
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    .line 798
    aget-object v6, v3, v1

    .line 799
    const-string v0, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.samsung.android.SmartClip"

    iget-object v7, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.osp.app.signin"

    iget-object v7, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 805
    iget-object v0, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 806
    if-nez v0, :cond_2

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    iget-object v7, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_2
    const-string v7, "AccountSettings"

    invoke-static {v7, v13}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 811
    const-string v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAccountUpdated: added authority "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to accountType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_3
    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_6

    .line 823
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 822
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 826
    if-eqz p1, :cond_d

    .line 827
    array-length v6, p1

    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_d

    .line 828
    aget-object v7, p1, v4

    .line 829
    const-string v0, "AccountSettings"

    invoke-static {v0, v13}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 830
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looking for sync adapters that match account "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_7
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 834
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "com.sec.android.app.sns3.facebook"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "com.sec.android.app.sns3.twitter"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 847
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_c

    .line 848
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    invoke-static {v7, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v9

    .line 851
    const-string v10, "AccountSettings"

    invoke-static {v10, v13}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 852
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  found authority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_a
    if-lez v9, :cond_b

    .line 855
    invoke-direct {p0, v7, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 847
    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 827
    :cond_c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 864
    :cond_d
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 865
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_f

    .line 866
    const-string v4, "com.google"

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 868
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 865
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 874
    :cond_f
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_10

    .line 876
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 875
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 878
    :cond_10
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 211
    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 213
    const v3, 0x7f0b0018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 214
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v3, 0x7f0b046f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 217
    const v3, 0x7f0b0470

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 218
    const v3, 0x7f0b046e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/AccountCommon;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    const v4, -0x9a8a7b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    const v3, 0x7f0b046d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, titleLayout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/AccountCommon;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const v3, 0x7f02057c

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .end local v1           #titleLayout:Landroid/view/View;
    :goto_1
    return-void

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    const v4, -0xa0a0b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    const v4, -0x72635d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 234
    .restart local v1       #titleLayout:Landroid/view/View;
    :cond_1
    const v3, 0x7f02057b

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 238
    .end local v1           #titleLayout:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 239
    .local v2, userTextSize:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 240
    .local v0, providerTextSize:I
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7
    .parameter "accounts"

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 773
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v5, :cond_1

    .line 774
    const/4 v3, 0x0

    .line 775
    .local v3, isExistedAccount:Z
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 776
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 777
    const/4 v3, 0x1

    .line 781
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    if-nez v3, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 786
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #isExistedAccount:Z
    .end local v4           #len$:I
    :cond_1
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 789
    return-void

    .line 775
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #arr$:[Landroid/accounts/Account;
    .restart local v2       #i$:I
    .restart local v3       #isExistedAccount:Z
    .restart local v4       #len$:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 307
    const-string v3, "AccountSettings"

    const-string v4, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 312
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_2

    .line 313
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 326
    :cond_3
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 328
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceAccountPolicy()Landroid/app/enterprise/DeviceAccountPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

    .line 329
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 333
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_4

    const-string v3, "com.osp.app.signin"

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->checkValidationState()Z

    move-result v1

    .line 335
    .local v1, b_checkValidationState:Z
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkValidationState => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez v1, :cond_4

    .line 337
    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    .end local v1           #b_checkValidationState:Z
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    const/4 v1, -0x1

    .line 1129
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1130
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_1

    .line 1131
    if-ne p2, v1, :cond_0

    .line 1132
    const-string v0, "AccountSettings"

    const-string v1, "Excute remove samsung_account"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1137
    if-ne p2, v1, :cond_0

    .line 1138
    const-string v0, "AccountSettings"

    const-string v1, "Excute remove knox_account"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 885
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 886
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 887
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 889
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :cond_0
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 892
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 195
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f090a63

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 134
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a64

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a60

    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a65

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 181
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090a68

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a69

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_1

    .line 429
    const v6, 0x7f090a60

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v11, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 430
    .local v3, removeAccount:Landroid/view/MenuItem;
    const v6, 0x7f090d9d

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 431
    .local v5, syncNow:Landroid/view/MenuItem;
    const v6, 0x7f090d9e

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v10, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 438
    .local v4, syncCancel:Landroid/view/MenuItem;
    :goto_0
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 439
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 440
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 442
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/accounts/AccountCommon;->isActionbarLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 447
    const v2, 0x7f020283

    .line 448
    .local v2, refreshResId:I
    const v0, 0x7f02027b

    .line 449
    .local v0, cancelResId:I
    const v1, 0x7f02027d

    .line 456
    .local v1, deleteResId:I
    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 458
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 462
    .end local v0           #cancelResId:I
    .end local v1           #deleteResId:I
    .end local v2           #refreshResId:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 463
    return-void

    .line 433
    .end local v3           #removeAccount:Landroid/view/MenuItem;
    .end local v4           #syncCancel:Landroid/view/MenuItem;
    .end local v5           #syncNow:Landroid/view/MenuItem;
    :cond_1
    const v6, 0x7f090d9d

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 434
    .restart local v5       #syncNow:Landroid/view/MenuItem;
    const v6, 0x7f090d9e

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v10, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 435
    .restart local v4       #syncCancel:Landroid/view/MenuItem;
    const v6, 0x7f090a60

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v11, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .restart local v3       #removeAccount:Landroid/view/MenuItem;
    goto :goto_0

    .line 451
    :cond_2
    const v2, 0x7f020284

    .line 452
    .restart local v2       #refreshResId:I
    const v0, 0x7f02027c

    .line 453
    .restart local v0       #cancelResId:I
    const v1, 0x7f02027e

    .restart local v1       #deleteResId:I
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 200
    const v2, 0x7f040008

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 203
    .local v0, list:Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 207
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 580
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 552
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 555
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 558
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 571
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->verifyKnoxAccount()V

    goto :goto_0

    .line 575
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 359
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 585
    instance-of v7, p2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v7, :cond_3

    move-object v5, p2

    .line 586
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 587
    .local v5, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 589
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 590
    .local v3, syncAutomatically:Z
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 591
    invoke-direct {p0, v0, v1, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 608
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v3           #syncAutomatically:Z
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    :goto_0
    return v6

    .line 593
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v3       #syncAutomatically:Z
    .restart local v5       #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 594
    .local v4, syncOn:Z
    move v2, v3

    .line 595
    .local v2, oldSyncState:Z
    if-eq v4, v2, :cond_0

    .line 597
    invoke-static {v0, v1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 601
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_0

    .line 602
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 608
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #oldSyncState:Z
    .end local v3           #syncAutomatically:Z
    .end local v4           #syncOn:Z
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 16
    .parameter "menu"

    .prologue
    .line 467
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 474
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 475
    .local v11, syncNow:Landroid/view/MenuItem;
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 477
    .local v10, syncCancel:Landroid/view/MenuItem;
    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, isSyncableAccount:Z
    const/4 v1, 0x0

    .line 480
    .local v1, isSyncEnabled:Z
    const/4 v3, 0x0

    .line 482
    .local v3, isSyncing:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v12, :cond_8

    .line 483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 484
    .local v5, originalAccount:Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 485
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    array-length v12, v9

    if-ge v4, v12, :cond_8

    .line 486
    aget-object v7, v9, v4

    .line 487
    .local v7, sa:Landroid/content/SyncAdapterType;
    iget-object v12, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v13, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_4

    .line 488
    const/4 v2, 0x1

    .line 489
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 490
    const/4 v1, 0x1

    .line 492
    :cond_0
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 494
    :cond_1
    const/4 v3, 0x1

    .line 496
    :cond_2
    const-string v12, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const-string v12, "com.osp.app.signin"

    iget-object v13, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 498
    const/4 v1, 0x0

    .line 502
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v13, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/settings/accounts/AccountCommon;->getSSOAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    .line 503
    .local v8, ssoAccount:Landroid/accounts/Account;
    if-eqz v8, :cond_7

    .line 504
    iget-object v12, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v13, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_7

    .line 505
    const/4 v2, 0x1

    .line 506
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 507
    const/4 v1, 0x1

    .line 509
    :cond_5
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 511
    :cond_6
    const/4 v3, 0x1

    .line 485
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 518
    .end local v4           #j:I
    .end local v5           #originalAccount:Landroid/accounts/Account;
    .end local v7           #sa:Landroid/content/SyncAdapterType;
    .end local v8           #ssoAccount:Landroid/accounts/Account;
    .end local v9           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_8
    if-eqz v2, :cond_9

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    if-eqz v12, :cond_c

    if-nez v1, :cond_c

    .line 520
    :cond_9
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 522
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 523
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 524
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 539
    .end local v1           #isSyncEnabled:Z
    .end local v2           #isSyncableAccount:Z
    .end local v3           #isSyncing:Z
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/enterprise/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_b

    .line 540
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 541
    .local v6, removeAccount:Landroid/view/MenuItem;
    if-eqz v6, :cond_b

    .line 542
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 546
    .end local v6           #removeAccount:Landroid/view/MenuItem;
    :cond_b
    return-void

    .line 527
    .restart local v1       #isSyncEnabled:Z
    .restart local v2       #isSyncableAccount:Z
    .restart local v3       #isSyncing:Z
    :cond_c
    if-nez v3, :cond_d

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    invoke-interface {v10, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 529
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 530
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 531
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 527
    :cond_d
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 350
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 352
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 353
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 694
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method

.method public verifyKnoxAccount()V
    .locals 3

    .prologue
    .line 1119
    const/16 v0, 0xa

    .line 1120
    const-string v1, "AccountSettings"

    const-string v2, "CheckNOXAccount_Verify start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.containeragent.password_verify_from_account"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p0, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1124
    return-void
.end method
