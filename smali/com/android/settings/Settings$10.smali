.class Lcom/android/settings/Settings$10;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 4650
    iput-object p1, p0, Lcom/android/settings/Settings$10;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4653
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4654
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Settings;->access$2800()I

    move-result v2

    .line 4656
    .local v2, prevWifiSummaryId:I
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4657
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 4658
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4659
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/settings/Settings;->access$2802(I)I

    .line 4680
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Settings;->access$2800()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 4681
    iget-object v5, p0, Lcom/android/settings/Settings$10;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 4683
    :cond_1
    return-void

    .line 4661
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/Settings$10;->this$0:Lcom/android/settings/Settings;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 4662
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4663
    invoke-static {v7}, Lcom/android/settings/Settings;->access$2802(I)I

    goto :goto_0

    .line 4665
    :cond_3
    invoke-static {v8}, Lcom/android/settings/Settings;->access$2802(I)I

    goto :goto_0

    .line 4668
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4669
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4670
    .local v3, state:I
    if-eq v3, v7, :cond_5

    if-nez v3, :cond_6

    .line 4671
    :cond_5
    invoke-static {v8}, Lcom/android/settings/Settings;->access$2802(I)I

    .line 4672
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4673
    iget-object v5, p0, Lcom/android/settings/Settings$10;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    goto :goto_0

    .line 4675
    :cond_6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 4676
    invoke-static {v7}, Lcom/android/settings/Settings;->access$2802(I)I

    goto :goto_0
.end method
