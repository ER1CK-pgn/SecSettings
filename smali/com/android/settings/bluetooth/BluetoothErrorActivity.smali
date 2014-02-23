.class public Lcom/android/settings/bluetooth/BluetoothErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothErrorActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040088

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 67
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 69
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->setupAlert()V

    .line 72
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 93
    return-void
.end method
