.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# static fields
.field private static mDialogExist:Z


# instance fields
.field private expectingBluetoothOn:Z

.field private isBtEnableDialog:Z

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 76
    new-instance v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    return-void
.end method

.method private launchDevicePicker()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 221
    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchDevicePicker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 224
    .local v4, in:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, btIntent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 227
    .local v7, needAuth:Z
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 230
    .local v2, filterType:I
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 233
    .local v3, fromHeadsetActivity:Z
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, launchPackage:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 237
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_0
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, launchClass:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 242
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :cond_1
    const/high16 v8, 0x1800

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    iget-object v8, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v8, :cond_2

    .line 250
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private processEnableResult()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private showEnableDialog()V
    .locals 7

    .prologue
    .line 259
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09106a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 262
    const v5, 0x7f09106d

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const v5, 0x7f09106e

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 286
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040042

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 287
    .local v3, dialoglayout:Landroid/view/View;
    const v5, 0x7f0b00c0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    .local v2, contentView:Landroid/widget/TextView;
    const v5, 0x7f09106b

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 294
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 308
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v6, "CheckBluetoothStateActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-boolean v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v6, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sput-boolean v9, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    .line 118
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 131
    const-string v6, "enterprise_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    .local v1, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 135
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    const-string v6, "CheckBluetoothStateActivity"

    const-string v7, "onCreate Bluetooth disable"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const v6, 0x7f09104b

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 143
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v6, :cond_3

    .line 144
    const-string v6, "CheckBluetoothStateActivity"

    const-string v7, "Bluetooth is not supported on this device"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_3
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 151
    if-eqz p1, :cond_4

    .line 152
    const-string v6, "isBtEnableDialog"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 155
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 156
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, ChinaNalSecurityType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_security_on_check"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 158
    .local v4, isChecked:I
    const-string v6, "CheckBluetoothStateActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate(): enable PopUp for Bluetooth  ChinaNalSecurityType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isChecked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v4, v9, :cond_6

    .line 161
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 165
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto/16 :goto_0

    .line 169
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto/16 :goto_0

    .line 176
    .end local v0           #ChinaNalSecurityType:Ljava/lang/String;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #isChecked:I
    :cond_6
    if-eqz p1, :cond_7

    if-eqz p1, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    if-eqz v6, :cond_0

    .line 178
    :cond_7
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v6, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v6, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 183
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V

    goto/16 :goto_0

    .line 185
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 322
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 328
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    const-string v0, "isBtEnableDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    return-void
.end method
