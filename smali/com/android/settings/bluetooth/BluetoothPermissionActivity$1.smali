.class Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 85
    .local v4, state:I
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, requestType:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 95
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$200(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    goto :goto_0

    .line 100
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #requestType:I
    :cond_2
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 102
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, newState:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
