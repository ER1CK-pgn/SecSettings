.class Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 211
    const-string v5, "android.bluetooth.device.extra.RSSI"

    const/16 v7, -0x8000

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .line 212
    .local v1, rssi:S
    const-string v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothClass;

    .line 213
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, name:Ljava/lang/String;
    const-string v5, "android.bluetooth.device.extra.APPEARANCE"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 215
    .local v3, appearance:S
    const-string v5, "android.bluetooth.device.extra.GEARMANAGER_NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, gearManagerName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 220
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 221
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v7}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    invoke-virtual {v5, v7, v8, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v5, "BluetoothEventManager"

    const-string v7, "DeviceFoundHandler created new CachedBluetoothDevice: cachedDevice"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v5, v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 232
    :cond_1
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_2

    .line 233
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    .line 235
    :cond_2
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
