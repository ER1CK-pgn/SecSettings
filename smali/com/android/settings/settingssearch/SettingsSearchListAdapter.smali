.class public Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/settingssearch/SettingsSearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "keyWord"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 27
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 30
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 32
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    .line 264
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 280
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 40
    iput p2, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    .line 41
    iput-object p4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "view"
    .parameter "title"
    .parameter "keyword"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 252
    .local v0, paint:Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v2

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, prefixForIndian:[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 261
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "title"
    .parameter "keyword"

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 230
    .local v1, index:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 244
    const/4 v1, -0x1

    .line 246
    :cond_1
    return v1

    .line 233
    :cond_2
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, word:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 235
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    add-int/lit8 v1, v1, 0x1

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 60
    :cond_0
    const/16 v18, 0x0

    .line 225
    :goto_0
    return-object v18

    .line 63
    :cond_1
    move-object/from16 v18, p2

    .line 65
    .local v18, row:Landroid/view/View;
    if-nez v18, :cond_3

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 67
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 69
    new-instance v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    .line 70
    .local v12, itemHolder:Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    const v27, 0x7f0b0430

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 71
    const v27, 0x7f0b0431

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 73
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    aget-object v11, v27, p1

    .line 80
    .local v11, item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    if-eqz v11, :cond_12

    .line 81
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 82
    const v27, 0x7f0b0433

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 83
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_2
    const v27, 0x7f0b042f

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 91
    .local v24, titleLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 93
    const/4 v13, 0x0

    .line 94
    .local v13, keyWordString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 99
    :goto_3
    const/16 v23, 0x0

    .line 100
    .local v23, title:Ljava/lang/String;
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 105
    :goto_4
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    .local v20, spanTitle:Landroid/text/Spannable;
    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, arrayKey:[Ljava/lang/String;
    const/4 v9, -0x1

    .line 108
    .local v9, indexof:I
    const/4 v15, 0x0

    .line 109
    .local v15, length:I
    const/4 v5, 0x0

    .line 110
    .local v5, addOffset:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_9

    .line 111
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, keyword:Ljava/lang/String;
    if-nez v14, :cond_7

    .line 113
    aget-object v27, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 114
    aget-object v27, v6, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v15

    .line 115
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_2

    .line 116
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v15, v9

    const/16 v29, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    :cond_2
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 75
    .end local v5           #addOffset:I
    .end local v6           #arrayKey:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #indexof:I
    .end local v11           #item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v12           #itemHolder:Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    .end local v13           #keyWordString:Ljava/lang/String;
    .end local v14           #keyword:Ljava/lang/String;
    .end local v15           #length:I
    .end local v20           #spanTitle:Landroid/text/Spannable;
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #titleLayout:Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    .restart local v12       #itemHolder:Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    goto/16 :goto_1

    .line 86
    .restart local v11       #item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_4
    const v27, 0x7f0b0433

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 87
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 97
    .restart local v13       #keyWordString:Ljava/lang/String;
    .restart local v24       #titleLayout:Landroid/widget/LinearLayout;
    :cond_5
    const-string v13, ""

    goto/16 :goto_3

    .line 103
    .restart local v23       #title:Ljava/lang/String;
    :cond_6
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_4

    .line 119
    .restart local v5       #addOffset:I
    .restart local v6       #arrayKey:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #indexof:I
    .restart local v14       #keyword:Ljava/lang/String;
    .restart local v15       #length:I
    .restart local v20       #spanTitle:Landroid/text/Spannable;
    :cond_7
    const/16 v21, 0x0

    .line 120
    .local v21, startOffset:I
    const/4 v7, 0x0

    .line 122
    .local v7, endOffset:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, lowserStr:Ljava/lang/String;
    move-object/from16 v25, v23

    .line 125
    .local v25, upperStr:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 126
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 127
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    .line 133
    :goto_7
    if-ltz v21, :cond_2

    .line 134
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v21, v5

    add-int v29, v7, v5

    const/16 v30, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 137
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 138
    add-int/2addr v5, v7

    goto :goto_6

    .line 129
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 130
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    goto :goto_7

    .line 142
    .end local v7           #endOffset:I
    .end local v14           #keyword:Ljava/lang/String;
    .end local v16           #lowserStr:Ljava/lang/String;
    .end local v21           #startOffset:I
    .end local v25           #upperStr:Ljava/lang/String;
    :cond_9
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    const/16 v22, 0x0

    .line 146
    .local v22, summary:Ljava/lang/String;
    const/4 v5, 0x0

    .line 147
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    .line 148
    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v27, v0

    const-wide/16 v29, -0x1

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 153
    :cond_a
    :goto_8
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v19, spanSummary:Landroid/text/Spannable;
    const/4 v8, 0x0

    :goto_9
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_f

    .line 156
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 157
    .restart local v14       #keyword:Ljava/lang/String;
    if-nez v14, :cond_d

    .line 158
    aget-object v27, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 159
    aget-object v27, v6, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v15

    .line 160
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_b

    .line 161
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v15, v9

    const/16 v29, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 155
    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 151
    .end local v14           #keyword:Ljava/lang/String;
    .end local v19           #spanSummary:Landroid/text/Spannable;
    :cond_c
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_8

    .line 164
    .restart local v14       #keyword:Ljava/lang/String;
    .restart local v19       #spanSummary:Landroid/text/Spannable;
    :cond_d
    const/16 v21, 0x0

    .line 165
    .restart local v21       #startOffset:I
    const/4 v7, 0x0

    .line 167
    .restart local v7       #endOffset:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 168
    .restart local v16       #lowserStr:Ljava/lang/String;
    move-object/from16 v25, v22

    .line 170
    .restart local v25       #upperStr:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 171
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 172
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    .line 178
    :goto_b
    if-ltz v21, :cond_b

    .line 179
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v21, v5

    add-int v29, v7, v5

    const/16 v30, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 183
    add-int/2addr v5, v7

    goto :goto_a

    .line 174
    :cond_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 175
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    goto :goto_b

    .line 187
    .end local v7           #endOffset:I
    .end local v14           #keyword:Ljava/lang/String;
    .end local v16           #lowserStr:Ljava/lang/String;
    .end local v21           #startOffset:I
    .end local v25           #upperStr:Ljava/lang/String;
    :cond_f
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 188
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    :cond_10
    const v27, 0x7f0b0432

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 193
    .local v17, menuTypeLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 195
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 196
    new-instance v27, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    .line 197
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 199
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v27, v0

    if-eqz v27, :cond_13

    const/16 v27, 0x1

    :goto_c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 201
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 203
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    :cond_11
    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 223
    .end local v5           #addOffset:I
    .end local v6           #arrayKey:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #indexof:I
    .end local v13           #keyWordString:Ljava/lang/String;
    .end local v15           #length:I
    .end local v17           #menuTypeLayout:Landroid/widget/LinearLayout;
    .end local v19           #spanSummary:Landroid/text/Spannable;
    .end local v20           #spanTitle:Landroid/text/Spannable;
    .end local v22           #summary:Ljava/lang/String;
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #titleLayout:Landroid/widget/LinearLayout;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 200
    .restart local v5       #addOffset:I
    .restart local v6       #arrayKey:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #indexof:I
    .restart local v13       #keyWordString:Ljava/lang/String;
    .restart local v15       #length:I
    .restart local v17       #menuTypeLayout:Landroid/widget/LinearLayout;
    .restart local v19       #spanSummary:Landroid/text/Spannable;
    .restart local v20       #spanTitle:Landroid/text/Spannable;
    .restart local v22       #summary:Ljava/lang/String;
    .restart local v23       #title:Ljava/lang/String;
    .restart local v24       #titleLayout:Landroid/widget/LinearLayout;
    :cond_13
    const/16 v27, 0x0

    goto :goto_c

    .line 205
    :cond_14
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 206
    new-instance v27, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    .line 207
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 210
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v27, v0

    if-eqz v27, :cond_15

    const/16 v27, 0x1

    :goto_e
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 211
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 213
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_d

    .line 210
    :cond_15
    const/16 v27, 0x0

    goto :goto_e

    .line 215
    :cond_16
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 217
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    const v27, 0x7f040187

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 218
    .local v26, view:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d
.end method
