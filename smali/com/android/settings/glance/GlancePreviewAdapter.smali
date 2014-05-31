.class public Lcom/android/settings/glance/GlancePreviewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GlancePreviewAdapter.java"


# instance fields
.field arCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "alayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, arSrcCard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->arCard:Ljava/util/ArrayList;

    .line 65
    iput p2, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mLayout:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, arSrcCard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;"
    invoke-static {}, Lcom/android/settings/glance/GlancePreviewAdapter;->resolveCardTheme()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/glance/GlancePreviewAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 59
    return-void
.end method

.method static resolveCardTheme()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0400a3

    .line 101
    .local v0, resId:I
    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "View"

    .prologue
    .line 91
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->arCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 73
    iget-object v4, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0b01da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, img:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->arCard:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/card/Card;

    invoke-virtual {v4}, Lcom/samsung/android/card/Card;->getThumbNail()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, txtCardName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->arCard:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/card/Card;

    invoke-virtual {v4}, Lcom/samsung/android/card/Card;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v4, 0x7f0b01dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, txtSummary:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/glance/GlancePreviewAdapter;->arCard:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/card/Card;

    invoke-virtual {v4}, Lcom/samsung/android/card/Card;->getSummaryInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 86
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "v"
    .parameter "obj"

    .prologue
    .line 95
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
