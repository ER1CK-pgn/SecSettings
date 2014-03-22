.class abstract Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "messageResId"

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessageResId:I

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 686
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 700
    const v2, 0x7f04007c

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 702
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 704
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :goto_0
    return-object v1

    .line 709
    :cond_0
    iget v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method
