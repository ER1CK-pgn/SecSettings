.class public Lcom/android/settings/ModePreview$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/ModePreview;


# direct methods
.method public constructor <init>(Lcom/android/settings/ModePreview;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ModePreview$RadioAdapter;->this$0:Lcom/android/settings/ModePreview;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/ModePreview$RadioAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ModePreview$RadioAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040150

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ModePreview$RadioAdapter;->this$0:Lcom/android/settings/ModePreview;

    # getter for: Lcom/android/settings/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v2}, Lcom/android/settings/ModePreview;->access$000(Lcom/android/settings/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/ModePreview$RadioAdapter;->this$0:Lcom/android/settings/ModePreview;

    # getter for: Lcom/android/settings/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v2}, Lcom/android/settings/ModePreview;->access$000(Lcom/android/settings/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
