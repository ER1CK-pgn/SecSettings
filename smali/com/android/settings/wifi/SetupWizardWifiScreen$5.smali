.class Lcom/android/settings/wifi/SetupWizardWifiScreen$5;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V
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
    .line 276
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 279
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "Checking Network Dialog Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->cancel(Z)Z

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    #getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$1000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 284
    return-void
.end method
