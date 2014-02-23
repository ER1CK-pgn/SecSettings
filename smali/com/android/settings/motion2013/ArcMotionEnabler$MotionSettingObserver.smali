.class Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;
.super Landroid/database/ContentObserver;
.source "ArcMotionEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/ArcMotionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/ArcMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    .line 171
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 172
    iput-object p3, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->updateSwitch()V

    .line 187
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "master_arc_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    return-void
.end method
