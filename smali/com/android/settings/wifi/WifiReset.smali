.class public Lcom/android/settings/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiReset$1;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiReset;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiReset;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_networks_available_notification_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    const-string v2, "ssid"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_sort"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_internet_service_check_warning"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_poor_connection_warning"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiDualbandAPConnection(I)Z

    .line 154
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hidden_ap_sinal_strength"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    const-string v3, "wifitimer_pref"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "wifitimer_enabled"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v2, "wifitimer_done"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v2, "wifitimer_start_time"

    const-string v3, "19:00"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "wifitimer_end_time"

    const-string v3, "21:00"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    invoke-static {}, Lcom/android/settings/Utils;->deleteWifiFiles()V

    .line 177
    new-instance v2, Lcom/android/settings/wifi/WifiReset$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiReset$2;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    :cond_0
    return-void

    .line 138
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_sort"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 96
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0912a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    .end local v0           #intent:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiReset;->reset()V

    goto :goto_0
.end method
