.class Lcom/android/settings/motion/MotionSettings$2;
.super Ljava/lang/Object;
.source "MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion/MotionSettings;->access$500(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "master_motion"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 548
    .local v0, motionState:I
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    #getter for: Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/motion/MotionSettings;->access$600(Lcom/android/settings/motion/MotionSettings;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 549
    return-void
.end method
