.class Lcom/android/settings/wifi/mobileap/WifiApWarning$32;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 747
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1802(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 749
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->saveIsShowPassword()V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 762
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 766
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
