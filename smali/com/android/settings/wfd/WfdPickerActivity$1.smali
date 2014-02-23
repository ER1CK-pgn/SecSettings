.class Lcom/android/settings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


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
    .line 273
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCONNESTABLISHED()V
    .locals 3

    .prologue
    .line 490
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << P2P_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x5

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 493
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWifiDisplayDeviceAddress(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 517
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const-string v0, "WfdPickerActivity"

    const-string v1, "connection established in picker dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 524
    :cond_1
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 525
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2600(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 534
    :cond_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, action:Ljava/lang/String;
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadCast Received Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 281
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wfd settings P2P changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wifi_p2p_state"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$1$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 290
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 293
    :cond_0
    const-string v6, "wifi_p2p_state"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 294
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 295
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 296
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 298
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 299
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 487
    :cond_2
    :goto_0
    return-void

    .line 303
    :cond_3
    const-string v6, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 304
    const-string v6, "wfd_state"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 305
    .local v5, wfdState:I
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wfd settings P2P changed with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    if-nez v5, :cond_8

    .line 307
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 308
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 309
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 312
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 314
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$900(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 316
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 322
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    goto :goto_0

    .line 318
    :cond_8
    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    goto :goto_1

    .line 323
    .end local v5           #wfdState:I
    :cond_9
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 325
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 327
    const-string v6, "p2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 330
    const-string v6, "connectedDevAddress"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, devAddr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v6, v6, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v6, :cond_a

    .line 334
    const-string v6, "WfdPickerActivity"

    const-string v7, "WIFI_P2P_PEERS_CHANGED_ACTION mConnectingDialogCalled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$502(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 336
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x4

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 337
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 338
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v7, 0xb

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 339
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 341
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 342
    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 343
    const-string v6, "WfdPickerActivity"

    const-string v7, "WIFI_P2P_PEERS_CHANGED_ACTION,  group info created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x4

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    goto/16 :goto_0

    .line 347
    :cond_b
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-nez v6, :cond_2

    .line 348
    const-string v6, "WfdPickerActivity"

    const-string v7, "WifiP2pService notifies p2p connection is failed !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x2

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 353
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 354
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 355
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v7, 0xd

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    goto/16 :goto_0

    .line 358
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 360
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 364
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 369
    .end local v1           #devAddr:Ljava/lang/String;
    :cond_d
    const-string v6, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 370
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v6, v6, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v6, :cond_2

    .line 371
    const-string v6, "WfdPickerActivity"

    const-string v7, "WIFI_P2P_REQUEST_CHANGED_ACTION,  user rejected the p2p connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x2

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 374
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 375
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 376
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings/wfd/WfdPickerActivity;)V

    goto/16 :goto_0

    .line 379
    :cond_e
    const-string v6, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 381
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    goto/16 :goto_0

    .line 384
    :cond_f
    const-string v6, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 385
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1600(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 386
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const-string v7, "cause"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1702(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 388
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 406
    :goto_2
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no problem! picker is going on!!! << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curr state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1602(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 413
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v6

    if-nez v6, :cond_11

    .line 417
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_11

    .line 419
    :cond_10
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 429
    :cond_11
    :goto_3
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1602(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 393
    :sswitch_0
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WfdService request to finish picker! << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 398
    :sswitch_1
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WfdService request to finish picker! (in pickerDialog) << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 403
    :sswitch_2
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1802(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_2

    .line 425
    :cond_12
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad intent! WfdService didn\'t request to finish picker! << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 432
    :cond_13
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 433
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 434
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION with networkInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17

    .line 437
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 441
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wfdState on isconnected is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_14

    .line 443
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    .line 454
    :cond_14
    :goto_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 455
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 456
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1802(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 457
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_15

    .line 458
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 462
    :cond_15
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 463
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    .line 465
    .local v4, state:I
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_18

    .line 466
    :cond_16
    const-string v6, "WfdPickerActivity"

    const-string v7, "finish()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 444
    .end local v4           #state:I
    :cond_17
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 445
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$1$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto/16 :goto_4

    .line 469
    .restart local v4       #state:I
    :cond_18
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v6, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 474
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:I
    :cond_19
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    const-string v6, "WfdPickerActivity"

    const-string v7, " onReceive << Intent.ACTION_USER_PRESENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    :cond_1a
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, intentBroker:Landroid/content/Intent;
    const/high16 v6, 0x1080

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 480
    const-string v6, "cause"

    const v7, 0x22075

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    :goto_5
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 482
    :cond_1b
    const-string v6, "cause"

    const v7, 0x22072

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
