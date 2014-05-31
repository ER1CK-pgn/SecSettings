.class public Lcom/android/settings/settingssearch/SettingsSearchXmlParser;
.super Ljava/lang/Object;
.source "SettingsSearchXmlParser.java"


# static fields
.field private static final DBG:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

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
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->DBG:Z

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

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    .line 73
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mExceptionCount:I

    .line 75
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mCheckingExceptionCount:I

    .line 78
    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 80
    return-void
.end method


# virtual methods
.method public getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .parameter "resid"
    .parameter "parentsKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v8, 0x0

    .line 85
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    :try_start_0
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 89
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 93
    .local v2, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 96
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, nodeName:Ljava/lang/String;
    const-string v13, "preference-headers"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 98
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v6           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v4

    .line 200
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    const-string v13, "SettingHeaderXmlParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v8, :cond_2

    .line 203
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 205
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v1

    .line 103
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v6       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v3, 0x0

    .line 105
    .local v3, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 107
    .local v7, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_d

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v7, :cond_d

    .line 108
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 112
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 113
    const-string v13, "header"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 114
    new-instance v10, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v10}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 117
    .local v10, searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 119
    .local v9, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 122
    .local v5, id_key_num:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 126
    const/4 v13, 0x0

    iput v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 129
    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 130
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 132
    :cond_6
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_b

    .line 133
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    int-to-long v13, v13

    iput-wide v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 134
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v11, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 141
    :cond_7
    :goto_2
    const/4 v13, 0x3

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 142
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 144
    :cond_8
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_c

    .line 145
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    int-to-long v13, v13

    iput-wide v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 146
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v11, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 150
    :goto_3
    iget-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    if-nez v13, :cond_9

    .line 151
    const-string v13, ""

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 184
    :cond_9
    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 189
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 192
    const-string v13, "com.android.settings"

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 194
    iget v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 195
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 202
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #curBundle:Landroid/os/Bundle;
    .end local v5           #id_key_num:I
    .end local v6           #nodeName:Ljava/lang/String;
    .end local v7           #outerDepth:I
    .end local v9           #sa:Landroid/content/res/TypedArray;
    .end local v10           #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catchall_0
    move-exception v13

    if-eqz v8, :cond_a

    .line 203
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    throw v13

    .line 136
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #curBundle:Landroid/os/Bundle;
    .restart local v5       #id_key_num:I
    .restart local v6       #nodeName:Ljava/lang/String;
    .restart local v7       #outerDepth:I
    .restart local v9       #sa:Landroid/content/res/TypedArray;
    .restart local v10       #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_b
    :try_start_3
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_2

    .line 148
    :cond_c
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 202
    .end local v5           #id_key_num:I
    .end local v9           #sa:Landroid/content/res/TypedArray;
    .end local v10           #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_d
    if-eqz v8, :cond_2

    .line 203
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public getPreferencesScreenItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .parameter "resid"
    .parameter "parentsKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, addItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    :try_start_0
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 243
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 247
    .local v3, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 250
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, nodeName:Ljava/lang/String;
    const-string v13, "PreferenceScreen"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 252
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v5

    .line 364
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    const-string v13, "SettingHeaderXmlParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    if-eqz v9, :cond_2

    .line 368
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 370
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v1

    .line 257
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v4, 0x0

    .line 258
    .local v4, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 260
    .local v8, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_f

    .line 261
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 265
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 266
    const-string v13, "PreferenceCategory"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 268
    new-instance v11, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v11}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 271
    .local v11, searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    const-string v13, "CheckBoxPreference"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 272
    const/4 v13, 0x2

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 288
    :goto_2
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {v13, v3, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 290
    .local v10, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .local v6, i:I
    :goto_3
    if-ltz v6, :cond_d

    .line 291
    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 292
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 290
    :cond_6
    :goto_4
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 273
    .end local v2           #attr:I
    .end local v6           #i:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    :cond_7
    const-string v13, "SwitchPreferenceScreen"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "com.android.settings.SettingsSwitchPreference"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 275
    :cond_8
    const/4 v13, 0x1

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 367
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v4           #curBundle:Landroid/os/Bundle;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v11           #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v12           #type:I
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_9

    .line 368
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v13

    .line 277
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v4       #curBundle:Landroid/os/Bundle;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v11       #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .restart local v12       #type:I
    :cond_a
    const/4 v13, 0x0

    :try_start_3
    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_2

    .line 294
    .restart local v2       #attr:I
    .restart local v6       #i:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    :pswitch_1
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    goto :goto_4

    .line 297
    :pswitch_2
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    goto :goto_4

    .line 300
    :pswitch_3
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 301
    iget-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_b

    .line 302
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-wide v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 305
    :cond_b
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 309
    :pswitch_4
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 310
    iget-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_c

    .line 311
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-wide v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 316
    :goto_5
    iget-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    if-nez v13, :cond_6

    .line 317
    const-string v13, ""

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_4

    .line 314
    :cond_c
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_5

    .line 322
    :pswitch_5
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, 0x7f040189

    if-ne v13, v14, :cond_6

    .line 323
    const/4 v13, 0x3

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto/16 :goto_4

    .line 350
    .end local v2           #attr:I
    :cond_d
    const-string v13, "com.android.settings"

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 352
    if-nez v4, :cond_e

    .line 353
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #curBundle:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 357
    .restart local v4       #curBundle:Landroid/os/Bundle;
    :cond_e
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 359
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 367
    .end local v6           #i:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #searchItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_f
    if-eqz v9, :cond_2

    .line 368
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 292
    nop

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
