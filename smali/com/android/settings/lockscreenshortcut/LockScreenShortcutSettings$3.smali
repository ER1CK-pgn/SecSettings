.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    const/4 v6, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I

    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;-><init>(Landroid/view/View;)V

    # setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$702(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v3

    move-object v1, p1

    move-object v4, p1

    # invokes: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    # getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    const v1, 0x7f020649

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    :cond_1
    return v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
