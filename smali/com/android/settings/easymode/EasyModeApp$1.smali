.class Lcom/android/settings/easymode/EasyModeApp$1;
.super Landroid/content/BroadcastReceiver;
.source "EasyModeApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/easymode/EasyModeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.intent.action.easy_mode_switch_change"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, mChange:Z
    const-string v1, "easy_mode_switch_change"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v1, v0}, Lcom/android/settings/easymode/EasyModeApp;->setAllCheckEnable(Z)V

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v1}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    .line 131
    .end local v0           #mChange:Z
    :cond_0
    return-void
.end method
