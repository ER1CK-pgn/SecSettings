.class Lcom/android/settings/wifi/WifiSettings$32;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 4351
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$32;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 4354
    if-nez p1, :cond_1

    .line 4361
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 4356
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 4357
    check-cast p1, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->WifiAutoNetworkSwitchCheckBoxChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$32;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$3600(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_internet_service_check_warning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
