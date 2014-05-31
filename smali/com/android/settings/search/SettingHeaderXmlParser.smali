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

    .line 77
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
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    .line 73
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    .line 75
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    .line 78
    sput-object p1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    .line 80
    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0xeft 0x5t 0xbt 0x7ft
        0xf1t 0x5t 0xbt 0x7ft
        0xfft 0x5t 0xbt 0x7ft
        0x1t 0x6t 0xbt 0x7ft
        0x11t 0x6t 0xbt 0x7ft
        0x12t 0x6t 0xbt 0x7ft
        0x17t 0x6t 0xbt 0x7ft
        0x23t 0x6t 0xbt 0x7ft
        0x24t 0x6t 0xbt 0x7ft
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0xeft 0x5t 0xbt 0x7ft
        0xf1t 0x5t 0xbt 0x7ft
        0xfft 0x5t 0xbt 0x7ft
        0x1t 0x6t 0xbt 0x7ft
        0x24t 0x6t 0xbt 0x7ft
        0x12t 0x6t 0xbt 0x7ft
        0x57t 0x6t 0xbt 0x7ft
        0x59t 0x6t 0xbt 0x7ft
        0x5at 0x6t 0xbt 0x7ft
        0x23t 0x6t 0xbt 0x7ft
        0x11t 0x6t 0xbt 0x7ft
        0x17t 0x6t 0xbt 0x7ft
        0x58t 0x6t 0xbt 0x7ft
        0x29t 0x6t 0xbt 0x7ft
        0xf3t 0x5t 0xbt 0x7ft
        0xf6t 0x5t 0xbt 0x7ft
    .end array-data

    .line 68
    :array_2
    .array-data 0x4
        0xf4t 0x5t 0xbt 0x7ft
        0x4ft 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method private addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;
    .locals 20
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
    .line 214
    const/4 v12, 0x0

    .line 216
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :try_start_0
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 220
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 224
    .local v3, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 227
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, nodeName:Ljava/lang/String;
    const-string v17, "preference-headers"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 229
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v10           #nodeName:Ljava/lang/String;
    .end local v16           #type:I
    :catch_0
    move-exception v6

    .line 371
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    const-string v17, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    if-eqz v12, :cond_2

    .line 374
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 376
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v2

    .line 234
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v10       #nodeName:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_3
    const/4 v5, 0x0

    .line 236
    .local v5, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 238
    .local v11, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_19

    .line 239
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 243
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 244
    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 245
    new-instance v14, Lcom/android/settings/search/SearchItem;

    invoke-direct {v14}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 248
    .local v14, searchItem:Lcom/android/settings/search/SearchItem;
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 250
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 253
    .local v8, id_key_num:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 254
    const v17, 0x7f0b0615

    move/from16 v0, v17

    if-ne v8, v0, :cond_8

    .line 255
    const-string v17, "Safety assistance"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 260
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 261
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 262
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_7

    .line 264
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .line 262
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 256
    .end local v7           #i:I
    :cond_8
    const v17, 0x7f0b0610

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 257
    const-string v17, "Call settings"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 373
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v5           #curBundle:Landroid/os/Bundle;
    .end local v8           #id_key_num:I
    .end local v10           #nodeName:Ljava/lang/String;
    .end local v11           #outerDepth:I
    .end local v13           #sa:Landroid/content/res/TypedArray;
    .end local v14           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v16           #type:I
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_9

    .line 374
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v17

    .line 269
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v5       #curBundle:Landroid/os/Bundle;
    .restart local v7       #i:I
    .restart local v8       #id_key_num:I
    .restart local v10       #nodeName:Ljava/lang/String;
    .restart local v11       #outerDepth:I
    .restart local v13       #sa:Landroid/content/res/TypedArray;
    .restart local v14       #searchItem:Lcom/android/settings/search/SearchItem;
    .restart local v16       #type:I
    :cond_a
    const/4 v7, 0x0

    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_e

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_b

    .line 271
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .line 269
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 283
    .end local v7           #i:I
    :cond_c
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_e

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_d

    .line 285
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .line 283
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 288
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_6

    .line 294
    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 296
    .local v15, tv:Landroid/util/TypedValue;
    if-eqz v15, :cond_10

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 298
    :cond_f
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 299
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 300
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 310
    :cond_10
    :goto_7
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 311
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 312
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 328
    :cond_11
    :goto_8
    const v17, 0x7f0b05f2

    move/from16 v0, v17

    if-ne v8, v0, :cond_12

    .line 329
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 339
    .local v4, cm:Landroid/net/ConnectivityManager;
    const-wide/32 v17, 0x7f090702

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 340
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090702

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 345
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 346
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 351
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    :cond_12
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 355
    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 357
    iget v0, v14, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 358
    const/4 v9, 0x0

    .local v9, index:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 362
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v9           #index:I
    :cond_13
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 305
    :cond_14
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_7

    .line 314
    :cond_15
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 315
    if-eqz v15, :cond_11

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 317
    :cond_16
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 318
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 319
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 323
    :goto_a
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 324
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_8

    .line 321
    :cond_17
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    .line 358
    .restart local v9       #index:I
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 373
    .end local v7           #i:I
    .end local v8           #id_key_num:I
    .end local v9           #index:I
    .end local v13           #sa:Landroid/content/res/TypedArray;
    .end local v14           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v15           #tv:Landroid/util/TypedValue;
    :cond_19
    if-eqz v12, :cond_2

    .line 374
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method private addPreferencesScreenFromRes(I)Ljava/util/ArrayList;
    .locals 18
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
    .line 409
    const/4 v10, 0x0

    .line 411
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v1, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :try_start_0
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 414
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 418
    .local v3, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 421
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, nodeName:Ljava/lang/String;
    const-string v14, "PreferenceScreen"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 423
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v13           #type:I
    :catch_0
    move-exception v5

    .line 537
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    const-string v14, "SettingHeaderXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    if-eqz v10, :cond_2

    .line 541
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 543
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v1

    .line 428
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #nodeName:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_3
    const/4 v4, 0x0

    .line 429
    .local v4, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 431
    .local v9, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_17

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_17

    .line 432
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 436
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 437
    const-string v14, "PreferenceCategory"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 439
    new-instance v12, Lcom/android/settings/search/SearchItem;

    invoke-direct {v12}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 441
    .local v12, searchItem:Lcom/android/settings/search/SearchItem;
    const-string v14, "CheckBoxPreference"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 442
    const/4 v14, 0x2

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 450
    :goto_2
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {v14, v3, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 452
    .local v11, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .local v6, i:I
    :goto_3
    if-ltz v6, :cond_d

    .line 453
    invoke-virtual {v11, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 454
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 452
    :cond_6
    :goto_4
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 443
    .end local v2           #attr:I
    .end local v6           #i:I
    .end local v11           #sa:Landroid/content/res/TypedArray;
    :cond_7
    const-string v14, "SwitchPreferenceScreen"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "com.android.settings.SettingsSwitchPreference"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 445
    :cond_8
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 540
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v4           #curBundle:Landroid/os/Bundle;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v9           #outerDepth:I
    .end local v12           #searchItem:Lcom/android/settings/search/SearchItem;
    .end local v13           #type:I
    :catchall_0
    move-exception v14

    if-eqz v10, :cond_9

    .line 541
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v14

    .line 447
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v4       #curBundle:Landroid/os/Bundle;
    .restart local v8       #nodeName:Ljava/lang/String;
    .restart local v9       #outerDepth:I
    .restart local v12       #searchItem:Lcom/android/settings/search/SearchItem;
    .restart local v13       #type:I
    :cond_a
    const/4 v14, 0x0

    :try_start_3
    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_2

    .line 456
    .restart local v2       #attr:I
    .restart local v6       #i:I
    .restart local v11       #sa:Landroid/content/res/TypedArray;
    :pswitch_1
    const/4 v14, -0x1

    invoke-virtual {v11, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v12, Lcom/android/settings/search/SearchItem;->iconResId:I

    goto :goto_4

    .line 459
    :pswitch_2
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    goto :goto_4

    .line 462
    :pswitch_3
    const/4 v14, -0x1

    invoke-virtual {v11, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 463
    iget-wide v14, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b

    .line 464
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v15, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 467
    :cond_b
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 471
    :pswitch_4
    const/4 v14, -0x1

    invoke-virtual {v11, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 472
    iget-wide v14, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_c

    .line 473
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v15, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 478
    :goto_5
    iget-object v14, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 479
    const-string v14, ""

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto :goto_4

    .line 476
    :cond_c
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto :goto_5

    .line 484
    :pswitch_5
    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const v15, 0x7f040189

    if-ne v14, v15, :cond_6

    .line 485
    const/4 v14, 0x3

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_4

    .line 491
    .end local v2           #attr:I
    :cond_d
    const-string v14, "location_network"

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 492
    const/4 v14, 0x2

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 499
    :cond_e
    :goto_6
    const-string v14, "lock_after_timeout"

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 500
    const-string v14, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 501
    const-wide/32 v14, 0x7f09006d

    iput-wide v14, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 502
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09006d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 506
    :cond_f
    const-string v14, "usb_tether_settings"

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 507
    const-string v14, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 508
    const-wide/32 v14, 0x7f090705

    iput-wide v14, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 509
    sget-object v14, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090705

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 513
    :cond_10
    iget-object v14, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 514
    const-wide/16 v14, -0x1

    iput-wide v14, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 515
    const-string v14, ""

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 518
    :cond_11
    if-nez v4, :cond_12

    .line 519
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #curBundle:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 522
    .restart local v4       #curBundle:Landroid/os/Bundle;
    :cond_12
    const-string v14, "com.android.settings"

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 524
    const/4 v7, 0x0

    .local v7, index:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_13

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget-object v14, v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v14, v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_16

    .line 527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget-object v14, v14, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_13
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 493
    .end local v7           #index:I
    :cond_14
    const-string v14, "location_vzw_gps"

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 494
    const/4 v14, 0x2

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_6

    .line 495
    :cond_15
    const-string v14, "location_vzw_network"

    iget-object v15, v12, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 496
    const/4 v14, 0x2

    iput v14, v12, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 524
    .restart local v7       #index:I
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 540
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v11           #sa:Landroid/content/res/TypedArray;
    .end local v12           #searchItem:Lcom/android/settings/search/SearchItem;
    :cond_17
    if-eqz v10, :cond_2

    .line 541
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 454
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

    .line 548
    const/16 v4, 0x1f

    new-array v0, v4, [Ljava/lang/String;

    const v4, 0x7f0b05ef

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v4, 0x7f0b05f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "unlock_set_or_change"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "screen_timeout"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "touch_key_light"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "MONOTYPE"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "font_size"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "tts_settings_preference"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "air_view_mode"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "date"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "time"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "timezone"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "date_format"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "device_name"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "device_model"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, "firmware_version"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, "baseband_version"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, "kernel_version"

    aput-object v5, v0, v4

    const/16 v4, 0x13

    const-string v5, "build_number"

    aput-object v5, v0, v4

    const/16 v4, 0x14

    const-string v5, "selinux_status"

    aput-object v5, v0, v4

    const/16 v4, 0x15

    const-string v5, "lock_after_timeout"

    aput-object v5, v0, v4

    const/16 v4, 0x16

    const-string v5, "voice_input_control_incomming_calls"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, "voice_input_control_chatonv"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, "voice_input_control_alarm"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, "voice_input_control_camera"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, "voice_input_control_music"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, "phone_vibration"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, "signature_verification_level"

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    const-string v5, "power_saving_auto_turn_on"

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    const-string v5, "location_mode"

    aput-object v5, v0, v4

    .line 560
    .local v0, blockSummaryMenuKey:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 561
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    :goto_1
    return v2

    .line 560
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 564
    goto :goto_1
.end method


# virtual methods
.method public initSearchDB()V
    .locals 12

    .prologue
    .line 83
    new-instance v8, Lcom/android/settings/search/SettingsSearchUtils;

    sget-object v9, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    .line 84
    .local v8, searchUtils:Lcom/android/settings/search/SettingsSearchUtils;
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getSearchMenuInfo()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 87
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    .line 89
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 90
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-nez v9, :cond_1

    .line 91
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

    .line 92
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
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

    .line 96
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

    .line 101
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v7, searchItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 103
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 106
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addPreferencesScreenFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getAddSearchMenuInCode()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
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

    .line 113
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

    .line 114
    .local v4, item:Lcom/android/settings/search/SearchItem;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 117
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/settings/search/SearchItem;
    .end local v5           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v9, v6}, Lcom/android/settings/search/SettingSearchManager;->addSearchInfoDB(Ljava/util/ArrayList;)V

    .line 118
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

    .line 120
    return-void
.end method

.method public initTitleDB(Z)V
    .locals 22
    .parameter "locale_change"

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, ItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 127
    .local v5, defaultLocale:Ljava/util/Locale;
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 128
    .local v12, resource:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 129
    .local v3, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 130
    .local v10, metrics:Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 131
    .local v4, config:Landroid/content/res/Configuration;
    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 132
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v3, v10, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 134
    .local v6, defaultResources:Landroid/content/res/Resources;
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 137
    .local v13, searchItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
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

    .line 138
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 140
    new-instance v15, Lcom/android/settings/search/SearchItem;

    invoke-direct {v15}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 141
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

    .line 143
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 146
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

    .line 156
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

    .line 157
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v16, v0

    .line 158
    .local v16, titleId:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 160
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 177
    :goto_1
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 179
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v14, v0

    .line 180
    .local v14, summaryId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    .line 183
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

    .line 198
    :goto_2
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 200
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

    .line 202
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 204
    iput-object v9, v15, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 148
    .end local v14           #summaryId:I
    .end local v16           #titleId:I
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 150
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

    .line 151
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 209
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

    .line 210
    const-string v17, "SettingHeaderXmlParser"

    const-string v18, " SEARCH MANAGER --> finish text write"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 163
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

    .line 164
    :catch_1
    move-exception v7

    .line 165
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 167
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 171
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

    .line 172
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 169
    :cond_3
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 184
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v14       #summaryId:I
    :catch_2
    move-exception v7

    .line 185
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

    .line 186
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 187
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_3

    .line 191
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_4
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 192
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2

    .line 194
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2
.end method
