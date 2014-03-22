.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 265
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 266
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 268
    const-string v9, "WifiP2pSettings"

    const-string v10, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 270
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 272
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 274
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 276
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 279
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 284
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 293
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 295
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 296
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 299
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 505
    :cond_2
    :goto_1
    return-void

    .line 286
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 287
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 289
    :cond_4
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 290
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 300
    :cond_5
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 302
    const-string v9, "WifiP2pSettings"

    const-string v10, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 305
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 306
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 307
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 308
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1602(Z)Z

    .line 309
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1702(Z)Z

    .line 310
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 311
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 312
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 313
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x6

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 314
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 315
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 316
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 317
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 318
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 319
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 320
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 321
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 322
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const v10, 0x7f0904d1

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 325
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 327
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 330
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_7

    .line 331
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 335
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2602(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 337
    :cond_8
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 338
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 339
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 342
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 343
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 344
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 346
    :cond_a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 347
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 348
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 350
    :cond_b
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 351
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 352
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 354
    :cond_c
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 355
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 356
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 359
    :cond_d
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 361
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 362
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 365
    :cond_e
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 368
    :cond_f
    const-string v9, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 369
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 370
    const-string v9, "p2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 371
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 372
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1500()Z

    move-result v9

    if-nez v9, :cond_10

    .line 373
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 375
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 378
    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 379
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    const v10, 0x7f0b04f8

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, mDeviceInfoMac:Ljava/lang/String;
    const-string v9, "connectedDevAddress"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, connectedDevAddr:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 383
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 384
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 388
    .end local v1           #connectedDevAddr:Ljava/lang/String;
    .end local v4           #mDeviceInfoMac:Ljava/lang/String;
    :cond_11
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 390
    :cond_12
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 391
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 392
    const-string v9, "wifiP2pInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 395
    .local v7, p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 397
    .local v6, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_1a

    .line 398
    const-string v9, "WifiP2pSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connected!!!! multi-connect? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 401
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 402
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2602(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 406
    :cond_13
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 407
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 408
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 412
    :cond_14
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 415
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 416
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 418
    :cond_15
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 419
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 421
    :cond_16
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 422
    const-string v9, "WifiP2pSettings"

    const-string v10, "AUTO GO is created for multiple connect"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 425
    .local v5, mSelectedConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 426
    .local v8, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v8}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 428
    .end local v8           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_17
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 429
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v9, v10, v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 439
    :cond_18
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 440
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 441
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 442
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 492
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #mSelectedConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_19
    :goto_3
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 446
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 447
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 448
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 451
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 452
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 453
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 456
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 457
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 458
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 460
    :cond_1d
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 461
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 462
    const-string v9, "WifiP2pSettings"

    const-string v10, "disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 464
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 465
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1602(Z)Z

    .line 467
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 468
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x6

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 470
    :cond_1e
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 471
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 472
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 475
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 476
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 477
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 478
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 479
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 481
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 483
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v9

    if-nez v9, :cond_20

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 484
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 485
    :cond_20
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 486
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    .line 493
    .end local v6           #networkInfo:Landroid/net/NetworkInfo;
    .end local v7           #p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_21
    const-string v9, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 494
    const-string v9, "wifiP2pDevice"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3702(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1

    .line 499
    :cond_22
    const-string v9, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 501
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_2

    .line 502
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1
.end method
