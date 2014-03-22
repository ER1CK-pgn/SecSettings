.class Lcom/android/settings/motion2014/MotionSettings2014$8;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->showGuideDialog(Z)V
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
    .line 544
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$8;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$8;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    #calls: Lcom/android/settings/motion2014/MotionSettings2014;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$1500(Lcom/android/settings/motion2014/MotionSettings2014;)V

    .line 547
    return-void
.end method
