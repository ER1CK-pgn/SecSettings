.class public Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.super Landroid/app/Activity;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;,
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    }
.end annotation


# static fields
.field private static mProgressBar:Landroid/widget/ProgressBar;


# instance fields
.field private mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

.field protected mContext:Landroid/content/Context;

.field private mWebview:Landroid/webkit/WebView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    .line 72
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 271
    iget-object v5, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 272
    .local v1, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f04011a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 274
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, title:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 278
    const-string v4, ""

    .line 280
    :cond_0
    if-nez v3, :cond_1

    .line 281
    const-string v3, ""

    .line 284
    :cond_1
    const v5, 0x7f0b02c2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v5, 0x7f0b0094

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090340

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09079f

    new-instance v7, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method private createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 191
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 192
    .local v0, certificate:Landroid/net/http/SslCertificate;
    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, certificateView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09033d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    .local v2, newDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09079f

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09033c

    new-instance v5, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    return-object v2
.end method

.method private createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 230
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09033d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09033e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09033b

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09033f

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090195

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    .local v0, newDialog:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 122
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v2, 0x7f0401db

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 126
    iput-object p0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    .line 127
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    .line 129
    const v2, 0x7f0b04cb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    .line 130
    const v2, 0x7f0b04ca

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    sput-object v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 136
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    .line 137
    .local v1, webViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 152
    const-string v2, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v3, "Load the Page in WebView : http://www.google.com/"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    const-string v3, "http://www.google.com/"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 154
    iput-object v4, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 156
    const v2, 0x7f0b04ce

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    .local v0, captiveportalcancel:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " OnResume Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    iget-object v1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 170
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " WiFi AP changed by Settings Application -- Check this AP for Internet connection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 176
    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 177
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 112
    return-void
.end method
