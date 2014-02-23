.class final Lcom/android/settings/guide/BtSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/BtSettingsGuider$6;,
        Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 133
    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 118
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 119
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 123
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 125
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 131
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 626
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$5;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 143
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 370
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .parameter "resID"

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, bubbleView:Landroid/view/View;
    const v2, 0x7f0911f5

    if-eq p1, v2, :cond_0

    .line 500
    const v2, 0x7f0b01b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 502
    .local v1, summary:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 516
    .end local v1           #summary:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 459
    .local v1, bubbleView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f040091

    if-ne p2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f040093

    if-eq p2, v3, :cond_2

    .line 461
    :cond_1
    const v3, 0x7f0b01b4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 463
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 477
    .end local v2           #summary:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 479
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 482
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 483
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 484
    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    :cond_3
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 399
    const/4 v1, -0x1

    .line 401
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 405
    :cond_0
    const v0, 0x7f040099

    .line 407
    .local v0, layout:I
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 409
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$6;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 452
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 411
    :pswitch_0
    const v1, 0x7f091205

    .line 412
    goto :goto_1

    .line 415
    :pswitch_1
    const v1, 0x7f091203

    .line 416
    goto :goto_1

    .line 418
    :pswitch_2
    const v1, 0x7f091202

    .line 419
    goto :goto_1

    .line 421
    :pswitch_3
    const v1, 0x7f0911f5

    .line 422
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    const v0, 0x7f040093

    .line 430
    :goto_2
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 434
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 425
    :cond_2
    const v0, 0x7f040091

    goto :goto_2

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 703
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 712
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 4
    .parameter "bondState"
    .parameter "prevBondState"

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 723
    .local v0, bShowDialog:Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 754
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .end local v0           #bShowDialog:Z
    :cond_2
    move v0, v1

    .line 721
    goto :goto_0

    .line 725
    .restart local v0       #bShowDialog:Z
    :pswitch_1
    if-eqz v0, :cond_3

    .line 726
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 728
    :cond_3
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 732
    :pswitch_2
    if-ne p2, v3, :cond_1

    .line 734
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_5

    .line 735
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 737
    if-nez v0, :cond_4

    .line 739
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 744
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 742
    :cond_5
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .parameter "action"
    .parameter "intent"

    .prologue
    const/high16 v2, -0x8000

    .line 646
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$6;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 648
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 652
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 656
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 660
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 684
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 857
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$6;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 862
    :pswitch_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 868
    :pswitch_1
    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 871
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 874
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 875
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "resID"
    .parameter "layout"
    .parameter "type"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, created:Z
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 336
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 338
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 339
    const/4 v0, 0x1

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p3, v1, :cond_2

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 348
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_3

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 354
    :goto_1
    if-eqz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 358
    :cond_1
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 359
    iput p2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 360
    return-void

    .line 342
    :cond_2
    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    goto :goto_0

    .line 351
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_1
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .parameter "isScanning"

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_1

    .line 247
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    :cond_0
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 251
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 257
    .local v0, cachedDevices:I
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    .line 258
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 260
    :cond_4
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 386
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 388
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 389
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 163
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 377
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 156
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->finish()V

    .line 236
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v7, 0x6f

    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 768
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$6;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 832
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 837
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 844
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 771
    :pswitch_0
    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 786
    const/4 v1, 0x1

    goto :goto_0

    .line 787
    :cond_2
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 789
    const/4 v2, 0x0

    .line 790
    const/4 v1, 0x1

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 798
    :pswitch_1
    if-ne p1, v7, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 802
    const/4 v2, 0x0

    .line 803
    const/4 v1, 0x1

    goto :goto_0

    .line 805
    :cond_3
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 807
    const/4 v2, 0x0

    .line 808
    const/4 v1, 0x1

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 817
    :pswitch_2
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 819
    const/4 v2, 0x0

    .line 820
    const/4 v1, 0x1

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 839
    .restart local v0       #focus:Landroid/view/View;
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 759
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 220
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 597
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 172
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 175
    sput-boolean v4, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 180
    :cond_0
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_1

    .line 205
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 187
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 201
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 204
    sput-boolean v3, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_4

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 190
    :cond_4
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_5

    .line 192
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 196
    :goto_2
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 0
    .parameter "enabler"

    .prologue
    .line 618
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 527
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 529
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 533
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 534
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 536
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 542
    :cond_0
    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 547
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 527
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902cd

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 556
    const-wide/16 v1, 0x514

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 588
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    const v5, 0x7f091203

    const v4, 0x7f0911f5

    const/4 v0, 0x1

    const v3, 0x7f040099

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, p1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 276
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$6;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_1
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 278
    :pswitch_0
    const v1, 0x7f091205

    invoke-direct {p0, v1, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 281
    :pswitch_1
    invoke-direct {p0, v5, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 285
    :pswitch_2
    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 290
    const v1, 0x7f091202

    invoke-direct {p0, v1, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 294
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 295
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const v1, 0x7f040093

    invoke-direct {p0, v4, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 298
    :cond_1
    const v1, 0x7f040091

    invoke-direct {p0, v4, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 311
    :pswitch_4
    invoke-direct {p0, v5, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 323
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
