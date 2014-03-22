.class Lcom/android/settings/motion2014/MotionSettings2014$9;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(IILjava/lang/String;)V
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
    .line 561
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 563
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1600(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1700(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirBrowseAndScrollChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$900(Lcom/android/settings/motion2014/MotionSettings2014;Z)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1400(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1800(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$9;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1900(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method
