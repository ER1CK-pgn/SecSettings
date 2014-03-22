.class Lcom/android/settings/wifi/SetupWizardWifiScreen$4;
.super Landroid/os/Handler;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0912ba

    .line 230
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$400(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$400(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$400(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 234
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v2, -0x1

    #calls: Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, webViewAcitivty:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 245
    .end local v0           #webViewAcitivty:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #calls: Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
