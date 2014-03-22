.class Lcom/android/settings/motion2013/SMotionSettings$13;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 570
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    return-void
.end method
