.class Lcom/android/settings/motion2014/MotionSettings2014$6;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 455
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->val$motion_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 459
    const-string v2, "master_motion"

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "master_motion"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 466
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 460
    goto :goto_0

    .line 461
    :cond_2
    const-string v2, "air_wake_up"

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_wake_up"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 463
    :cond_4
    const-string v2, "air_turn_and_scroll"

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1400(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014$6;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method
