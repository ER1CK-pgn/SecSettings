.class Lcom/android/settings/wfd/WfdPickerActivity$11;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 2

    .prologue
    .line 1884
    const-string v0, "WfdPickerActivity"

    const-string v1, " onAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void
.end method

.method public onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 1874
    const-string v0, "WfdPickerActivity"

    const-string v1, "skip onConnectionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return-void
.end method

.method public onDetached(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1889
    const-string v0, "WfdPickerActivity"

    const-string v1, " onDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return-void
.end method

.method public onShowPinRequested(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 1879
    const-string v0, "WfdPickerActivity"

    const-string v1, " onShowPinRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void
.end method
