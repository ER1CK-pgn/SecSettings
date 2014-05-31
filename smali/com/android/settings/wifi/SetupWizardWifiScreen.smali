.class public Lcom/android/settings/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    }
.end annotation


# instance fields
.field private intentExtras:Landroid/os/Bundle;

.field private isApCheckDone:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mConnCheckProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

.field private mFilter:Landroid/content/IntentFilter;

.field final mHandler:Landroid/os/Handler;

.field private mIsWifiConnected:Z

.field private mNegativeButtonLayout:Landroid/widget/LinearLayout;

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccessWifiConNID:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScreenSubText:Landroid/widget/TextView;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    .line 63
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 67
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 68
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 69
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 72
    iput v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 74
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    .line 75
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 76
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 80
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 82
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 238
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/SetupWizardWifiScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    return-object v0
.end method

.method private getDimension(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f0912ff

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle Connection State: Action ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 200
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "What is the Connection Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    .line 204
    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 205
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v4, 0x7f091300

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iput-boolean v6, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 212
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    goto :goto_0

    .line 214
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 217
    .local v2, wifiState:I
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Wifi State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-ne v2, v8, :cond_4

    .line 219
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_4
    if-ne v2, v7, :cond_0

    .line 223
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f091306

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    .end local v2           #wifiState:I
    :cond_5
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 229
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :cond_6
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, "No Networks Found"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f091308

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_0
.end method

.method private initializeView()V
    .locals 8

    .prologue
    const v7, 0x7f0b05de

    .line 137
    const-string v5, "SetupWizard --> SetupWizardWifiScreen"

    const-string v6, "initializeView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object v0, p0

    .line 139
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    .line 140
    const v5, 0x7f0b05dd

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 141
    const v5, 0x7f0b05e1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 142
    const v5, 0x7f0b05df

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 148
    iget-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 149
    iget-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 151
    iget-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v6, 0x7f091306

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 155
    .local v3, negativeButtonLayout:Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v5, 0x7f0b05e0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 162
    .local v4, positiveButtonLayout:Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, frame:Landroid/widget/FrameLayout;
    const v5, 0x7f0b0592

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 174
    new-instance v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v5}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 176
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 177
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 178
    return-void
.end method

.method private setMargins(IIIILandroid/widget/LinearLayout;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "params"

    .prologue
    .line 392
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 6
    .parameter "connResult"

    .prologue
    const v5, 0x7f0907d2

    const/4 v4, 0x0

    .line 290
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 325
    return-void

    .line 294
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, ssId:Ljava/lang/String;
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 298
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f091307

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 303
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 311
    .end local v0           #ssId:Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09130a

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09130b

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 314
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 292
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method private showConnProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 266
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 271
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f09130c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 287
    return-void
.end method

.method private updateLayoutMarginOnOrienationChange()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 379
    const v0, 0x7f0b05d9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 380
    .local v12, wifiScreenLayoutId:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 381
    const v0, 0x7f0b05dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 382
    .local v5, wifiFragmentlayout:Landroid/widget/LinearLayout;
    const v0, 0x7f0b04d8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 383
    .local v11, bottomButtonlayout:Landroid/widget/LinearLayout;
    const v0, 0x7f0f0103

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v1

    const v0, 0x7f0f0104

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    .line 385
    const v0, 0x7f0f010c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v7

    const v0, 0x7f0f010b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v8

    const v0, 0x7f0f010d

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v9

    const v0, 0x7f0f010e

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    .line 389
    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v1, 0x7f091302

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 367
    return-void
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 346
    const-string v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 371
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onActivityResult Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    .line 376
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 329
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 332
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 354
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->updateLayoutMarginOnOrienationChange()V

    .line 360
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 113
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setRequestedOrientation(I)V

    .line 120
    :cond_0
    const v0, 0x7f040226

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setContentView(I)V

    .line 121
    const-string v0, "persist.sys.vzw_wifi_running"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v0, "persist.sys.vzw_wifi_running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 342
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 343
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnResume Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    return-void
.end method
