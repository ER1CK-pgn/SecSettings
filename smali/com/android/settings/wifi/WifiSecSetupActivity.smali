.class public Lcom/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# static fields
.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private helpMenuCheck:Z

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsTablet:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private menuButton:Landroid/widget/ImageView;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupMenu;

.field private previousButton:Landroid/view/View;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private scanButton:Landroid/widget/Button;

.field private wifiSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v4, 0x3f80

    const v5, 0x3ecccccd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v3, :cond_2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 271
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v3, "WifiSecSetupActivity"

    const-string v6, "onHandle"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v3, "WifiSecSetupActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v3, "WifiSecSetupActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v6, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_1

    .line 276
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 278
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    if-nez v3, :cond_2

    .line 279
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 284
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_4

    .line 285
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 286
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 289
    .restart local v1       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 291
    .local v2, isConn:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 292
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 296
    if-eqz v2, :cond_7

    .line 297
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 298
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 305
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #isConn:Z
    :cond_4
    :goto_2
    return-void

    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #isConn:Z
    :cond_5
    move v3, v5

    .line 292
    goto :goto_0

    :cond_6
    move v4, v5

    .line 294
    goto :goto_1

    .line 300
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, frame:Landroid/widget/FrameLayout;
    const v2, 0x7f0b04f3

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 258
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 260
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 261
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 263
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 382
    const/16 v0, 0x400

    .line 383
    .local v0, visibility:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 385
    .local v1, wmLp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000c00

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 387
    return-void
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 396
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 397
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 398
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    const/4 v4, 0x1

    .line 402
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 209
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    goto :goto_0

    .line 214
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 220
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_2
        0x7f0b059e -> :sswitch_0
        0x7f0b059f -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const v11, 0x3ecccccd

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 116
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    .line 120
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 121
    const v3, 0x7f04021c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 122
    const v3, 0x7f0b05a2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/ImageView;

    .line 123
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    .line 124
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f09034f

    invoke-interface {v3, v8, v9, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 125
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f09034a

    invoke-interface {v3, v8, v6, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 126
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f09034c

    invoke-interface {v3, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 127
    const-string v3, "com.samsung.helphub"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->helpMenuCheck:Z

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 131
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v3, v6, :cond_2

    .line 132
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->helpMenuCheck:Z

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v7, 0x7f090c0b

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_1
    const v3, 0x7f0b059e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    .line 151
    const v3, 0x7f0b059f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    .line 152
    const v3, 0x7f0b053d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 153
    const v3, 0x7f0b053c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 154
    const v3, 0x7f0b0089

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    .line 155
    const v3, 0x7f0b05a0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 156
    const v3, 0x7f0b05a1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 157
    const v3, 0x7f0b059c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    .line 159
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 165
    new-instance v3, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 167
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_6

    .line 168
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    .line 173
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 174
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 190
    :goto_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    new-instance v3, Lcom/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 202
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 147
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const v3, 0x7f04021b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 181
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 183
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 231
    :pswitch_0
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPushBtnPressed()V

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPinBtnPressed()V

    goto :goto_0

    .line 241
    :pswitch_2
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onAdvancedMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 246
    :pswitch_3
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onHelpMenuPressed()V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 323
    return-void
.end method
