.class Lcom/android/settings/HelpItem$1;
.super Ljava/lang/Object;
.source "HelpItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HelpItem;->usePlayButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HelpItem;


# direct methods
.method constructor <init>(Lcom/android/settings/HelpItem;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/HelpItem$1;->this$0:Lcom/android/settings/HelpItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings/HelpItem$1;->this$0:Lcom/android/settings/HelpItem;

    iget-object v1, v1, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020560

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/HelpItem$1;->this$0:Lcom/android/settings/HelpItem;

    iget-object v1, v1, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 115
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 118
    :cond_0
    return-void
.end method