.class Lcom/android/settings/wfd/WifiDisplaySettings$15;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1153
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1160
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, v3, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 1162
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi display status changed! scanstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ActiveDisplayState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 1169
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 1178
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1170
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1171
    const-string v2, "WifiDisplaySettings"

    const-string v3, "received : DETACH_WIFIDISPLAY_SETTINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v3, 0x1

    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z
    invoke-static {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1802(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 1173
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1176
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "WifiDisplaySettings"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
