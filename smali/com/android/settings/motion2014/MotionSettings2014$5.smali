.class Lcom/android/settings/motion2014/MotionSettings2014$5;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->showTalkBackDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->val$motion_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 427
    const-string v0, "master_motion"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAllMotionMaster(Landroid/content/Context;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const-string v0, "air_wake_up"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirWakeupChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$400(Lcom/android/settings/motion2014/MotionSettings2014;Z)V

    goto :goto_0

    .line 433
    :cond_2
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->isAllAirTurnAndScrollOptionDisabled()Z
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$500(Lcom/android/settings/motion2014/MotionSettings2014;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    const v1, 0x7f090eb9

    const v2, 0x7f090e78

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->val$motion_type:Ljava/lang/String;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/motion2014/MotionSettings2014;->access$600(Lcom/android/settings/motion2014/MotionSettings2014;IILjava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$700(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$800(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$5;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirBrowseAndScrollChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$900(Lcom/android/settings/motion2014/MotionSettings2014;Z)V

    goto :goto_0
.end method
