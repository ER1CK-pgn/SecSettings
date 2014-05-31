.class Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
.super Landroid/os/Handler;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SheduleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimerService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    .line 195
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 205
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 207
    .local v1, arguments:Landroid/os/Bundle;
    const-string v3, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, actionType:I
    const-string v3, "WifiTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v3, 0x1389

    if-ne v0, v3, :cond_2

    .line 213
    const-string v3, "WifiTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnableAlarm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "wifitimer_enabled"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "wifitimer_enabled"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 257
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiTimerService;->stopSelf()V

    .line 259
    return-void

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_0

    .line 227
    :cond_2
    const/16 v3, 0x138c

    if-ne v0, v3, :cond_4

    .line 229
    const-string v3, "wifisheduler_alarm_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_3

    .line 231
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 233
    :cond_3
    const-string v3, "wifisheduler_alarm_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 239
    :cond_4
    const/16 v3, 0x138b

    if-ne v0, v3, :cond_5

    .line 241
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "wifitimer_enabled"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_0

    .line 247
    :cond_5
    const/16 v3, 0x138d

    if-ne v0, v3, :cond_0

    .line 249
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "launch_with"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
