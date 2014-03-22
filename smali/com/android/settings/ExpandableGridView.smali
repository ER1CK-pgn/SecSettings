.class public Lcom/android/settings/ExpandableGridView;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"


# instance fields
.field mCategoryClickListener:Landroid/view/View$OnClickListener;

.field private mCategoryContainer:Landroid/view/View;

.field private mCategoryTextView:Landroid/widget/TextView;

.field private mCount:I

.field private mExpandImageView:Landroid/widget/ImageView;

.field private mGridView:Landroid/widget/TableLayout;

.field private mIsExpanded:Z

.field private mNumOfColumn:I

.field private mTableRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TableRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;I)V
    .locals 4
    .parameter "context"
    .parameter "inflater"
    .parameter "num_of_column"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ExpandableGridView;->mIsExpanded:Z

    .line 23
    iput v3, p0, Lcom/android/settings/ExpandableGridView;->mNumOfColumn:I

    .line 25
    iput v3, p0, Lcom/android/settings/ExpandableGridView;->mCount:I

    .line 27
    new-instance v1, Lcom/android/settings/ExpandableGridView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ExpandableGridView$1;-><init>(Lcom/android/settings/ExpandableGridView;)V

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryClickListener:Landroid/view/View$OnClickListener;

    .line 34
    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    .line 35
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b0197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    .local v0, categoryLayout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b0198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b0199

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    .line 39
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f02053d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    .line 44
    iput p3, p0, Lcom/android/settings/ExpandableGridView;->mNumOfColumn:I

    .line 45
    iput v3, p0, Lcom/android/settings/ExpandableGridView;->mCount:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ExpandableGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/settings/ExpandableGridView;->mIsExpanded:Z

    return v0
.end method

.method private addViewIntoLastRow(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/settings/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    .local v1, rowsize:I
    if-lez v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/settings/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 101
    .local v0, lastRow:Landroid/widget/TableRow;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .end local v0           #lastRow:Landroid/widget/TableRow;
    :cond_0
    return-void
.end method

.method private addViewIntoNewRow(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 91
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, newRow:Landroid/widget/TableRow;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/ExpandableGridView;->mCount:I

    iget v1, p0, Lcom/android/settings/ExpandableGridView;->mNumOfColumn:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ExpandableGridView;->addViewIntoNewRow(Landroid/view/View;Landroid/content/Context;)V

    .line 87
    :goto_0
    iget v0, p0, Lcom/android/settings/ExpandableGridView;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ExpandableGridView;->mCount:I

    .line 88
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ExpandableGridView;->addViewIntoLastRow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachView(Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 48
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method

.method public setCategoryText(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v1, 0x7f02053d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/ExpandableGridView;->mIsExpanded:Z

    .line 70
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v1, 0x7f02053e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method
