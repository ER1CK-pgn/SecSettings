.class Lcom/android/settings/wfd/WfdPickerActivity$26;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2867
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2871
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for Wifi display connection after 60 seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v2, v2, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$26;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$5100(Lcom/android/settings/wfd/WfdPickerActivity;Z)V

    .line 2876
    :cond_0
    return-void
.end method