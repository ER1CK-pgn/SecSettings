.class Lcom/android/settings/ExpandableGridView$1;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ExpandableGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/ExpandableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/ExpandableGridView$1;->this$0:Lcom/android/settings/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/settings/ExpandableGridView$1;->this$0:Lcom/android/settings/ExpandableGridView;

    iget-object v0, p0, Lcom/android/settings/ExpandableGridView$1;->this$0:Lcom/android/settings/ExpandableGridView;

    #getter for: Lcom/android/settings/ExpandableGridView;->mIsExpanded:Z
    invoke-static {v0}, Lcom/android/settings/ExpandableGridView;->access$000(Lcom/android/settings/ExpandableGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/ExpandableGridView;->setExpanded(Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
