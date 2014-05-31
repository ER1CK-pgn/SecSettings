.class Lcom/android/settings/motion2014/MotionEnabler2014$1;
.super Landroid/database/ContentObserver;
.source "MotionEnabler2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/MotionEnabler2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionEnabler2014;


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014$1;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    #getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 54
    .local v0, motionState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014$1;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    #getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$100(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 55
    return-void
.end method
