.class public Lcom/android/settings/glance/GlanceCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlanceCardAdapter.java"


# instance fields
.field arCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mIndex:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "alayout"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, arSrcCard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iput p3, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    .line 67
    iput-object p4, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    .line 68
    iput p2, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mLayout:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, arSrcCard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;>;"
    invoke-static {}, Lcom/android/settings/glance/GlanceCardAdapter;->resolveCardTheme()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/glance/GlanceCardAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 61
    return-void
.end method

.method static resolveCardTheme()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0400a1

    .line 104
    .local v0, resId:I
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/glance/GlanceCardAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/card/Card;

    invoke-virtual {v0}, Lcom/samsung/android/card/Card;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/card/Card;

    invoke-virtual {v0}, Lcom/samsung/android/card/Card;->getMoreInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/card/Card;

    invoke-virtual {v0}, Lcom/samsung/android/card/Card;->getMoreInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    move v1, p1

    .line 89
    .local v1, pos:I
    if-nez p2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mLayout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_0
    const v3, 0x7f0b01d6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, img:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/card/Card;

    invoke-virtual {v3}, Lcom/samsung/android/card/Card;->getThumbNail()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    const v3, 0x7f0b0094

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, txtCardName:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/glance/GlanceCardAdapter;->arCard:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/card/Card;

    invoke-virtual {v3}, Lcom/samsung/android/card/Card;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-object p2
.end method

.method public setPreviewIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/settings/glance/GlanceCardAdapter;->mIndex:I

    .line 113
    return-void
.end method
