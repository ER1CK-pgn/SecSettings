.class public Lcom/android/settings/search/SettingSearchManager;
.super Ljava/lang/Object;
.source "SettingSearchManager.java"


# static fields
.field public static final SETTINGINFO_URI:Landroid/net/Uri;

.field public static final SETTINGSEARCH_URI:Landroid/net/Uri;

.field static final TEXTINFO_PROJECTION:[Ljava/lang/String;

.field public static final TITLEINFO_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;

.field public static mParents_name:Ljava/lang/String;

.field private static mtab_root:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DATA_EMPTY:I

.field public final TABLE_ALL:I

.field public final TABLE_SETTINGINFO:I

.field public final TABLE_SETTINGINFO_ITEM_ID_KEY:I

.field public final TABLE_TEXTINFO:I

.field public final TABLE_TEXTINFO_ITEM_ID_KEY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "content://com.sec.providers.settingsearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.sec.providers.settingsearch/titleinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    .line 90
    sput-object v1, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->mParents_name:Ljava/lang/String;

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "summary AS suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon AS suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "menu_type AS suggest_extra_flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "menu_path AS suggest_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->TEXTINFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->DATA_EMPTY:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_ALL:I

    .line 45
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_SETTINGINFO:I

    .line 47
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_SETTINGINFO_ITEM_ID_KEY:I

    .line 49
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_TEXTINFO:I

    .line 51
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_TEXTINFO_ITEM_ID_KEY:I

    .line 104
    sput-object p1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    .line 107
    sget-object v0, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "Connections"

    const v2, 0x7f090cdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "My device"

    const v2, 0x7f090cdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "Accounts"

    const v2, 0x7f090cde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "More"

    const v2, 0x7f090cdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "resource_id"

    .prologue
    .line 517
    sget-object v0, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourceString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "package_name"
    .parameter "title_res_id"

    .prologue
    .line 498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 499
    .local v2, defaultLocale:Ljava/util/Locale;
    sget-object v8, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 500
    .local v7, resource:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 501
    .local v0, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 502
    .local v5, metrics:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 503
    .local v1, config:Landroid/content/res/Configuration;
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 504
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v0, v5, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 506
    .local v3, defaultResources:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 508
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 512
    :goto_0
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 509
    :catch_0
    move-exception v4

    .line 510
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public Delete(ILjava/lang/String;)V
    .locals 6
    .parameter "delet"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 403
    const-string v0, "id_key = ?"

    .line 405
    .local v0, select:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 407
    :sswitch_0
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :sswitch_1
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :sswitch_2
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :sswitch_3
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :sswitch_4
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x834 -> :sswitch_3
    .end sparse-switch
.end method

.method public addSearchInfoDB(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, addItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 168
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v3, "addSearchInfoDB"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 170
    return-void
.end method

.method public addTextInfoDB(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, addItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v3, "addTextInfoDB"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 177
    return-void
.end method

.method public changed_language()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 134
    :goto_0
    return v5

    .line 120
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 121
    .local v1, defaultLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, language:Ljava/lang/String;
    const/4 v4, 0x0

    .line 125
    .local v4, update:Z
    sget-object v6, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v8, "getLanguage"

    invoke-virtual {v6, v7, v8, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 126
    .local v3, result:Landroid/os/Bundle;
    const-string v0, ""

    .line 128
    .local v0, db_language:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 129
    const-string v6, "data"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    move v5, v4

    .line 134
    goto :goto_0

    :cond_2
    move v4, v5

    .line 132
    goto :goto_1
.end method

.method public getCount_searchinfo()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v4, "getCount_searchinfo"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, result:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 154
    .local v0, count:I
    if-eqz v1, :cond_0

    .line 155
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    :cond_0
    if-gez v0, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_1
    return v0
.end method

.method public getCount_titleinfo()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v4, "getCount_titleinfo"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 139
    .local v1, result:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 140
    .local v0, count:I
    if-eqz v1, :cond_0

    .line 141
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    :cond_0
    if-gtz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_1
    return v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "id_key"

    .prologue
    .line 434
    const/4 v10, 0x0

    .line 436
    .local v10, cSearchinfo:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 437
    .local v9, cPARENTSKEY:I
    const/4 v11, -0x1

    .line 438
    .local v11, cTITLE:I
    const/4 v12, -0x1

    .line 439
    .local v12, cTITLE_RES_ID:I
    const/4 v8, -0x1

    .line 441
    .local v8, cPACKAGE:I
    const/16 v17, 0x0

    .line 442
    .local v17, title:Ljava/lang/String;
    const/4 v14, 0x0

    .line 444
    .local v14, mPackage:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, root_path:Ljava/lang/String;
    const-string v16, ""

    .line 448
    .local v16, sub_path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/search/SettingSearchManager;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v2, v15

    .line 494
    :goto_0
    return-object v2

    .line 458
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "id_key"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 462
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 463
    const-string v2, "title_res_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 464
    const-string v2, "parentskey"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 465
    const-string v2, "package_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 467
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 469
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 470
    .local v18, title_res_id:I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 473
    const-string v2, "com.android.settings"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/settings/search/SettingSearchManager;->getResourceString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 485
    :goto_1
    if-eqz v10, :cond_1

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 488
    .end local v18           #title_res_id:I
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    :cond_2
    :goto_3
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mtab_root:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/search/SettingSearchManager;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 494
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 476
    .restart local v18       #title_res_id:I
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_1

    .line 485
    .end local v18           #title_res_id:I
    :cond_5
    if-eqz v10, :cond_2

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 482
    :catch_0
    move-exception v13

    .line 483
    .local v13, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "SettingSearchManager"

    const-string v3, "path : searchinfo NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    if-eqz v10, :cond_1

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 485
    .end local v13           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public getPreInfo(I)Lcom/android/settings/search/SearchItem;
    .locals 18
    .parameter "rowid"

    .prologue
    .line 315
    new-instance v7, Lcom/android/settings/search/SearchItem;

    invoke-direct {v7}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 317
    .local v7, addItem:Lcom/android/settings/search/SearchItem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, select:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, c:Landroid/database/Cursor;
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 322
    .local v10, cID_KEY:I
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 323
    .local v16, cTITLE:I
    const-string v1, "title_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 324
    .local v17, cTITLE_RES_ID:I
    const-string v1, "summary"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 325
    .local v14, cSUMMARY:I
    const-string v1, "summary_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 326
    .local v15, cSUMMARYE_RES_ID:I
    const-string v1, "icon_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 327
    .local v9, cICON_RES_ID:I
    const-string v1, "parentskey"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 328
    .local v12, cPARENTSKEY:I
    const-string v1, "menu_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 329
    .local v11, cMENU_TYPE:I
    const-string v1, "package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 331
    .local v13, cPakage_NAME:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    move/from16 v0, p1

    iput v0, v7, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 333
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 334
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 335
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 336
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 337
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 338
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 339
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 340
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 341
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 345
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 347
    return-object v7
.end method

.method public getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;
    .locals 19
    .parameter "key"

    .prologue
    .line 276
    new-instance v7, Lcom/android/settings/search/SearchItem;

    invoke-direct {v7}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 278
    .local v7, addItem:Lcom/android/settings/search/SearchItem;
    const-string v4, "id_key = ?"

    .line 280
    .local v4, select:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, c:Landroid/database/Cursor;
    const-string v1, "rowid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 283
    .local v14, cROWID:I
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 284
    .local v10, cID_KEY:I
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 285
    .local v17, cTITLE:I
    const-string v1, "title_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 286
    .local v18, cTITLE_RES_ID:I
    const-string v1, "summary"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 287
    .local v15, cSUMMARY:I
    const-string v1, "summary_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 288
    .local v16, cSUMMARYE_RES_ID:I
    const-string v1, "icon_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 289
    .local v9, cICON_RES_ID:I
    const-string v1, "parentskey"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 290
    .local v12, cPARENTSKEY:I
    const-string v1, "menu_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 291
    .local v11, cMENU_TYPE:I
    const-string v1, "package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 293
    .local v13, cPakage_NAME:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 295
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 296
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 297
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 298
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 299
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 300
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 301
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 302
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 303
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 307
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 309
    return-object v7
.end method

.method public getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v18, getItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 357
    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v18

    .line 359
    :cond_1
    const/4 v8, 0x0

    .line 362
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "title"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 365
    if-nez v8, :cond_2

    .line 394
    if-eqz v8, :cond_0

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 368
    :cond_2
    :try_start_1
    const-string v1, "suggest_intent_data_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 369
    .local v14, cROWID:I
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 370
    .local v10, cID_KEY:I
    const-string v1, "suggest_text_1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 371
    .local v16, cTITLE:I
    const-string v1, "suggest_icon_1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 372
    .local v9, cICON:I
    const-string v1, "suggest_text_2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 373
    .local v15, cSUMMARY:I
    const-string v1, "suggest_target_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 374
    .local v13, cMENU_TYPE:I
    const-string v1, "suggest_group"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 375
    .local v11, cMENU_PATH:I
    const-string v1, "suggest_extra_flags"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 377
    .local v12, cMENU_STATE:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    new-instance v7, Lcom/android/settings/search/SearchItem;

    invoke-direct {v7}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 380
    .local v7, addItem:Lcom/android/settings/search/SearchItem;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 381
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 382
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 383
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 384
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 385
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 386
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    .line 387
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->value:I

    .line 388
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 391
    .end local v7           #addItem:Lcom/android/settings/search/SearchItem;
    .end local v9           #cICON:I
    .end local v10           #cID_KEY:I
    .end local v11           #cMENU_PATH:I
    .end local v12           #cMENU_STATE:I
    .end local v13           #cMENU_TYPE:I
    .end local v14           #cROWID:I
    .end local v15           #cSUMMARY:I
    .end local v16           #cTITLE:I
    :catch_0
    move-exception v17

    .line 392
    .local v17, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    if-eqz v8, :cond_0

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 394
    .end local v17           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #cICON:I
    .restart local v10       #cID_KEY:I
    .restart local v11       #cMENU_PATH:I
    .restart local v12       #cMENU_STATE:I
    .restart local v13       #cMENU_TYPE:I
    .restart local v14       #cROWID:I
    .restart local v15       #cSUMMARY:I
    .restart local v16       #cTITLE:I
    :cond_3
    if-eqz v8, :cond_0

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 394
    .end local v9           #cICON:I
    .end local v10           #cID_KEY:I
    .end local v11           #cMENU_PATH:I
    .end local v12           #cMENU_STATE:I
    .end local v13           #cMENU_TYPE:I
    .end local v14           #cROWID:I
    .end local v15           #cSUMMARY:I
    .end local v16           #cTITLE:I
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;
    .locals 22
    .parameter "locale_change"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v19, getItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v20

    .line 221
    .local v20, numSearchinfo:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v21

    .line 223
    .local v21, numtitleinfo:I
    if-eqz p1, :cond_2

    .line 224
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    .line 225
    const/16 v21, 0x0

    .line 232
    :cond_0
    const-string v2, "SettingSearchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SEARCH MANAGER --> numtitleinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " numSearchinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v9, 0x0

    .line 235
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid between + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v21, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 236
    if-nez v9, :cond_3

    .line 265
    if-eqz v9, :cond_1

    .line 266
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 271
    .end local v9           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v19

    .line 226
    :cond_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 240
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v2, "id_key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 241
    .local v11, cID_KEY:I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 242
    .local v17, cTITLE:I
    const-string v2, "title_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 243
    .local v18, cTITLE_RES_ID:I
    const-string v2, "summary"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 244
    .local v15, cSUMMARY:I
    const-string v2, "summary_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 245
    .local v16, cSUMMARY_RES_ID:I
    const-string v2, "icon_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 246
    .local v10, cICON_RES_ID:I
    const-string v2, "menu_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 247
    .local v12, cMENU_TYPE:I
    const-string v2, "parentskey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 248
    .local v13, cPARENTSKEY:I
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 250
    .local v14, cPakage_NAME:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 252
    new-instance v8, Lcom/android/settings/search/SearchItem;

    invoke-direct {v8}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 253
    .local v8, addItem:Lcom/android/settings/search/SearchItem;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 254
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 255
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 256
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 257
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 258
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 259
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 260
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 261
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 262
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    .end local v8           #addItem:Lcom/android/settings/search/SearchItem;
    .end local v10           #cICON_RES_ID:I
    .end local v11           #cID_KEY:I
    .end local v12           #cMENU_TYPE:I
    .end local v13           #cPARENTSKEY:I
    .end local v14           #cPakage_NAME:I
    .end local v15           #cSUMMARY:I
    .end local v16           #cSUMMARY_RES_ID:I
    .end local v17           #cTITLE:I
    .end local v18           #cTITLE_RES_ID:I
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 266
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 265
    .restart local v10       #cICON_RES_ID:I
    .restart local v11       #cID_KEY:I
    .restart local v12       #cMENU_TYPE:I
    .restart local v13       #cPARENTSKEY:I
    .restart local v14       #cPakage_NAME:I
    .restart local v15       #cSUMMARY:I
    .restart local v16       #cSUMMARY_RES_ID:I
    .restart local v17       #cTITLE:I
    .restart local v18       #cTITLE_RES_ID:I
    :cond_5
    if-eqz v9, :cond_6

    .line 266
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_6
    const-string v2, "SettingSearchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SEARCH MANAGER --> getItem size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
