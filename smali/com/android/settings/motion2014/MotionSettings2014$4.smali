.class Lcom/android/settings/motion2014/MotionSettings2014$4;
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
    .line 445
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$4;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/MotionSettings2014$4;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 447
    const-string v0, "air_wake_up"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$4;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$4;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
