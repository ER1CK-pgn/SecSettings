.class Lcom/android/settings/motion2014/MotionSettings2014$1;
.super Landroid/os/Handler;
.source "MotionSettings2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/MotionSettings2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$000(Lcom/android/settings/motion2014/MotionSettings2014;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
