.class public Lcom/android/settings/nearby/DMSUtil;
.super Ljava/lang/Object;
.source "DMSUtil.java"


# static fields
.field public static final ACCESS_ALLOWED_ALL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.changeto.ACCESS_ALLOWED_ALL"

.field public static final ACCESS_ASK_AGAIN:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_AGAIN"

.field public static final ACCESS_ASK_CANCEL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_CANCEL"

.field public static final ACCESS_ASK_OK:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_OK"

.field public static final DELETE_ITEMS:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.DELETE_ITEMS"

.field public static final DEVICE_NAME_CHANGED:Ljava/lang/String; = "com.android.settings.DEVICE_NAME_CHANGED"

.field public static final FLAG_INTERFACE_P2P:Ljava/lang/String; = "FLAG_INTERFACE_P2P"

.field public static final FLAG_INTERFACE_WIFI:Ljava/lang/String; = "FLAG_INTERFACE_WIFI"

.field public static final SERVER_STATE_CHANGED:Ljava/lang/String; = "com.android.settings.allshare.SERVER_STATE_CHANGED"

.field public static final START_NEARBY_SETTINGS:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.START_NEARBY_SETTINGS"

.field private static final TAGClass:Ljava/lang/String; = "DMSUtil"

.field public static final UPDATE_LIST:Ljava/lang/String; = "com.android.settings.allshare.UPDATE_LIST"

.field public static final UPLOAD_ALLOWED_ALL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.changeto.UPLOAD_ALLOWED_ALL"

.field public static final UPLOAD_ASK_CANCEL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_CANCEL"

.field public static final UPLOAD_ASK_OK:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_OK"

.field public static final UPLOAD_ASK_REMOVE_POPUP:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.REMOVE_UPLOAD_ASK_POPUP"

.field public static final UPLOAD_ASK_TIME_OVER:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_TIME_OVER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLightTheme()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, v0}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "flag"
    .parameter "state"

    .prologue
    .line 76
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flag-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 82
    .local v3, netInfo:Landroid/net/NetworkInfo;
    const/4 v6, 0x0

    .line 83
    .local v6, wifiConnected:Z
    const-string v8, "FLAG_INTERFACE_WIFI"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz p2, :cond_7

    .line 84
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_0
    const/4 v6, 0x1

    .line 87
    :goto_0
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI(Recv): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 96
    .local v2, hotspotEnabled:Z
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 97
    .local v7, wm:Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_2

    .line 98
    const/4 v2, 0x1

    .line 101
    :cond_2
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 103
    .local v4, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    .line 104
    .local v5, p2pConnected:Z
    const-string v8, "FLAG_INTERFACE_P2P"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz p2, :cond_b

    .line 105
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_3
    const/4 v5, 0x1

    .line 108
    :goto_2
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected(Recv)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P2P: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 127
    .local v1, ethernetConnected:Z
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Hotspot-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", P2P-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Eth-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez v6, :cond_5

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_e

    .line 131
    :cond_5
    const/4 v8, 0x1

    .line 134
    :goto_4
    return v8

    .line 84
    .end local v1           #ethernetConnected:Z
    .end local v2           #hotspotEnabled:Z
    .end local v4           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v5           #p2pConnected:Z
    .end local v7           #wm:Landroid/net/wifi/WifiManager;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 88
    :cond_7
    if-eqz v3, :cond_1

    .line 89
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    const/4 v6, 0x1

    :goto_5
    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 105
    .restart local v2       #hotspotEnabled:Z
    .restart local v4       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v5       #p2pConnected:Z
    .restart local v7       #wm:Landroid/net/wifi/WifiManager;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 109
    :cond_b
    if-eqz v4, :cond_4

    .line 110
    const-string v8, "DMSUtil"

    const-string v9, "isNetworkConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P2P: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_c
    const/4 v5, 0x1

    :goto_6
    goto/16 :goto_3

    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 134
    .restart local v1       #ethernetConnected:Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVZWFeature()Z
    .locals 3

    .prologue
    .line 60
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, salesCode:Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, countryCode:Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x1

    .line 68
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
