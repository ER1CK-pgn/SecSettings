.class public Lcom/android/settings/ChooseLockBLock;
.super Landroid/app/Activity;
.source "ChooseLockBLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 47
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v1, "Block"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0901f3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockBLock;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockBLock;->finish()V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockBLock;->finish()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00a8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockBLock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "trun_on"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockBLock;->setContentView(I)V

    .line 31
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockBLock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    const v2, 0x7f0b00a8

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockBLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, cancelBtn:Landroid/widget/Button;
    const v2, 0x7f0b00a9

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockBLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 37
    .local v1, continueBtn:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
