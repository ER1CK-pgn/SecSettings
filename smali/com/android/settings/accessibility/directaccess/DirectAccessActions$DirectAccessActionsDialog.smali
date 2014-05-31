.class final Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
.super Landroid/app/Dialog;
.source "DirectAccessActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectAccessActionsDialog"
.end annotation


# instance fields
.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 3
    .parameter "context"
    .parameter "params"

    .prologue
    .line 648
    invoke-static {p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 649
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mContext:Landroid/content/Context;

    .line 650
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 651
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09095f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 653
    return-void
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 656
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 657
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 659
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 681
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x1

    .line 688
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    .line 696
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 664
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 665
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 666
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 670
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 671
    return-void
.end method
