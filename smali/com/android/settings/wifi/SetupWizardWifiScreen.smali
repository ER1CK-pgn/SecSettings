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

.field private mFilter:Landroid/content/IntentFilter;

.field final mHandler:Landroid/os/Handler;

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

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 63
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 65
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 68
    iput v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    .line 71
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 72
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 228
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    return-void
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const v11, 0x7f0912b9

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle Connection State: Action ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 191
    .local v2, info:Landroid/net/NetworkInfo;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "What is the Connection Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    iget v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iget-object v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    .line 195
    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V

    .line 196
    .local v1, connectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    new-array v4, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    .end local v1           #connectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_1
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v5, 0x7f0912ba

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    goto :goto_0

    .line 204
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 207
    .local v3, wifiState:I
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-ne v3, v9, :cond_4

    .line 209
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 211
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_4
    if-ne v3, v8, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0912c0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    .end local v3           #wifiState:I
    :cond_5
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 219
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "No Networks Found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0912c2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_0
.end method

.method private initializeView()V
    .locals 12

    .prologue
    const v11, 0x7f0b05cf

    .line 130
    const-string v8, "SetupWizard --> SetupWizardWifiScreen"

    const-string v9, "initializeView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const v8, 0x7f0b05d2

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 132
    const v8, 0x7f0b05d0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0401da

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, customTitleView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "stepindicator"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    const v8, 0x7f0b04c8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 137
    .local v7, stepIndicator:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 138
    iget-object v8, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    const-string v9, "stepindicator"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v7           #stepIndicator:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 142
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 143
    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 144
    const/16 v2, 0x15

    .line 145
    .local v2, flags:I
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 147
    .end local v2           #flags:I
    :cond_1
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 148
    .local v5, negativeButtonLayout:Landroid/widget/LinearLayout;
    new-instance v8, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v8, 0x7f0b05d1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 155
    .local v6, positiveButtonLayout:Landroid/widget/LinearLayout;
    new-instance v8, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v3, frame:Landroid/widget/FrameLayout;
    const v8, 0x7f0b0585

    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    .line 165
    new-instance v8, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v8}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v8, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 167
    .local v4, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4, v8, v9}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 168
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 169
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 5
    .parameter "connResult"

    .prologue
    const v4, 0x7f09079f

    const/4 v3, 0x0

    .line 267
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 269
    sparse-switch p1, :sswitch_data_0

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void

    .line 271
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0912c1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 281
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0912c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0912c5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method private showConnProgressDialog()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 259
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Checking the Internet Connection..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 264
    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    .prologue
    .line 324
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " WiFi Connection Success Auto advance the Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v1, 0x7f0912bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 327
    return-void
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 311
    const-string v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 314
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
    .line 331
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 332
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onActivityResult Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    .line 336
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 302
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 319
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

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 105
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 112
    :cond_0
    const v0, 0x7f040222

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    .line 114
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const v0, 0x7f0b05ce

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 120
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 308
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnResume Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    return-void
.end method
