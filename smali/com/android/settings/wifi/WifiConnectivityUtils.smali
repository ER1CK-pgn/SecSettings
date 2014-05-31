.class public Lcom/android/settings/wifi/WifiConnectivityUtils;
.super Ljava/lang/Object;
.source "WifiConnectivityUtils.java"


# static fields
.field private static mServer:Ljava/net/InetAddress;

.field private static mUrl:Ljava/lang/String;

.field private static mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/settings/wifi/WifiConnectivityUtils$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forgetNetWork(Landroid/net/wifi/WifiManager;)V
    .locals 6
    .parameter "wifimanager"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, configNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 149
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v3, "SetupWizard --> WifiConnectivityUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forgetting Wi-Fi networks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NetworkId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-object v4, Lcom/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 154
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static getWifiNetworkID(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "wifiManager"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 131
    .local v0, connInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 133
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

    .line 84
    const-string v6, "SetupWizard --> WifiConnectivityUtils"

    const-string v9, " Checking whther connected Wi-Fi needs Authentication for using Internet"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v5, 0x0

    .line 87
    .local v5, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 88
    .local v3, isCaptivePortal:Z
    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    .line 89
    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, hostAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 91
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

    .line 92
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

    .line 94
    :try_start_0
    new-instance v4, Ljava/net/URL;

    sget-object v6, Lcom/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 96
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 97
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 100
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 101
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

    .line 105
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_1

    move v3, v7

    .line 118
    :goto_0
    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    .end local v2           #hostAddress:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v3

    .restart local v2       #hostAddress:Ljava/lang/String;
    .restart local v4       #url:Ljava/net/URL;
    :cond_1
    move v3, v8

    .line 105
    goto :goto_0

    .line 106
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 112
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

    .line 113
    const/4 v3, 0x1

    .line 115
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

    .line 116
    const/4 v3, 0x0

    .line 118
    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 118
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 119
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v6
.end method

.method public static isWiFiConnAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, " checking the Internet connection Availibility"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v2, "clients3.google.com"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectivityUtils;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    .line 45
    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, hostaddress:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 49
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "hostaddress lookup failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0           #hostaddress:Ljava/lang/String;
    :goto_0
    return v1

    .line 54
    :cond_0
    const-string v2, "SetupWizard --> WifiConnectivityUtils"

    const-string v3, "  Lookup host failed, so network has no Internet access"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .restart local v0       #hostaddress:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .parameter "hostname"

    .prologue
    .line 65
    const/4 v6, 0x0

    .line 67
    .local v6, resultInetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 71
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v0, v4

    .local v0, arr$:[Ljava/net/InetAddress;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 72
    .local v3, inetAddr:Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    .line 73
    move-object v6, v3

    .end local v3           #inetAddr:Ljava/net/InetAddress;
    :cond_0
    move-object v7, v6

    .line 77
    .end local v0           #arr$:[Ljava/net/InetAddress;
    .end local v2           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :goto_1
    return-object v7

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/net/UnknownHostException;
    const/4 v7, 0x0

    goto :goto_1

    .line 71
    .end local v1           #e:Ljava/net/UnknownHostException;
    .restart local v0       #arr$:[Ljava/net/InetAddress;
    .restart local v2       #i$:I
    .restart local v3       #inetAddr:Ljava/net/InetAddress;
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setCustomTitle(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "stepindicator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const v1, 0x7f0b04d4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, stepIndicator:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "stepindicator"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .end local v0           #stepIndicator:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
