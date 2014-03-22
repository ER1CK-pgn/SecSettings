.class public Lcom/android/settings/wifi/WifiConnectivityUtils;
.super Ljava/lang/Object;
.source "WifiConnectivityUtils.java"


# static fields
.field private static mServer:Ljava/net/InetAddress;

.field private static mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiNetworkID(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "wifiManager"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 110
    .local v0, connInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 112
    .end local v0           #connInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isCaptivePortalNetwork()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 63
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    const-string v9, " Checking whther connected Wi-Fi needs Authentication for using Internet"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v5, 0x0

    .line 66
    .local v5, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 67
    .local v3, isCaptivePortal:Z
    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    .line 68
    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, hostAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/generate_204"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    .line 71
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking Connection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    new-instance v4, Ljava/net/URL;

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 75
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 76
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 77
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 78
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 79
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 80
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Url connection response code :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_1

    move v3, v7

    .line 97
    :goto_0
    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    .end local v2           #hostAddress:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v3

    .restart local v2       #hostAddress:Ljava/lang/String;
    .restart local v4       #url:Ljava/net/URL;
    :cond_1
    move v3, v8

    .line 84
    goto :goto_0

    .line 85
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 91
    :try_start_1
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Seems to be portal, with exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x1

    .line 94
    :cond_2
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const/4 v3, 0x0

    .line 97
    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 98
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v6
.end method

.method public static isWiFiConnAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, " checking the Internet connection Availibility"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v2, "clients3.google.com"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectivityUtils;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    .line 26
    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 27
    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, hostaddress:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 30
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "hostaddress lookup failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0           #hostaddress:Ljava/lang/String;
    :goto_0
    return v1

    .line 35
    :cond_0
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "  Lookup host failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .restart local v0       #hostaddress:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .parameter "hostname"

    .prologue
    const/4 v6, 0x0

    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 51
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 52
    .local v0, a:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 56
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v3           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :goto_1
    return-object v0

    .line 48
    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 49
    goto :goto_1

    .line 51
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #a:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/net/InetAddress;
    .restart local v3       #i$:I
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 56
    goto :goto_1
.end method
