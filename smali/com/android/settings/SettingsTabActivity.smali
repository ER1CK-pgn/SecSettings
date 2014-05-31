.class public Lcom/android/settings/SettingsTabActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter;,
        Lcom/android/settings/SettingsTabActivity$SettingsTabListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mDirectSettingEnabler:Z

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field filter:Landroid/content/IntentFilter;

.field mAccountTabView:Landroid/view/View;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field mConnectionTabView:Landroid/view/View;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field private mDualFoldertype:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderIndexMap2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToAccountUpdates:Z

.field mMoreTabView:Landroid/view/View;

.field private mOpenSearchHierarchy:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mTetheredData:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 232
    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 234
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 235
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    .line 239
    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 179
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->filter:Landroid/content/IntentFilter;

    .line 221
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->MHS_REQUEST:I

    .line 222
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mTetheredData:I

    .line 233
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 236
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 237
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 238
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 241
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    .line 2154
    new-instance v0, Lcom/android/settings/SettingsTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$3;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2201
    new-instance v0, Lcom/android/settings/SettingsTabActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsTabActivity$4;-><init>(Lcom/android/settings/SettingsTabActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    return-void

    .line 179
    nop

    :array_0
    .array-data 0x4
        0xedt 0x5t 0xbt 0x7ft
        0xeft 0x5t 0xbt 0x7ft
        0xeet 0x5t 0xbt 0x7ft
        0xf1t 0x5t 0xbt 0x7ft
        0xf7t 0x5t 0xbt 0x7ft
        0xfdt 0x5t 0xbt 0x7ft
        0x69t 0x6t 0xbt 0x7ft
        0xdt 0x6t 0xbt 0x7ft
        0xat 0x6t 0xbt 0x7ft
        0x3dt 0x6t 0xbt 0x7ft
        0x38t 0x6t 0xbt 0x7ft
        0x3bt 0x6t 0xbt 0x7ft
        0x6dt 0x6t 0xbt 0x7ft
        0xf8t 0x5t 0xbt 0x7ft
        0x3et 0x6t 0xbt 0x7ft
        0x1dt 0x6t 0xbt 0x7ft
        0x3at 0x6t 0xbt 0x7ft
        0xe8t 0x5t 0xbt 0x7ft
        0xe9t 0x5t 0xbt 0x7ft
        0x53t 0x6t 0xbt 0x7ft
        0x35t 0x6t 0xbt 0x7ft
        0x42t 0x6t 0xbt 0x7ft
        0x19t 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 165
    sget-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput p0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return p0
.end method

.method public static callSearchMenu()V
    .locals 4

    .prologue
    const v3, 0x10008000

    .line 2188
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2189
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/SearchMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2190
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2191
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2194
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.settingssearch.SettingsSearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2195
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2196
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter "mHeader"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1154
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1155
    .local v2, voice_control_intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1157
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1158
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 1162
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f090a7a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 1195
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1196
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_d

    aget-object v8, v5, v4

    .line 1197
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1200
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    const-string v0, "com.android.tmo_myphonebook"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1207
    :cond_0
    if-nez v3, :cond_2

    .line 1196
    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1211
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1212
    array-length v0, v9

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 1216
    :goto_2
    array-length v10, v9

    if-lez v10, :cond_4

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 1217
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1218
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1219
    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_3
    move v0, v2

    .line 1230
    :cond_4
    :goto_3
    array-length v10, v9

    if-lez v10, :cond_6

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1231
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1232
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1233
    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_5
    move v0, v2

    .line 1243
    :cond_6
    :goto_4
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1244
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1245
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_7

    .line 1246
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1248
    :cond_7
    if-eqz v0, :cond_c

    .line 1249
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1250
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1251
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1254
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1256
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1271
    :cond_8
    :goto_5
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1212
    goto/16 :goto_2

    .line 1224
    :cond_a
    const-string v10, "com.sec.android.app.sns3.facebook"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1225
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    goto :goto_3

    .line 1238
    :cond_b
    const-string v10, "com.sec.android.app.sns3.twitter"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1239
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    goto :goto_4

    .line 1259
    :cond_c
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1260
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1261
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1263
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1267
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1275
    :cond_d
    new-instance v0, Lcom/android/settings/SettingsTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$2;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1282
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1283
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_6

    .line 1285
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_f

    .line 1286
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1287
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    .line 1289
    :cond_f
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1178
    if-eqz v1, :cond_1

    .line 1179
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1181
    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return v0

    .line 1187
    :catch_0
    move-exception v0

    .line 1190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 658
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 663
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 664
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v2, v3

    .line 665
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4b

    .line 666
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 668
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 669
    const v1, 0x7f0b0609

    if-ne v6, v1, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "shopdemo"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 674
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 675
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_4e

    move v1, v3

    .line 678
    :goto_1
    const-string v8, "SettingsTabActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-eq v7, v4, :cond_0

    if-nez v1, :cond_1

    .line 681
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1130
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1134
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1138
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4c

    .line 1141
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b05e7

    cmp-long v1, v7, v9

    if-eqz v1, :cond_3

    .line 1144
    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1146
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    .line 1150
    goto/16 :goto_0

    .line 682
    :cond_4
    const v1, 0x7f0b05e7

    if-ne v6, v1, :cond_5

    .line 683
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 686
    :cond_5
    const v1, 0x7f0b0618

    if-ne v6, v1, :cond_6

    .line 687
    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->needsDockSettings()Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 689
    :cond_6
    const v1, 0x7f0b0666

    if-eq v6, v1, :cond_7

    const v1, 0x7f0b066c

    if-ne v6, v1, :cond_8

    .line 690
    :cond_7
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_2

    .line 691
    :cond_8
    const v1, 0x7f0b05ef

    if-ne v6, v1, :cond_9

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 697
    :cond_9
    const v1, 0x7f0b05ee

    if-ne v6, v1, :cond_a

    .line 699
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 712
    :cond_a
    const v1, 0x7f0b05f0

    if-ne v6, v1, :cond_b

    .line 726
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 728
    :cond_b
    const v1, 0x7f0b05f1

    if-ne v6, v1, :cond_c

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 733
    :cond_c
    const v1, 0x7f0b05f7

    if-ne v6, v1, :cond_d

    .line 735
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 738
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 741
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 744
    :cond_d
    const v1, 0x7f0b05fa

    if-ne v6, v1, :cond_f

    .line 746
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    :cond_e
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 750
    :cond_f
    const v1, 0x7f0b05fb

    if-ne v6, v1, :cond_11

    .line 752
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    :cond_10
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 756
    :cond_11
    const v1, 0x7f0b05fc

    if-ne v6, v1, :cond_12

    .line 757
    const-string v1, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 760
    :cond_12
    const v1, 0x7f0b061f

    if-ne v6, v1, :cond_13

    .line 762
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 764
    :cond_13
    const v1, 0x7f0b0620

    if-eq v6, v1, :cond_1

    .line 771
    const v1, 0x7f0b0622

    if-ne v6, v1, :cond_14

    .line 773
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 775
    :cond_14
    const v1, 0x7f0b0623

    if-eq v6, v1, :cond_1

    .line 779
    const v1, 0x7f0b0621

    if-eq v6, v1, :cond_1

    .line 784
    const v1, 0x7f0b060c

    if-ne v6, v1, :cond_15

    .line 785
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 788
    :cond_15
    const v1, 0x7f0b062f

    if-ne v6, v1, :cond_16

    .line 789
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 791
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 793
    :cond_16
    const v1, 0x7f0b0630

    if-ne v6, v1, :cond_18

    .line 794
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 796
    :cond_17
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 798
    :cond_18
    const v1, 0x7f0b060e

    if-ne v6, v1, :cond_19

    .line 799
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 803
    :cond_19
    const v1, 0x7f0b0617

    if-eq v6, v1, :cond_1

    .line 807
    const v1, 0x7f0b063c

    if-ne v6, v1, :cond_1a

    .line 809
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 811
    :cond_1a
    const v1, 0x7f0b05e6

    if-ne v6, v1, :cond_1b

    .line 818
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 838
    :cond_1b
    const v1, 0x7f0b05e8

    if-ne v6, v1, :cond_1c

    .line 840
    add-int/lit8 v1, v2, 0x1

    .line 841
    invoke-direct {p0, p1, v1}, Lcom/android/settings/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_2

    .line 843
    :cond_1c
    const v1, 0x7f0b0625

    if-eq v6, v1, :cond_1

    .line 847
    const v1, 0x7f0b061c

    if-eq v6, v1, :cond_1

    .line 851
    const v1, 0x7f0b063a

    if-ne v6, v1, :cond_1e

    .line 854
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_4d

    move v1, v3

    .line 858
    :goto_4
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_1d

    if-nez v1, :cond_1

    .line 861
    :cond_1d
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 863
    :cond_1e
    const v1, 0x7f0b05eb

    if-ne v6, v1, :cond_20

    .line 864
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 865
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 868
    :cond_1f
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sec.android.cloudagent"

    const/4 v8, 0x5

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 869
    :catch_1
    move-exception v1

    .line 870
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 873
    :cond_20
    const v1, 0x7f0b063f

    if-ne v6, v1, :cond_21

    .line 874
    if-nez v5, :cond_1

    .line 875
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 877
    :cond_21
    const v1, 0x7f0b0641

    if-ne v6, v1, :cond_23

    .line 878
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    const-string v7, "SPR"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    const-string v7, "BST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 882
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 887
    :cond_22
    const-string v1, "SettingsTabActivity"

    const-string v7, "Samsung non-FOTA devices"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 889
    const-string v7, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const/high16 v7, 0x1020

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 893
    :cond_23
    const v1, 0x7f0b0640

    if-ne v6, v1, :cond_24

    .line 896
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    .line 902
    :goto_5
    if-nez v1, :cond_1

    .line 903
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 897
    :catch_2
    move-exception v1

    move v1, v3

    .line 898
    goto :goto_5

    .line 905
    :cond_24
    const v1, 0x7f0b0611

    if-eq v6, v1, :cond_1

    .line 909
    const v1, 0x7f0b0612

    if-ne v6, v1, :cond_25

    .line 919
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090ba2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 920
    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 922
    :cond_25
    const v1, 0x7f0b060f

    if-ne v6, v1, :cond_26

    .line 924
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 926
    :cond_26
    const v1, 0x7f0b0610

    if-eq v6, v1, :cond_1

    .line 930
    const v1, 0x7f0b0615

    if-ne v6, v1, :cond_27

    .line 935
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 936
    :catch_3
    move-exception v1

    .line 937
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 940
    :cond_27
    const v1, 0x7f0b0637

    if-ne v6, v1, :cond_28

    .line 942
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 944
    :cond_28
    const v1, 0x7f0b05ff

    if-ne v6, v1, :cond_2b

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 949
    :cond_29
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 953
    :cond_2a
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.android.settings.nfcsummary"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 954
    if-eqz v1, :cond_1

    .line 955
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 956
    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 958
    :catch_4
    move-exception v1

    .line 959
    const-string v1, "CSCAppRes"

    const-string v7, "No data for CSCAppResourceUri"

    invoke-static {v1, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 962
    :cond_2b
    const v1, 0x7f0b0601

    if-ne v6, v1, :cond_2d

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    :cond_2c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 970
    :cond_2d
    const v1, 0x7f0b0603

    if-ne v6, v1, :cond_2e

    .line 973
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 975
    :cond_2e
    const v1, 0x7f0b0604

    if-eq v6, v1, :cond_1

    .line 980
    const v1, 0x7f0b0607

    if-ne v6, v1, :cond_31

    .line 981
    const-string v1, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isDocomoSettingsDisabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 982
    :cond_2f
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 986
    :cond_30
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.nttdocomo.android.docomoset"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    .line 987
    :catch_5
    move-exception v1

    .line 988
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 993
    :cond_31
    const v1, 0x7f0b05f3

    if-ne v6, v1, :cond_32

    .line 994
    const-string v1, "VZW"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 995
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 999
    :cond_32
    const v1, 0x7f0b05f4

    if-ne v6, v1, :cond_33

    .line 1001
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1003
    :cond_33
    const v1, 0x7f0b05f5

    if-ne v6, v1, :cond_34

    .line 1004
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1008
    :cond_34
    const v1, 0x7f0b05f2

    if-ne v6, v1, :cond_35

    .line 1010
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1013
    :cond_35
    const v1, 0x7f0b0608

    if-ne v6, v1, :cond_36

    .line 1016
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1018
    :cond_36
    const v1, 0x7f0b0663

    if-ne v6, v1, :cond_37

    .line 1021
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1023
    :cond_37
    const v1, 0x7f0b0616

    if-ne v6, v1, :cond_38

    .line 1025
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1027
    :cond_38
    const v1, 0x7f0b05f9

    if-ne v6, v1, :cond_39

    .line 1030
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1032
    :cond_39
    const v1, 0x7f0b0614

    if-ne v6, v1, :cond_3a

    .line 1033
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1037
    :cond_3a
    const v1, 0x7f0b0613

    if-ne v6, v1, :cond_3b

    .line 1040
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1042
    :cond_3b
    const v1, 0x7f0b0624

    if-ne v6, v1, :cond_3d

    .line 1043
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsTabActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isVoiceControlEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    :cond_3c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1046
    :cond_3d
    const v1, 0x7f0b066a

    if-ne v6, v1, :cond_3e

    .line 1047
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1050
    :cond_3e
    const v1, 0x7f0b0602

    if-ne v6, v1, :cond_3f

    .line 1051
    const-string v1, "ALL"

    const-string v7, "ALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1052
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1054
    :cond_3f
    const v1, 0x7f0b0600

    if-ne v6, v1, :cond_41

    .line 1056
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sequent.controlpanel"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1057
    if-eqz v1, :cond_40

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v4, :cond_40

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    .line 1058
    :cond_40
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    .line 1060
    :catch_6
    move-exception v1

    .line 1061
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1064
    :cond_41
    const v1, 0x7f0b061e

    if-ne v6, v1, :cond_42

    .line 1065
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1066
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1068
    :cond_42
    const v1, 0x7f0b061a

    if-ne v6, v1, :cond_44

    .line 1070
    :try_start_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.skyfire.browser.toolbar.att"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1072
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v4, :cond_43

    if-eqz v1, :cond_43

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    .line 1073
    :cond_43
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    .line 1075
    :catch_7
    move-exception v1

    .line 1076
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1077
    const-string v1, "SettingsTabActivity"

    const-string v7, "Browser Bar is not found"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1079
    :cond_44
    const v1, 0x7f0b060b

    if-ne v6, v1, :cond_46

    .line 1080
    const-string v1, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-nez v1, :cond_1

    .line 1081
    :cond_45
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1083
    :cond_46
    const v1, 0x7f0b05f8

    if-ne v6, v1, :cond_47

    .line 1084
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1086
    :cond_47
    const v1, 0x7f0b0605

    if-ne v6, v1, :cond_48

    .line 1088
    :try_start_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 1089
    :catch_8
    move-exception v1

    .line 1090
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1092
    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b05fe

    cmp-long v1, v7, v9

    if-nez v1, :cond_1

    .line 1093
    add-int/lit8 v2, v2, -0x1

    .line 1094
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1097
    :cond_48
    const v1, 0x7f0b05fe

    if-ne v6, v1, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_49
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4a
    const-string v1, "ALL"

    const-string v7, "ALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1151
    :cond_4b
    return-void

    :cond_4c
    move v0, v2

    goto/16 :goto_3

    :cond_4d
    move v1, v4

    goto/16 :goto_4

    :cond_4e
    move v1, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 2039
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 2044
    if-eqz v0, :cond_2

    .line 2046
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2050
    :goto_0
    return v0

    .line 2046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2050
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 2031
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 2032
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 2033
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1610

    .line 2093
    if-nez p1, :cond_2

    .line 2094
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2095
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 2096
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2097
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 2104
    :cond_2
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_0

    .line 2105
    if-ne p2, v2, :cond_0

    .line 2106
    const-string v0, "SettingsTapActivity"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 2108
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 2073
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 2076
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2117
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 2118
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 2120
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 2121
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v5, 0x7f07002c

    const/16 v10, 0x160f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 579
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 582
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity;->updateHeaderList(Ljava/util/List;)V

    .line 586
    iget-boolean v4, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v4, :cond_2

    .line 587
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 588
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v6, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 589
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 600
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 601
    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0610

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 602
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 605
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 606
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 613
    :cond_0
    :goto_2
    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    .line 614
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 618
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 652
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_3
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 655
    .end local v2           #i:I
    :cond_2
    return-void

    .line 567
    :pswitch_0
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 570
    :pswitch_1
    const v4, 0x7f070034

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 573
    :pswitch_2
    const v4, 0x7f07000b

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 576
    :pswitch_3
    const v4, 0x7f07006e

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 608
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    .line 619
    .end local v0           #args:Landroid/os/Bundle;
    :cond_4
    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0615

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 621
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 623
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 624
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 631
    :cond_5
    :goto_4
    const-string v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    .line 632
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.safetyassurance"

    const-string v5, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 636
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    goto :goto_3

    .line 626
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 627
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    .line 638
    .end local v0           #args:Landroid/os/Bundle;
    :cond_7
    sget v4, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v4, :cond_8

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_3

    .line 641
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 642
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    .line 646
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 647
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    .line 587
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 511
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 515
    const-class v0, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/ReadingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 536
    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 538
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 539
    :cond_2
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    :cond_3
    const/4 v0, 0x0

    .line 544
    if-eqz v2, :cond_6

    .line 545
    const-string v0, "wifi"

    .line 553
    :cond_4
    :goto_0
    const-string v2, "settings:guide_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    :cond_5
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 557
    return-object v1

    .line 547
    :cond_6
    if-nez v3, :cond_7

    const-class v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 549
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0b0021

    .line 422
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 423
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, -0x3

    .line 424
    .local v1, mTextSize:I
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 426
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 427
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 429
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0b0020

    const v10, 0x7f04000a

    const/4 v6, 0x0

    const v9, 0x7f0b0021

    const/4 v8, 0x0

    .line 245
    sput-object p0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    .line 248
    sget-object v5, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    .line 249
    new-instance v5, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v5}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 250
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 251
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 253
    const-string v5, "development"

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 266
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-static {p0}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 276
    .local v0, bar:Landroid/app/ActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 277
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 278
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 280
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 281
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v5, -0x3

    .line 283
    .local v3, mTextSize:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    .line 284
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f02028a

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090cdc

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 287
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    .line 292
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f02028b

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090261

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 295
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    .line 300
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020288

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0905c6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 303
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    .line 308
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020290

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f09037b

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 311
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 318
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 320
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "extra_from_search"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 321
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v5, :cond_2

    .line 322
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 323
    const-string v5, "extra_header_id"

    const-wide/16 v7, -0x1

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 324
    const-string v5, "extra_setting_value"

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    .line 325
    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 326
    const-string v5, "extra_second_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 327
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 328
    const-string v5, "SettingsSearch"

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v8, "extra_parent_preference_key"

    const-string v9, "None"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    const-string v5, "extra_depth_counter_key"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 331
    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 332
    const-string v5, "extra_tab_id"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 333
    .local v4, tap_index:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 334
    sget v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    .line 338
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #tap_index:I
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-eqz v5, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 342
    :cond_3
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #tap_index:I
    :cond_4
    move v5, v6

    .line 334
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 400
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const v0, 0x7f0905c8

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 405
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 491
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 494
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2055
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2058
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    .line 2063
    const/4 v0, 0x1

    .line 2066
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 500
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 502
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 506
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 466
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 469
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 470
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->pause()V

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 486
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 434
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 436
    new-instance v1, Lcom/android/settings/SettingsTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsTabActivity$1;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 442
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 446
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 447
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->resume()V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 462
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 2084
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V

    .line 2088
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 2020
    if-nez p1, :cond_0

    .line 2021
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2025
    :goto_0
    return-void

    .line 2023
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setSearchHierarchyOpen(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2124
    iput-boolean p1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 2125
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 5
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    const/4 v4, 0x1

    .line 347
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsTapActivity , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 349
    if-nez p2, :cond_0

    .line 350
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 352
    .restart local p2
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    iget v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 364
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 373
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method
