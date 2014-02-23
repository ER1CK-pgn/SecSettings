.class public Lcom/android/settings/search/SettingHeaderXmlParser;
.super Ljava/lang/Object;
.source "SettingHeaderXmlParser.java"


# static fields
.field private static final DBG:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final headerCheckMenu2013:[I

.field private final headerSwitchMenu:[I

.field private final headerSwitchMenu2013:[I

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Lcom/android/settings/search/SettingSearchManager;

.field xmlParserHeadFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xmlParserPreferenceFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/search/SettingHeaderXmlParser;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SettingHeaderXmlParser"

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    .line 61
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    .line 72
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    .line 74
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    .line 77
    sput-object p1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    .line 79
    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x79t 0x5t 0xbt 0x7ft
        0x7bt 0x5t 0xbt 0x7ft
        0x88t 0x5t 0xbt 0x7ft
        0x8at 0x5t 0xbt 0x7ft
        0x9at 0x5t 0xbt 0x7ft
        0x9bt 0x5t 0xbt 0x7ft
        0xa0t 0x5t 0xbt 0x7ft
        0xact 0x5t 0xbt 0x7ft
        0xadt 0x5t 0xbt 0x7ft
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x79t 0x5t 0xbt 0x7ft
        0x7bt 0x5t 0xbt 0x7ft
        0x88t 0x5t 0xbt 0x7ft
        0x8at 0x5t 0xbt 0x7ft
        0xadt 0x5t 0xbt 0x7ft
        0x9bt 0x5t 0xbt 0x7ft
        0xc6t 0x5t 0xbt 0x7ft
        0xc8t 0x5t 0xbt 0x7ft
        0xc9t 0x5t 0xbt 0x7ft
        0xact 0x5t 0xbt 0x7ft
        0x9at 0x5t 0xbt 0x7ft
        0xa0t 0x5t 0xbt 0x7ft
        0xc7t 0x5t 0xbt 0x7ft
        0xb0t 0x5t 0xbt 0x7ft
    .end array-data

    .line 68
    :array_2
    .array-data 0x4
        0x7et 0x5t 0xbt 0x7ft
        0xcbt 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method private addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;
    .locals 26
    .parameter "resid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/16 v17, 0x0

    .line 218
    .local v17, parser:Landroid/content/res/XmlResourceParser;
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 219
    .local v18, resource:Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 220
    .local v4, assets:Landroid/content/res/AssetManager;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 221
    .local v14, metrics:Landroid/util/DisplayMetrics;
    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 222
    .local v7, config:Landroid/content/res/Configuration;
    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v23

    iput-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 223
    new-instance v9, Landroid/content/res/Resources;

    invoke-direct {v9, v4, v14, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 225
    .local v9, defaultResources:Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v3, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :try_start_0
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 228
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 232
    .local v5, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, type:I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 235
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, nodeName:Ljava/lang/String;
    const-string v23, "preference-headers"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 237
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v5           #attrs:Landroid/util/AttributeSet;
    .end local v15           #nodeName:Ljava/lang/String;
    .end local v22           #type:I
    :catch_0
    move-exception v10

    .line 379
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v23, "SettingHeaderXmlParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v17, :cond_2

    .line 382
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    .line 384
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v3

    .line 242
    .restart local v5       #attrs:Landroid/util/AttributeSet;
    .restart local v15       #nodeName:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_3
    const/4 v8, 0x0

    .line 244
    .local v8, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    .line 246
    .local v16, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_19

    .line 247
    :cond_5
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 251
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 252
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 253
    new-instance v20, Lcom/android/settings/search/SearchItem;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 256
    .local v20, searchItem:Lcom/android/settings/search/SearchItem;
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 258
    .local v19, sa:Landroid/content/res/TypedArray;
    const/16 v23, 0x1

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 261
    .local v12, id_key_num:I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 262
    const v23, 0x7f0b059e

    move/from16 v0, v23

    if-ne v12, v0, :cond_8

    .line 263
    const-string v23, "Safety assistance"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 268
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 269
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 270
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v23, v0

    aget v23, v23, v11

    move/from16 v0, v23

    if-ne v0, v12, :cond_7

    .line 272
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v11, v0

    .line 270
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 264
    .end local v11           #i:I
    :cond_8
    const v23, 0x7f0b0599

    move/from16 v0, v23

    if-ne v12, v0, :cond_6

    .line 265
    const-string v23, "Call settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 381
    .end local v5           #attrs:Landroid/util/AttributeSet;
    .end local v8           #curBundle:Landroid/os/Bundle;
    .end local v12           #id_key_num:I
    .end local v15           #nodeName:Ljava/lang/String;
    .end local v16           #outerDepth:I
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v22           #type:I
    :catchall_0
    move-exception v23

    if-eqz v17, :cond_9

    .line 382
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v23

    .line 277
    .restart local v5       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #curBundle:Landroid/os/Bundle;
    .restart local v11       #i:I
    .restart local v12       #id_key_num:I
    .restart local v15       #nodeName:Ljava/lang/String;
    .restart local v16       #outerDepth:I
    .restart local v19       #sa:Landroid/content/res/TypedArray;
    .restart local v20       #searchItem:Lcom/android/settings/search/SearchItem;
    .restart local v22       #type:I
    :cond_a
    const/4 v11, 0x0

    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_e

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v23, v0

    aget v23, v23, v11

    move/from16 v0, v23

    if-ne v0, v12, :cond_b

    .line 279
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v11, v0

    .line 277
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 291
    .end local v11           #i:I
    :cond_c
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_e

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    aget v23, v23, v11

    move/from16 v0, v23

    if-ne v0, v12, :cond_d

    .line 293
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v11, v0

    .line 291
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 296
    :cond_d
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_6

    .line 302
    :cond_e
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 304
    .local v21, tv:Landroid/util/TypedValue;
    if-eqz v21, :cond_10

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 306
    :cond_f
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 307
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 308
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 318
    :cond_10
    :goto_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 319
    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 320
    const-string v23, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 336
    :cond_11
    :goto_8
    const v23, 0x7f0b057c

    move/from16 v0, v23

    if-ne v12, v0, :cond_12

    .line 337
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    const-string v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 347
    .local v6, cm:Landroid/net/ConnectivityManager;
    const-wide/32 v23, 0x7f090696

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 348
    const v23, 0x7f090696

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 353
    invoke-static {v6}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 354
    invoke-static {v6}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 359
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    :cond_12
    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 363
    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 365
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    .line 366
    const/4 v13, 0x0

    .local v13, index:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_13

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 370
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v13           #index:I
    :cond_13
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 313
    :cond_14
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_7

    .line 322
    :cond_15
    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 323
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 325
    :cond_16
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 326
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 327
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 331
    :goto_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_11

    .line 332
    const-string v23, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_8

    .line 329
    :cond_17
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    .line 366
    .restart local v13       #index:I
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 381
    .end local v11           #i:I
    .end local v12           #id_key_num:I
    .end local v13           #index:I
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v21           #tv:Landroid/util/TypedValue;
    :cond_19
    if-eqz v17, :cond_2

    .line 382
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method private addPreferencesScreenFromRes(I)Ljava/util/ArrayList;
    .locals 25
    .parameter "resid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    const/16 v16, 0x0

    .line 419
    .local v16, parser:Landroid/content/res/XmlResourceParser;
    sget-object v21, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 420
    .local v17, resource:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 421
    .local v4, assets:Landroid/content/res/AssetManager;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 422
    .local v13, metrics:Landroid/util/DisplayMetrics;
    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 423
    .local v7, config:Landroid/content/res/Configuration;
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 424
    new-instance v9, Landroid/content/res/Resources;

    invoke-direct {v9, v4, v13, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 425
    .local v9, defaultResources:Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v3, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :try_start_0
    sget-object v21, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 428
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 432
    .local v6, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, type:I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 435
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 436
    .local v14, nodeName:Ljava/lang/String;
    const-string v21, "PreferenceScreen"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 437
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v20           #type:I
    :catch_0
    move-exception v10

    .line 544
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v21, "SettingHeaderXmlParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    if-eqz v16, :cond_2

    .line 548
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 550
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v3

    .line 442
    .restart local v6       #attrs:Landroid/util/AttributeSet;
    .restart local v14       #nodeName:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_3
    const/4 v8, 0x0

    .line 443
    .local v8, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 445
    .local v15, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v15, :cond_16

    .line 446
    :cond_5
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 450
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 451
    const-string v21, "PreferenceCategory"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 453
    new-instance v19, Lcom/android/settings/search/SearchItem;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 455
    .local v19, searchItem:Lcom/android/settings/search/SearchItem;
    const-string v21, "CheckBoxPreference"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 456
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 464
    :goto_2
    sget-object v21, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    sget-object v22, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 466
    .local v18, sa:Landroid/content/res/TypedArray;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .local v11, i:I
    :goto_3
    if-ltz v11, :cond_d

    .line 467
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 468
    .local v5, attr:I
    packed-switch v5, :pswitch_data_0

    .line 466
    :cond_6
    :goto_4
    :pswitch_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 457
    .end local v5           #attr:I
    .end local v11           #i:I
    .end local v18           #sa:Landroid/content/res/TypedArray;
    :cond_7
    const-string v21, "SwitchPreferenceScreen"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "com.android.settings.SettingsSwitchPreference"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 459
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 547
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v8           #curBundle:Landroid/os/Bundle;
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #outerDepth:I
    .end local v19           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v20           #type:I
    :catchall_0
    move-exception v21

    if-eqz v16, :cond_9

    .line 548
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v21

    .line 461
    .restart local v6       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #curBundle:Landroid/os/Bundle;
    .restart local v14       #nodeName:Ljava/lang/String;
    .restart local v15       #outerDepth:I
    .restart local v19       #searchItem:Lcom/android/settings/search/SearchItem;
    .restart local v20       #type:I
    :cond_a
    const/16 v21, 0x0

    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_2

    .line 470
    .restart local v5       #attr:I
    .restart local v11       #i:I
    .restart local v18       #sa:Landroid/content/res/TypedArray;
    :pswitch_1
    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->iconResId:I

    goto :goto_4

    .line 473
    :pswitch_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    goto :goto_4

    .line 476
    :pswitch_3
    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 477
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, -0x1

    cmp-long v21, v21, v23

    if-eqz v21, :cond_b

    .line 478
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_4

    .line 481
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_4

    .line 485
    :pswitch_4
    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 486
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, -0x1

    cmp-long v21, v21, v23

    if-eqz v21, :cond_c

    .line 487
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 492
    :goto_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 493
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_4

    .line 490
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto :goto_5

    .line 498
    :pswitch_5
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    const v22, 0x7f040151

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 499
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_4

    .line 505
    .end local v5           #attr:I
    :cond_d
    const-string v21, "location_network"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 506
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 513
    :cond_e
    :goto_6
    const-string v21, "lock_after_timeout"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 514
    const-string v21, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 515
    const-wide/32 v21, 0x7f090056

    move-wide/from16 v0, v21

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 516
    const v21, 0x7f090056

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 520
    :cond_f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 521
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 522
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 525
    :cond_10
    if-nez v8, :cond_11

    .line 526
    new-instance v8, Landroid/os/Bundle;

    .end local v8           #curBundle:Landroid/os/Bundle;
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 529
    .restart local v8       #curBundle:Landroid/os/Bundle;
    :cond_11
    const-string v21, "com.android.settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 531
    const/4 v12, 0x0

    .local v12, index:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_12

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_15

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 535
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_12
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 507
    .end local v12           #index:I
    :cond_13
    const-string v21, "location_vzw_gps"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 508
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_6

    .line 509
    :cond_14
    const-string v21, "location_vzw_network"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 510
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 531
    .restart local v12       #index:I
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 547
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v18           #sa:Landroid/content/res/TypedArray;
    .end local v19           #searchItem:Lcom/android/settings/search/SearchItem;
    :cond_16
    if-eqz v16, :cond_2

    .line 548
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBlockSummaryMenu(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    const/16 v4, 0x1d

    new-array v0, v4, [Ljava/lang/String;

    const v4, 0x7f0b0579

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v4, 0x7f0b057b

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const-string v5, "unlock_set_or_change"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "screen_timeout"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "touch_key_light"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "MONOTYPE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "font_size"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "tts_settings_preference"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "air_view_mode"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "date"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "time"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "timezone"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "date_format"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "device_name"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "device_model"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "firmware_version"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, "baseband_version"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, "kernel_version"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, "build_number"

    aput-object v5, v0, v4

    const/16 v4, 0x13

    const-string v5, "selinux_status"

    aput-object v5, v0, v4

    const/16 v4, 0x14

    const-string v5, "lock_after_timeout"

    aput-object v5, v0, v4

    const/16 v4, 0x15

    const-string v5, "voice_input_control_incomming_calls"

    aput-object v5, v0, v4

    const/16 v4, 0x16

    const-string v5, "voice_input_control_chatonv"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, "voice_input_control_alarm"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, "voice_input_control_camera"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, "voice_input_control_music"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, "phone_vibration"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, "signature_verification_level"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, "power_saving_auto_turn_on"

    aput-object v5, v0, v4

    .line 567
    .local v0, blockSummaryMenuKey:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 568
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    :goto_1
    return v2

    .line 567
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 571
    goto :goto_1
.end method


# virtual methods
.method public initSearchDB()V
    .locals 12

    .prologue
    .line 82
    new-instance v8, Lcom/android/settings/search/SettingsSearchUtils;

    sget-object v9, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    .line 83
    .local v8, searchUtils:Lcom/android/settings/search/SettingsSearchUtils;
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 84
    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getSearchMenuInfo()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 86
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 89
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-nez v9, :cond_1

    .line 90
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 91
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 95
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v7, searchItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 102
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 105
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addPreferencesScreenFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 108
    :cond_4
    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getAddSearchMenuInCode()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 112
    .local v5, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SearchItem;

    .line 113
    .local v4, item:Lcom/android/settings/search/SearchItem;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 116
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/settings/search/SearchItem;
    .end local v5           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v9, v6}, Lcom/android/settings/search/SettingSearchManager;->addSearchInfoDB(Ljava/util/ArrayList;)V

    .line 117
    const-string v9, "SettingHeaderXmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xml Preference exception count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and Checking exception count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public initTitleDB(Z)V
    .locals 22
    .parameter "locale_change"

    .prologue
    .line 123
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v13, searchItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, ItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 128
    .local v5, defaultLocale:Ljava/util/Locale;
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 129
    .local v12, resource:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 130
    .local v3, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 131
    .local v10, metrics:Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 132
    .local v4, config:Landroid/content/res/Configuration;
    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 133
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v3, v10, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 135
    .local v6, defaultResources:Landroid/content/res/Resources;
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 139
    const-string v17, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " SEARCH MANAGER --> getItem size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 142
    new-instance v15, Lcom/android/settings/search/SearchItem;

    invoke-direct {v15}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 143
    .local v15, textInfoItem:Lcom/android/settings/search/SearchItem;
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.settings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 145
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 148
    .local v11, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 158
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 159
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v16, v0

    .line 160
    .local v16, titleId:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 162
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 179
    :goto_1
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 181
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v14, v0

    .line 182
    .local v14, summaryId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    .line 185
    :try_start_1
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 200
    :goto_2
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v18, v0

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    .line 204
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 206
    iput-object v9, v15, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 150
    .end local v14           #summaryId:I
    .end local v16           #titleId:I
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 152
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "SettingHeaderXmlParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initTitleDB pakageName"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 211
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #textInfoItem:Lcom/android/settings/search/SearchItem;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SettingSearchManager;->addTextInfoDB(Ljava/util/ArrayList;)V

    .line 212
    const-string v17, "SettingHeaderXmlParser"

    const-string v18, " SEARCH MANAGER --> finish text write"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 165
    .restart local v15       #textInfoItem:Lcom/android/settings/search/SearchItem;
    .restart local v16       #titleId:I
    :cond_2
    :try_start_2
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 166
    :catch_1
    move-exception v7

    .line 167
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 169
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 173
    :goto_4
    const-string v18, "SettingHeaderXmlParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotFoundException #1 : i = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ", searchItem.get(i).titleResId = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 171
    :cond_3
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 186
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v14       #summaryId:I
    :catch_2
    move-exception v7

    .line 187
    .restart local v7       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "SettingHeaderXmlParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotFoundException #2 : i = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ", searchItem.get(i).summaryResId = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 189
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_3

    .line 193
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_4
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 194
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2

    .line 196
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2
.end method
