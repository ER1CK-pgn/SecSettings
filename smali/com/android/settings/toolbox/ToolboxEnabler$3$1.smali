.class Lcom/android/settings/toolbox/ToolboxEnabler$3$1;
.super Ljava/lang/Object;
.source "ToolboxEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/toolbox/ToolboxEnabler$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/toolbox/ToolboxEnabler$3;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxEnabler$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler$3$1;->this$1:Lcom/android/settings/toolbox/ToolboxEnabler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler$3$1;->this$1:Lcom/android/settings/toolbox/ToolboxEnabler$3;

    iget-object v0, v0, Lcom/android/settings/toolbox/ToolboxEnabler$3;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    # getter for: Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->access$000(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toolbox_onoff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
