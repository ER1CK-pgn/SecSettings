.class Lcom/android/settings/wifi/mobileap/WifiApSettings$13;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 926
    return-void
.end method
