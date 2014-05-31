.class Lcom/android/settings/motion2014/SMotionGuideHub2014$5;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showMotionDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$tutorial_type:I


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iput p2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 765
    const-string v0, "SMotionGuideHub"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    const-string v0, "air_wake_up"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    .line 782
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V
    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V

    .line 784
    return-void

    .line 769
    :cond_1
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    goto :goto_0

    .line 774
    :cond_2
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    if-ne v0, v2, :cond_3

    .line 776
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_touch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 777
    :cond_3
    iget v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 779
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
