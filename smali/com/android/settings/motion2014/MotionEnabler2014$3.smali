.class Lcom/android/settings/motion2014/MotionEnabler2014$3;
.super Ljava/lang/Object;
.source "MotionEnabler2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionEnabler2014;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionEnabler2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/MotionEnabler2014$3;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014$3;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    # getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014$3;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    # getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAllMotionMaster(Landroid/content/Context;)V

    return-void
.end method
