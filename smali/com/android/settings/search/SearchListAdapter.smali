.class public Lcom/android/settings/search/SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/search/SearchItem;",
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

.field private mSearchList:[Lcom/android/settings/search/SearchItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 30
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 32
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/search/SearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/search/SearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    .line 265
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$1;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 281
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$2;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 40
    iput p2, p0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    .line 41
    iput-object p4, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "view"
    .parameter "title"
    .parameter "keyword"

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 253
    .local v0, paint:Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v2

    .line 256
    :cond_1
    const/4 v1, 0x0

    .line 257
    .local v1, prefixForIndian:[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 262
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "title"
    .parameter "keyword"

    .prologue
    .line 230
    const/4 v1, -0x1

    .line 231
    .local v1, index:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 245
    const/4 v1, -0x1

    .line 247
    :cond_1
    return v1

    .line 234
    :cond_2
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, word:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 236
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 238
    goto :goto_0

    .line 240
    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/search/SearchItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 60
    :cond_0
    const/16 v19, 0x0

    .line 226
    :goto_0
    return-object v19

    .line 63
    :cond_1
    move-object/from16 v19, p2

    .line 65
    .local v19, row:Landroid/view/View;
    if-nez v19, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "layout_inflater"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 67
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 69
    new-instance v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    .line 70
    .local v12, itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    const v28, 0x7f0b03c9

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 71
    const v28, 0x7f0b03ca

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 73
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v28, v0

    aget-object v11, v28, p1

    .line 80
    .local v11, item:Lcom/android/settings/search/SearchItem;
    if-eqz v11, :cond_12

    .line 81
    const v28, 0x7f0b03c7

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 82
    .local v17, menuIconLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    iget v0, v11, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 84
    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x11

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 87
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    iget v0, v11, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_2
    const v28, 0x7f0b03c8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 92
    .local v25, titleLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 94
    const/4 v13, 0x0

    .line 95
    .local v13, keyWordString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 100
    :goto_2
    const/16 v24, 0x0

    .line 101
    .local v24, title:Ljava/lang/String;
    iget-object v0, v11, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    iget-wide v0, v11, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 106
    :goto_3
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v21, spanTitle:Landroid/text/Spannable;
    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, arrayKey:[Ljava/lang/String;
    const/4 v9, -0x1

    .line 109
    .local v9, indexof:I
    const/4 v15, 0x0

    .line 110
    .local v15, length:I
    const/4 v5, 0x0

    .line 111
    .local v5, addOffset:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v8, v0, :cond_9

    .line 112
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    aget-object v29, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/search/SearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, keyword:Ljava/lang/String;
    if-nez v14, :cond_7

    .line 114
    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 115
    aget-object v28, v6, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v15

    .line 116
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_3

    .line 117
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    const v29, -0xff0001

    invoke-direct/range {v28 .. v29}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v15, v9

    const/16 v30, 0x12

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 111
    :cond_3
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 75
    .end local v5           #addOffset:I
    .end local v6           #arrayKey:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #indexof:I
    .end local v11           #item:Lcom/android/settings/search/SearchItem;
    .end local v12           #itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    .end local v13           #keyWordString:Ljava/lang/String;
    .end local v14           #keyword:Ljava/lang/String;
    .end local v15           #length:I
    .end local v17           #menuIconLayout:Landroid/widget/LinearLayout;
    .end local v21           #spanTitle:Landroid/text/Spannable;
    .end local v24           #title:Ljava/lang/String;
    .end local v25           #titleLayout:Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    .restart local v12       #itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    goto/16 :goto_1

    .line 98
    .restart local v11       #item:Lcom/android/settings/search/SearchItem;
    .restart local v13       #keyWordString:Ljava/lang/String;
    .restart local v17       #menuIconLayout:Landroid/widget/LinearLayout;
    .restart local v25       #titleLayout:Landroid/widget/LinearLayout;
    :cond_5
    const-string v13, ""

    goto/16 :goto_2

    .line 104
    .restart local v24       #title:Ljava/lang/String;
    :cond_6
    iget-object v0, v11, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_3

    .line 120
    .restart local v5       #addOffset:I
    .restart local v6       #arrayKey:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #indexof:I
    .restart local v14       #keyword:Ljava/lang/String;
    .restart local v15       #length:I
    .restart local v21       #spanTitle:Landroid/text/Spannable;
    :cond_7
    const/16 v22, 0x0

    .line 121
    .local v22, startOffset:I
    const/4 v7, 0x0

    .line 123
    .local v7, endOffset:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, lowserStr:Ljava/lang/String;
    move-object/from16 v26, v24

    .line 126
    .local v26, upperStr:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 127
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 128
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    .line 134
    :goto_6
    if-ltz v22, :cond_3

    .line 135
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    const v29, -0xff0001

    invoke-direct/range {v28 .. v29}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v22, v5

    add-int v30, v7, v5

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 138
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 139
    add-int/2addr v5, v7

    goto :goto_5

    .line 130
    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 131
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    goto :goto_6

    .line 143
    .end local v7           #endOffset:I
    .end local v14           #keyword:Ljava/lang/String;
    .end local v16           #lowserStr:Ljava/lang/String;
    .end local v22           #startOffset:I
    .end local v26           #upperStr:Ljava/lang/String;
    :cond_9
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    const/16 v23, 0x0

    .line 147
    .local v23, summary:Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    iget-object v0, v11, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    .line 149
    iget-wide v0, v11, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-eqz v28, :cond_a

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    iget-wide v0, v11, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 154
    :cond_a
    :goto_7
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v20, spanSummary:Landroid/text/Spannable;
    const/4 v8, 0x0

    :goto_8
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v8, v0, :cond_f

    .line 157
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    aget-object v29, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/search/SearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .restart local v14       #keyword:Ljava/lang/String;
    if-nez v14, :cond_d

    .line 159
    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 160
    aget-object v28, v6, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v15

    .line 161
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_b

    .line 162
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    const v29, -0xff0001

    invoke-direct/range {v28 .. v29}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v15, v9

    const/16 v30, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 156
    :cond_b
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 152
    .end local v14           #keyword:Ljava/lang/String;
    .end local v20           #spanSummary:Landroid/text/Spannable;
    :cond_c
    iget-object v0, v11, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_7

    .line 165
    .restart local v14       #keyword:Ljava/lang/String;
    .restart local v20       #spanSummary:Landroid/text/Spannable;
    :cond_d
    const/16 v22, 0x0

    .line 166
    .restart local v22       #startOffset:I
    const/4 v7, 0x0

    .line 168
    .restart local v7       #endOffset:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 169
    .restart local v16       #lowserStr:Ljava/lang/String;
    move-object/from16 v26, v23

    .line 171
    .restart local v26       #upperStr:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 172
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 173
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    .line 179
    :goto_a
    if-ltz v22, :cond_b

    .line 180
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    const v29, -0xff0001

    invoke-direct/range {v28 .. v29}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v22, v5

    add-int v30, v7, v5

    const/16 v31, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 183
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 184
    add-int/2addr v5, v7

    goto :goto_9

    .line 175
    :cond_e
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 176
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    goto :goto_a

    .line 188
    .end local v7           #endOffset:I
    .end local v14           #keyword:Ljava/lang/String;
    .end local v16           #lowserStr:Ljava/lang/String;
    .end local v22           #startOffset:I
    .end local v26           #upperStr:Ljava/lang/String;
    :cond_f
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 189
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    :cond_10
    const v28, 0x7f0b03cb

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 194
    .local v18, menuTypeLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    iget v0, v11, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 197
    new-instance v28, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    .line 198
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 200
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 201
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    iget v0, v11, Lcom/android/settings/search/SearchItem;->value:I

    move/from16 v28, v0

    if-eqz v28, :cond_13

    const/16 v28, 0x1

    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    iget v0, v11, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    const/16 v29, 0x100

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 204
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 222
    :cond_11
    :goto_c
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 224
    .end local v5           #addOffset:I
    .end local v6           #arrayKey:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #indexof:I
    .end local v13           #keyWordString:Ljava/lang/String;
    .end local v15           #length:I
    .end local v17           #menuIconLayout:Landroid/widget/LinearLayout;
    .end local v18           #menuTypeLayout:Landroid/widget/LinearLayout;
    .end local v20           #spanSummary:Landroid/text/Spannable;
    .end local v21           #spanTitle:Landroid/text/Spannable;
    .end local v23           #summary:Ljava/lang/String;
    .end local v24           #title:Ljava/lang/String;
    .end local v25           #titleLayout:Landroid/widget/LinearLayout;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 201
    .restart local v5       #addOffset:I
    .restart local v6       #arrayKey:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #indexof:I
    .restart local v13       #keyWordString:Ljava/lang/String;
    .restart local v15       #length:I
    .restart local v17       #menuIconLayout:Landroid/widget/LinearLayout;
    .restart local v18       #menuTypeLayout:Landroid/widget/LinearLayout;
    .restart local v20       #spanSummary:Landroid/text/Spannable;
    .restart local v21       #spanTitle:Landroid/text/Spannable;
    .restart local v23       #summary:Ljava/lang/String;
    .restart local v24       #title:Ljava/lang/String;
    .restart local v25       #titleLayout:Landroid/widget/LinearLayout;
    :cond_13
    const/16 v28, 0x0

    goto :goto_b

    .line 206
    :cond_14
    iget v0, v11, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 207
    new-instance v28, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    .line 208
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Switch;->setVisibility(I)V

    .line 210
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setId(I)V

    .line 211
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    iget v0, v11, Lcom/android/settings/search/SearchItem;->value:I

    move/from16 v28, v0

    if-eqz v28, :cond_15

    const/16 v28, 0x1

    :goto_d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 212
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    iget v0, v11, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    const/16 v29, 0x100

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 214
    iget-object v0, v12, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_c

    .line 211
    :cond_15
    const/16 v28, 0x0

    goto :goto_d

    .line 216
    :cond_16
    iget v0, v11, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "layout_inflater"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 218
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    const v28, 0x7f040151

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 219
    .local v27, view:Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c
.end method
