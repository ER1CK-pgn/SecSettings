.class Lcom/android/settings/glance/GlanceEnabler$1;
.super Landroid/database/ContentObserver;
.source "GlanceEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/glance/GlanceEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/glance/GlanceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/glance/GlanceEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/glance/GlanceEnabler$1;->this$0:Lcom/android/settings/glance/GlanceEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler$1;->this$0:Lcom/android/settings/glance/GlanceEnabler;

    #getter for: Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceEnabler;->access$000(Lcom/android/settings/glance/GlanceEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glance_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 56
    .local v0, glanceState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler$1;->this$0:Lcom/android/settings/glance/GlanceEnabler;

    #getter for: Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceEnabler;->access$100(Lcom/android/settings/glance/GlanceEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 57
    return-void
.end method
