.class public Lcom/android/settings/wifi/WifiPickerActivity;
.super Landroid/preference/PreferenceActivity;
.source "WifiPickerActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field private static DBG:Z

.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field private backButton:Landroid/widget/Button;

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private nextButton:Landroid/widget/Button;

.field private skipButton:Landroid/widget/Button;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    .line 78
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 270
    new-instance v0, Lcom/android/settings/wifi/WifiPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPickerActivity$5;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiPickerActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiPickerActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiPickerActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v2, :cond_3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 283
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 284
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 286
    :cond_2
    const-string v2, "WifiPickerActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    if-nez v2, :cond_3

    .line 288
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 292
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 224
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_0
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 233
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v7, "WifiPickerActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v7, 0x10202e6

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    .local v0, buttonBar:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    move-object v2, p0

    .line 96
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 98
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f0401a6

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    .line 99
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 102
    .local v6, intent:Landroid/content/Intent;
    const-string v7, "extra_prefs_show_button_bar"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    const-string v7, "WifiPickerActivity"

    const-string v8, "Exception while onCreate 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b0172

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b044d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    .line 106
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/wifi/WifiPickerActivity$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b044e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    .line 113
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/wifi/WifiPickerActivity$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiPickerActivity$2;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b044f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    .line 120
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/wifi/WifiPickerActivity$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiPickerActivity$3;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const-string v7, "extra_prefs_set_next_text"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const-string v7, "extra_prefs_set_next_text"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, buttonText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .end local v1           #buttonText:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v7, "extra_prefs_set_back_text"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    const-string v7, "extra_prefs_set_back_text"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1       #buttonText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 138
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v1           #buttonText:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v7, "extra_prefs_show_skip"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_2
    const-string v7, "wifi_show_custom_button"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    const-string v7, "WifiPickerActivity"

    const-string v8, "customButton is VISIBLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b0172

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v8, 0x7f0b044e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 156
    .local v3, customButton:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$4;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v3           #customButton:Landroid/widget/Button;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    .line 175
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    return-void

    .line 132
    .restart local v1       #buttonText:Ljava/lang/String;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 167
    .end local v1           #buttonText:Ljava/lang/String;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 168
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    const-string v7, "WifiPickerActivity"

    const-string v8, "Exception while onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 141
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #buttonText:Ljava/lang/String;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    sget-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    :cond_0
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x1

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    const-string v2, ":android:show_fragment"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, orgIntent:Landroid/content/Intent;
    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "extra_prefs_show_button_bar"

    const-string v3, "extra_prefs_show_button_bar"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    :cond_0
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "extra_prefs_set_next_text"

    const-string v3, "extra_prefs_set_next_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_1
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    const-string v2, "extra_prefs_set_back_text"

    const-string v3, "extra_prefs_set_back_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_2
    const-string v2, "wifi_show_action_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    const-string v2, "wifi_show_action_bar"

    const-string v3, "wifi_show_action_bar"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    :cond_3
    const-string v2, "wifi_show_menus"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    const-string v2, "wifi_show_menus"

    const-string v3, "wifi_show_menus"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    :cond_4
    if-nez p3, :cond_5

    .line 215
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_5
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
