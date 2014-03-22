.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    }
.end annotation


# instance fields
.field private EXTRA_NO_HEADERS_INTENT:Ljava/lang/String;

.field private bIsNoheaders:Z

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

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMultipaneFragment:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    .line 87
    const-string v0, ":android:no_headers"

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->EXTRA_NO_HEADERS_INTENT:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->bIsNoheaders:Z

    .line 119
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    return v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 469
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v4, addAccountOptions:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 471
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    const-string v0, "hasMultipleUsers"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string p1, "com.sec.android.app.sns3.facebook"

    .line 480
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const-string p1, "com.sec.android.app.sns3.twitter"

    .line 484
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 493
    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->addAccount(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 22

    .prologue
    .line 253
    const/16 v16, 0x0

    .line 254
    .local v16, isShownFacebook:Z
    const/16 v17, 0x0

    .line 257
    .local v17, isShownTwitter:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v14, v2, :cond_11

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v14

    iget-object v9, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 259
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 263
    .local v21, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 264
    .local v8, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 265
    .local v10, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 266
    const/4 v10, 0x0

    .line 267
    const/16 v18, 0x0

    .local v18, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 268
    if-eqz v8, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 270
    const/4 v10, 0x1

    .line 276
    .end local v18           #k:I
    :cond_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    const/4 v10, 0x0

    .line 282
    :cond_1
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v10, v2, :cond_4

    .line 283
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 285
    const/4 v10, 0x0

    .line 288
    :cond_3
    const/16 v16, 0x1

    .line 289
    sget-object v21, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    .line 294
    :cond_4
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    if-ne v10, v2, :cond_7

    .line 295
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 297
    const/4 v10, 0x0

    .line 300
    :cond_6
    const/16 v17, 0x1

    .line 301
    sget-object v21, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    .line 307
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 309
    const/4 v10, 0x0

    .line 312
    :cond_8
    const-string v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 315
    :cond_a
    const/4 v10, 0x0

    .line 320
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 321
    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.android.tmo_myphonebook"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 322
    :cond_c
    const/4 v10, 0x0

    .line 326
    :cond_d
    if-eqz v10, :cond_10

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_e
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 267
    .restart local v18       #k:I
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 329
    .end local v18           #k:I
    :cond_10
    const-string v2, "ChooseAccountFragment"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 330
    const-string v2, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pref "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": has no authority we need"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 335
    .end local v8           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #addAccountPref:Z
    .end local v21           #providerName:Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 367
    :cond_12
    :goto_3
    return-void

    .line 338
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    .line 342
    .local v20, pref:Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 343
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->isSignedIn(Ljava/lang/String;)Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 345
    .local v1, p:Lcom/android/settings/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 349
    .end local v1           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #pref:Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    :cond_14
    :try_start_0
    const-string v2, "ChooseAccountFragment"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v12, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_15

    aget-object v7, v11, v15

    .line 353
    .local v7, a:Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 357
    .end local v7           #a:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    :cond_15
    const-string v2, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No providers found for authorities: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v12           #auths:Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    if-nez v2, :cond_12

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 363
    :catch_0
    move-exception v13

    .line 364
    .local v13, e:Ljava/lang/IllegalStateException;
    const-string v2, "ChooseAccountFragment"

    const-string v3, "onAuthDescriptionsUpdated -  IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->onAuthDescriptionsUpdated()V

    .line 250
    return-void
.end method


# virtual methods
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
    .line 370
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 371
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 372
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 373
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 374
    aget-object v3, v4, v1

    .line 375
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 376
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    const-string v5, "ChooseAccountFragment"

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

    .line 384
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 413
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 414
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 423
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 415
    :catch_0
    move-exception v2

    .line 417
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 420
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 436
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 437
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 444
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 441
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isSignedIn(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, isSignedIn:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 394
    .local v0, accountManager:Landroid/accounts/AccountManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 396
    const/4 v1, 0x1

    .line 399
    :cond_0
    return v1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 500
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->updateAuthDescriptions()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 199
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authorities"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .line 201
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account_types"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, accountTypesFilter:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 204
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 205
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 206
    .local v0, accountType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 210
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->updateAuthDescriptions()V

    .line 213
    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 507
    const v4, 0x7f0400f5

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 508
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 509
    .local v2, mErrorInfoView:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->EXTRA_NO_HEADERS_INTENT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->bIsNoheaders:Z

    .line 513
    iget-boolean v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->bIsNoheaders:Z

    if-eqz v4, :cond_0

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, list_padding_side:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 516
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 517
    .local v0, list:Landroid/widget/ListView;
    invoke-static {p2, v3, v0, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 518
    invoke-virtual {v0, v1, v6, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 522
    .end local v0           #list:Landroid/widget/ListView;
    .end local v1           #list_padding_side:I
    :cond_0
    return-object v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 449
    instance-of v1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 450
    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    .line 451
    .local v0, pref:Lcom/android/settings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 457
    .end local v0           #pref:Lcom/android/settings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 192
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 221
    return-void
.end method
