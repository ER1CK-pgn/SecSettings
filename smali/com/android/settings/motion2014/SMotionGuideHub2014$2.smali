.class Lcom/android/settings/motion2014/SMotionGuideHub2014$2;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 160
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->showMotionDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;I)V

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->showMotionDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;I)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    #getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V

    goto :goto_0
.end method
