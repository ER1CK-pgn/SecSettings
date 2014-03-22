.class Lcom/android/settings/safetycare/SafetyCareHelp$7;
.super Ljava/lang/Object;
.source "SafetyCareHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareHelp;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$7;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/safetycare/SafetyCareHelp;->queryEmergencyContactSize(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$300(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$7;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$400(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    :cond_0
    return-void
.end method
