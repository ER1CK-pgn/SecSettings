.class Lcom/android/settings/wifi/mobileap/WifiApSettings$22;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    return-void
.end method
