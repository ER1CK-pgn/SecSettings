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

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 212
    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 214
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 215
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    .line 219
    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 162
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->filter:Landroid/content/IntentFilter;

    .line 201
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->MHS_REQUEST:I

    .line 202
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mTetheredData:I

    .line 213
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 216
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 217
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 218
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 221
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    .line 2016
    new-instance v0, Lcom/android/settings/SettingsTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$3;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 162
    nop

    :array_0
    .array-data 0x4
        0x78t 0x5t 0xbt 0x7ft
        0x79t 0x5t 0xbt 0x7ft
        0x7bt 0x5t 0xbt 0x7ft
        0x80t 0x5t 0xbt 0x7ft
        0x86t 0x5t 0xbt 0x7ft
        0xe0t 0x5t 0xbt 0x7ft
        0x96t 0x5t 0xbt 0x7ft
        0x93t 0x5t 0xbt 0x7ft
        0xbet 0x5t 0xbt 0x7ft
        0xbat 0x5t 0xbt 0x7ft
        0xbct 0x5t 0xbt 0x7ft
        0xe3t 0x5t 0xbt 0x7ft
        0x81t 0x5t 0xbt 0x7ft
        0xbft 0x5t 0xbt 0x7ft
        0xa6t 0x5t 0xbt 0x7ft
        0xbbt 0x5t 0xbt 0x7ft
        0x73t 0x5t 0xbt 0x7ft
        0x74t 0x5t 0xbt 0x7ft
        0xe7t 0x5t 0xbt 0x7ft
        0xb8t 0x5t 0xbt 0x7ft
        0xc3t 0x5t 0xbt 0x7ft
        0xa2t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    sput-boolean p0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 148
    sget-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    sput p0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return p0
.end method

