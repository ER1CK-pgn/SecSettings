.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, state:I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 83
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 84
    iget-object v4, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #calls: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V
    invoke-static {v4}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$000(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    const-string v4, "CheckBluetoothStateActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_STATE_CHANGED state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, ChinaNalSecurityType:Ljava/lang/String;
    const-string v4, "ChinaNalSecurity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 106
    .end local v0           #ChinaNalSecurityType:Ljava/lang/String;
    .end local v3           #state:I
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const-string v4, "CheckBluetoothStateActivity"

    const-string v5, "EASY_MODE_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 99
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iget-object v5, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
