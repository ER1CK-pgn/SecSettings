.class abstract Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;
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
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledStatusMessageResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"

    .prologue
    .line 799
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 784
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 800
    iput p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mMessageResId:I

    .line 801
    iput p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 802
    iput p3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 803
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 860
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 861
    return-void

    .line 860
    :cond_0
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->willCreate()V

    .line 817
    const v5, 0x7f04007d

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 820
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0b016d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 821
    .local v1, messageView:Landroid/widget/TextView;
    const v5, 0x7f0b016e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 822
    .local v3, statusView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 824
    .local v0, enabled:Z
    if-eqz v1, :cond_0

    .line 825
    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 826
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 829
    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v7, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v7, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOn:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-ne v5, v7, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 831
    .local v2, on:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 832
    if-eqz v2, :cond_4

    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 833
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 836
    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 838
    return-object v4

    .end local v2           #on:Z
    :cond_3
    move v2, v6

    .line 829
    goto :goto_0

    .line 832
    .restart local v2       #on:Z
    :cond_4
    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 3

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 847
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->onToggle(Z)V

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 846
    .end local v0           #nowOn:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 867
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 811
    return-void
.end method
