.class Lcom/android/settings/wifi/mobileap/WifiApSettings$3;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    const-string v0, "WifiApSettings"

    const-string v1, "MOBILE AP .STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 266
    :cond_0
    return-void
.end method