.method public static callSearchMenu()V
    .locals 4

    .prologue
    const v3, 0x10008000

    .line 2050
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/SearchMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2052
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2053
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2056
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.settingssearch.SettingsSearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2057
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2058
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

    .line 1033
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1034
    .local v2, voice_control_intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1036
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1037
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 1041
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
    const v12, 0x7f090966

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1072
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 1073
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1074
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_d

    aget-object v8, v5, v4

    .line 1075
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1078
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    const-string v0, "com.android.tmo_myphonebook"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    :cond_0
    if-nez v3, :cond_2

    .line 1074
    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1089
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1090
    array-length v0, v9

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 1094
    :goto_2
    array-length v10, v9

    if-lez v10, :cond_4

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 1095
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1096
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_3
    move v0, v2

    .line 1108
    :cond_4
    :goto_3
    array-length v10, v9

    if-lez v10, :cond_6

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1109
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1110
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_5
    move v0, v2

    .line 1121
    :cond_6
    :goto_4
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1122
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1123
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_7

    .line 1124
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1126
    :cond_7
    if-eqz v0, :cond_c

    .line 1127
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1128
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1129
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1132
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1134
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1149
    :cond_8
    :goto_5
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1090
    goto/16 :goto_2

    .line 1102
    :cond_a
    const-string v10, "com.sec.android.app.sns3.facebook"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1103
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    goto :goto_3

    .line 1116
    :cond_b
    const-string v10, "com.sec.android.app.sns3.twitter"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1117
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    goto :goto_4

    .line 1137
    :cond_c
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1138
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1139
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1141
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1145
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1153
    :cond_d
    new-instance v0, Lcom/android/settings/SettingsTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$2;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1160
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1161
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_6

    .line 1163
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_f

    .line 1164
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1165
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    .line 1167
    :cond_f
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1056
    if-eqz v1, :cond_1

    .line 1057
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1059
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

    .line 1068
    :cond_0
    :goto_0
    return v0

    .line 1065
    :catch_0
    move-exception v0

    .line 1068
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 1045
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1046
    .local v0, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 1047
    const/4 v1, 0x1

    .line 1049
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 1171
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

    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 631
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 632
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v1, v2

    .line 633
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 634
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 636
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 637
    const v3, 0x7f0b0592

    if-ne v6, v3, :cond_3

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "shopdemo"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 639
    if-ne v3, v4, :cond_0

    .line 640
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1009
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1013
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1017
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_43

    .line 1020
    iget-object v3, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b0572

    cmp-long v3, v7, v9

    if-eqz v3, :cond_2

    .line 1023
    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 1029
    goto :goto_0

    .line 641
    :cond_3
    const v3, 0x7f0b0572

    if-ne v6, v3, :cond_4

    .line 642
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 645
    :cond_4
    const v3, 0x7f0b05a1

    if-ne v6, v3, :cond_5

    .line 646
    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 647
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 648
    :cond_5
    const v3, 0x7f0b05dc

    if-eq v6, v3, :cond_6

    const v3, 0x7f0b05e2

    if-ne v6, v3, :cond_7

    .line 649
    :cond_6
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_1

    .line 650
    :cond_7
    const v3, 0x7f0b0579

    if-ne v6, v3, :cond_8

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 655
    :cond_8
    const v3, 0x7f0b057a

    if-ne v6, v3, :cond_9

    .line 669
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 671
    :cond_9
    const v3, 0x7f0b057b

    if-ne v6, v3, :cond_a

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 674
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 676
    :cond_a
    const v3, 0x7f0b0580

    if-ne v6, v3, :cond_b

    .line 678
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 681
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 684
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 687
    :cond_b
    const v3, 0x7f0b0583

    if-ne v6, v3, :cond_d

    .line 689
    const-string v3, "LGT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 693
    :cond_d
    const v3, 0x7f0b0584

    if-ne v6, v3, :cond_f

    .line 695
    const-string v3, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    :cond_e
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 699
    :cond_f
    const v3, 0x7f0b0585

    if-ne v6, v3, :cond_10

    .line 700
    const-string v3, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 701
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 703
    :cond_10
    const v3, 0x7f0b05a8

    if-ne v6, v3, :cond_11

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 707
    :cond_11
    const v3, 0x7f0b05a9

    if-eq v6, v3, :cond_0

    .line 714
    const v3, 0x7f0b05ab

    if-ne v6, v3, :cond_12

    .line 716
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 718
    :cond_12
    const v3, 0x7f0b05ac

    if-eq v6, v3, :cond_0

    .line 722
    const v3, 0x7f0b05aa

    if-eq v6, v3, :cond_0

    .line 727
    const v3, 0x7f0b0595

    if-ne v6, v3, :cond_13

    .line 728
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 731
    :cond_13
    const v3, 0x7f0b0597

    if-ne v6, v3, :cond_14

    .line 732
    const-string v3, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 735
    :cond_14
    const v3, 0x7f0b05b5

    if-ne v6, v3, :cond_15

    .line 736
    const-string v3, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 739
    :cond_15
    const v3, 0x7f0b05a0

    if-eq v6, v3, :cond_0

    .line 743
    const v3, 0x7f0b05bd

    if-ne v6, v3, :cond_16

    .line 745
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 747
    :cond_16
    const v3, 0x7f0b0571

    if-ne v6, v3, :cond_17

    .line 754
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 774
    :cond_17
    const v3, 0x7f0b0573

    if-ne v6, v3, :cond_18

    .line 776
    add-int/lit8 v1, v1, 0x1

    .line 777
    invoke-direct {p0, p1, v1}, Lcom/android/settings/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v1

    goto/16 :goto_1

    .line 779
    :cond_18
    const v3, 0x7f0b05ae

    if-eq v6, v3, :cond_0

    .line 783
    const v3, 0x7f0b05a5

    if-eq v6, v3, :cond_0

    .line 787
    const v3, 0x7f0b05bb

    if-ne v6, v3, :cond_1a

    .line 788
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 793
    :cond_1a
    const v3, 0x7f0b0576

    if-ne v6, v3, :cond_1c

    .line 794
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 795
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 798
    :cond_1b
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sec.android.cloudagent"

    const/4 v8, 0x5

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 799
    :catch_1
    move-exception v3

    .line 800
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 803
    :cond_1c
    const v3, 0x7f0b05c0

    if-ne v6, v3, :cond_1d

    .line 804
    if-nez v5, :cond_0

    .line 805
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 807
    :cond_1d
    const v3, 0x7f0b05c2

    if-ne v6, v3, :cond_1f

    .line 808
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    const-string v7, "SPR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "BST"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 812
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 817
    :cond_1e
    const-string v3, "SettingsTabActivity"

    const-string v7, "Samsung non-FOTA devices"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 819
    const-string v7, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const/high16 v7, 0x1020

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 821
    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 823
    :cond_1f
    const v3, 0x7f0b05c1

    if-ne v6, v3, :cond_20

    .line 826
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    .line 832
    :goto_3
    if-nez v3, :cond_0

    .line 833
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 827
    :catch_2
    move-exception v3

    move v3, v2

    .line 828
    goto :goto_3

    .line 835
    :cond_20
    const v3, 0x7f0b059a

    if-eq v6, v3, :cond_0

    .line 839
    const v3, 0x7f0b059b

    if-ne v6, v3, :cond_21

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f090a87

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 850
    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_1

    .line 852
    :cond_21
    const v3, 0x7f0b0598

    if-ne v6, v3, :cond_22

    .line 853
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "mproject"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 854
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 856
    :cond_22
    const v3, 0x7f0b0599

    if-eq v6, v3, :cond_0

    .line 860
    const v3, 0x7f0b059e

    if-ne v6, v3, :cond_23

    .line 862
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 863
    :catch_3
    move-exception v3

    .line 864
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 866
    :cond_23
    const v3, 0x7f0b0588

    if-ne v6, v3, :cond_26

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 871
    :cond_24
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 875
    :cond_25
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.android.settings.nfcsummary"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 876
    if-eqz v3, :cond_0

    .line 877
    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 878
    const/4 v3, 0x0

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 880
    :catch_4
    move-exception v3

    .line 881
    const-string v3, "CSCAppRes"

    const-string v7, "No data for CSCAppResourceUri"

    invoke-static {v3, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 884
    :cond_26
    const v3, 0x7f0b058a

    if-ne v6, v3, :cond_28

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    :cond_27
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 892
    :cond_28
    const v3, 0x7f0b058c

    if-eq v6, v3, :cond_0

    .line 897
    const v3, 0x7f0b058d

    if-ne v6, v3, :cond_29

    .line 900
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 902
    :cond_29
    const v3, 0x7f0b0590

    if-ne v6, v3, :cond_2c

    .line 903
    const-string v3, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isDocomoSettingsDisabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 904
    :cond_2a
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 908
    :cond_2b
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.nttdocomo.android.docomoset"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 909
    :catch_5
    move-exception v3

    .line 910
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 915
    :cond_2c
    const v3, 0x7f0b057d

    if-ne v6, v3, :cond_2d

    .line 916
    const-string v3, "VZW"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 917
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 921
    :cond_2d
    const v3, 0x7f0b057e

    if-ne v6, v3, :cond_2e

    .line 923
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 925
    :cond_2e
    const v3, 0x7f0b057f

    if-ne v6, v3, :cond_2f

    .line 926
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 930
    :cond_2f
    const v3, 0x7f0b057c

    if-ne v6, v3, :cond_30

    .line 932
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 935
    :cond_30
    const v3, 0x7f0b0591

    if-ne v6, v3, :cond_31

    .line 938
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 940
    :cond_31
    const v3, 0x7f0b05d9

    if-ne v6, v3, :cond_32

    .line 943
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 945
    :cond_32
    const v3, 0x7f0b059f

    if-ne v6, v3, :cond_33

    .line 947
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 949
    :cond_33
    const v3, 0x7f0b0582

    if-ne v6, v3, :cond_34

    .line 952
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 954
    :cond_34
    const v3, 0x7f0b059d

    if-ne v6, v3, :cond_35

    .line 955
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 957
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 959
    :cond_35
    const v3, 0x7f0b059c

    if-ne v6, v3, :cond_36

    .line 962
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 964
    :cond_36
    const v3, 0x7f0b05ad

    if-ne v6, v3, :cond_38

    .line 965
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsTabActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isVoiceControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 966
    :cond_37
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 968
    :cond_38
    const v3, 0x7f0b05e1

    if-ne v6, v3, :cond_39

    .line 969
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 972
    :cond_39
    const v3, 0x7f0b058b

    if-ne v6, v3, :cond_3a

    .line 973
    const-string v3, "ALL"

    const-string v7, "ALL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 974
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 976
    :cond_3a
    const v3, 0x7f0b0589

    if-ne v6, v3, :cond_3c

    .line 978
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sequent.controlpanel"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 979
    if-eqz v3, :cond_3b

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v4, :cond_3b

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    .line 980
    :cond_3b
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 982
    :catch_6
    move-exception v3

    .line 983
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 984
    const-string v3, "SettingsTabActivity"

    const-string v7, "Sprint Touch is not found"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 986
    :cond_3c
    const v3, 0x7f0b05a7

    if-ne v6, v3, :cond_3d

    .line 987
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 988
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 990
    :cond_3d
    const v3, 0x7f0b05a3

    if-ne v6, v3, :cond_3e

    .line 991
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    .line 992
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 994
    :cond_3e
    const v3, 0x7f0b0594

    if-ne v6, v3, :cond_40

    .line 995
    const-string v3, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-nez v3, :cond_0

    .line 996
    :cond_3f
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 998
    :cond_40
    const v3, 0x7f0b0581

    if-ne v6, v3, :cond_41

    .line 999
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    if-nez v3, :cond_0

    .line 1000
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1001
    :cond_41
    const v3, 0x7f0b058e

    if-ne v6, v3, :cond_0

    .line 1003
    :try_start_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    .line 1004
    :catch_7
    move-exception v3

    .line 1005
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1030
    :cond_42
    return-void

    :cond_43
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1880
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1882
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 1885
    if-eqz v0, :cond_2

    .line 1887
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1891
    :goto_0
    return v0

    .line 1887
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1891
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1872
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 1874
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1610

    .line 1954
    if-nez p1, :cond_2

    .line 1955
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1956
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 1957
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1958
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 1973
    :cond_0
    :goto_0
    return-void

    .line 1960
    :cond_1
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 1965
    :cond_2
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_0

    .line 1966
    if-ne p2, v2, :cond_0

    .line 1967
    const-string v0, "SettingsTapActivity"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 1932
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1934
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 1937
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1978
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 1979
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 1981
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1982
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
    const v5, 0x7f070023

    const/16 v10, 0x160f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 547
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 550
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity;->updateHeaderList(Ljava/util/List;)V

    .line 554
    iget-boolean v4, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v4, :cond_2

    .line 555
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 556
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v6, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 557
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 568
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 569
    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0599

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 571
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 573
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 574
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 581
    :cond_0
    :goto_2
    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    .line 582
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 586
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 620
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_3
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 623
    .end local v2           #i:I
    :cond_2
    return-void

    .line 535
    :pswitch_0
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 538
    :pswitch_1
    const v4, 0x7f07002a

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 541
    :pswitch_2
    const v4, 0x7f070006

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 544
    :pswitch_3
    const v4, 0x7f070053

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 576
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 577
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    .line 587
    .end local v0           #args:Landroid/os/Bundle;
    :cond_4
    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b059e

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 588
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 589
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 592
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 599
    :cond_5
    :goto_4
    const-string v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    .line 600
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.safetyassurance"

    const-string v5, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 604
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    goto :goto_3

    .line 594
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 595
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    .line 606
    .end local v0           #args:Landroid/os/Bundle;
    :cond_7
    sget v4, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v4, :cond_8

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_3

    .line 609
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 610
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    .line 614
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 615
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    .line 555
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 533
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

    .line 479
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 483
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

    .line 498
    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 503
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 504
    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 506
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 507
    :cond_2
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    :cond_3
    const/4 v0, 0x0

    .line 512
    if-eqz v2, :cond_6

    .line 513
    const-string v0, "wifi"

    .line 521
    :cond_4
    :goto_0
    const-string v2, "settings:guide_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    :cond_5
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 525
    return-object v1

    .line 515
    :cond_6
    if-nez v3, :cond_7

    const-class v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0b0021

    .line 402
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 403
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, -0x3

    .line 404
    .local v1, mTextSize:I
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 405
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 406
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 407
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 409
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
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

    .line 225
    sput-object p0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    .line 228
    sget-object v5, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    .line 229
    new-instance v5, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v5}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 230
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 231
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 233
    const-string v5, "development"

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 246
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-static {p0}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 256
    .local v0, bar:Landroid/app/ActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 257
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 258
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 260
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 261
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v5, -0x3

    .line 263
    .local v3, mTextSize:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    .line 264
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020237

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090b9c

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 267
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

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    .line 272
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020238

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090239

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 275
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

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    .line 280
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020235

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090567

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 283
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

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    .line 288
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f02023d

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090321

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 291
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

    .line 298
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 300
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "extra_from_search"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 301
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v5, :cond_2

    .line 302
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 303
    const-string v5, "extra_header_id"

    const-wide/16 v7, -0x1

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 304
    const-string v5, "extra_setting_value"

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    .line 305
    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 306
    const-string v5, "extra_second_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 307
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 308
    const-string v5, "SettingsSearch"

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v8, "extra_parent_preference_key"

    const-string v9, "None"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    const-string v5, "extra_depth_counter_key"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 311
    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 312
    const-string v5, "extra_tab_id"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 313
    .local v4, tap_index:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 314
    sget v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    .line 318
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #tap_index:I
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-eqz v5, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 322
    :cond_3
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #tap_index:I
    :cond_4
    move v5, v6

    .line 314
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 380
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const v0, 0x7f090569

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020194

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 385
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 459
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1896
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1898
    invoke-static {p0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getSelectedItemPosition()I

    move-result v0

    .line 1900
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1901
    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1902
    packed-switch p1, :pswitch_data_0

    .line 1919
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    .line 1923
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    .line 1924
    const/4 v0, 0x1

    .line 1927
    :goto_1
    return v0

    .line 1905
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1906
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1907
    instance-of v3, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v3, :cond_0

    .line 1908
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSwitchOnOff(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1902
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 468
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 470
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 474
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 393
    :pswitch_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 440
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 443
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 444
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->pause()V

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 454
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 416
    new-instance v1, Lcom/android/settings/SettingsTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsTabActivity$1;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 422
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 426
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 427
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->resume()V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 436
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 1945
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V

    .line 1949
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1861
    if-nez p1, :cond_0

    .line 1862
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1866
    :goto_0
    return-void

    .line 1864
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
    .line 1985
    iput-boolean p1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 1986
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

    .line 327
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

    .line 328
    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 329
    if-nez p2, :cond_0

    .line 330
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 332
    .restart local p2
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    iget v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 344
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 348
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 353
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 351
    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method
