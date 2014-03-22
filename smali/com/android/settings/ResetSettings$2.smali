.class Lcom/android/settings/ResetSettings$2;
.super Landroid/os/Handler;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    #getter for: Lcom/android/settings/ResetSettings;->databaseReset:Z
    invoke-static {v1}, Lcom/android/settings/ResetSettings;->access$000(Lcom/android/settings/ResetSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v1, v1, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v1, v1, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v1, v1, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/ResetSettings;->databaseReset:Z
    invoke-static {v1, v2}, Lcom/android/settings/ResetSettings;->access$002(Lcom/android/settings/ResetSettings;Z)Z

    .line 153
    iget-object v1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    #getter for: Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ResetSettings;->access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "reset settings"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 156
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_2
    return-void
.end method
