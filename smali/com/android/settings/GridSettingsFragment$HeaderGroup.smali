.class public Lcom/android/settings/GridSettingsFragment$HeaderGroup;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderGroup"
.end annotation


# instance fields
.field mCategory:Landroid/preference/PreferenceActivity$Header;

.field mContext:Landroid/content/Context;

.field mExpandableGridView:Lcom/android/settings/ExpandableGridView;

.field mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field num_of_column:I

.field final synthetic this$0:Lcom/android/settings/GridSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/GridSettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->num_of_column:I

    .line 262
    iput-object p2, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mContext:Landroid/content/Context;

    .line 263
    iput-object p3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mCategory:Landroid/preference/PreferenceActivity$Header;

    .line 264
    iput-object p4, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaderViews:Ljava/util/ArrayList;

    .line 266
    return-void
.end method

.method private makeHeaderView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "header"

    .prologue
    .line 288
    const v3, 0x7f0400aa

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 290
    .local v0, iconview:Landroid/widget/ImageView;
    const v3, 0x7f0b0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, titleview:Landroid/widget/TextView;
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-lez v3, :cond_0

    .line 293
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    :cond_0
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-lez v3, :cond_1

    .line 296
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    iget-boolean v3, v3, Lcom/android/settings/GridSettingsFragment;->isFavoriteList:Z

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/GridSettingsFragment;->mFavoriteTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    :goto_0
    return-object v2

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/GridSettingsFragment;->mHeaderViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCategoryHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mCategory:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public getHeaderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaderViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public log()V
    .locals 5

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mCategory:Landroid/preference/PreferenceActivity$Header;

    iget v2, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, str:Ljava/lang/String;
    const-string v2, "GridSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCategory title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v2, "GridSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeaders size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public makeGridView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 270
    new-instance v3, Lcom/android/settings/ExpandableGridView;

    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->num_of_column:I

    invoke-direct {v3, v4, p1, v5}, Lcom/android/settings/ExpandableGridView;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;I)V

    iput-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mExpandableGridView:Lcom/android/settings/ExpandableGridView;

    .line 271
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mExpandableGridView:Lcom/android/settings/ExpandableGridView;

    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mCategory:Landroid/preference/PreferenceActivity$Header;

    iget v4, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v3, v4}, Lcom/android/settings/ExpandableGridView;->setCategoryText(I)V

    .line 272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->makeHeaderView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget-wide v5, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v5

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    iget-boolean v3, v3, Lcom/android/settings/GridSettingsFragment;->isFavoriteList:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->this$0:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mExpandableGridView:Lcom/android/settings/ExpandableGridView;

    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/ExpandableGridView;->addView(Landroid/view/View;Landroid/content/Context;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mExpandableGridView:Lcom/android/settings/ExpandableGridView;

    invoke-virtual {v3, p2}, Lcom/android/settings/ExpandableGridView;->attachView(Landroid/widget/LinearLayout;)V

    .line 285
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->mExpandableGridView:Lcom/android/settings/ExpandableGridView;

    invoke-virtual {v0, p1}, Lcom/android/settings/ExpandableGridView;->setVisibility(I)V

    .line 320
    return-void
.end method
