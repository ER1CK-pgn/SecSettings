.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 147
    invoke-static {}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    return-void
.end method
