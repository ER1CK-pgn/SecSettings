.class public final Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEmergencyCallbackMode:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mRecRegistered:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    .line 89
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    return p1
.end method

.method private createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 346
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090262

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 348
    const v1, 0x7f09102a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 349
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 350
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 351
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 353
    return-void
.end method

.method private createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 358
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090262

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 359
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 360
    const v1, 0x7f09102a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 361
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 362
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 363
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 365
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .parameter "deviceManager"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 383
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f090262

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 385
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 386
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 391
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 395
    .local v1, pinBytes:[B
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createMyPlaceDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 371
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090263

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 373
    const v1, 0x7f09102a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 374
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 375
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 376
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 378
    return-void
.end method

.method private createPinEntryView(Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .parameter "deviceName"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040031

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 252
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0b007e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 253
    .local v5, messageView:Landroid/widget/TextView;
    const v8, 0x7f0b008f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 254
    .local v6, messageView2:Landroid/widget/TextView;
    const v8, 0x7f0b008e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 255
    .local v0, alphanumericPin:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v8, 0x7f0b008c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 256
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 258
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const-string v10, "inputType=PredictionOff"

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 270
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 287
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 299
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return-object v7

    .line 272
    .restart local v7       #view:Landroid/view/View;
    :pswitch_0
    const v2, 0x7f090264

    .line 273
    .local v2, messageId1:I
    const v3, 0x7f090268

    .line 275
    .local v3, messageId2:I
    const/16 v1, 0x10

    .line 292
    .local v1, maxLength:I
    :goto_1
    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-virtual {p0, v2, v8}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, messageText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 296
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v12, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 279
    .end local v1           #maxLength:I
    .end local v2           #messageId1:I
    .end local v3           #messageId2:I
    .end local v4           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f090265

    .line 280
    .restart local v2       #messageId1:I
    const v3, 0x7f090269

    .line 282
    .restart local v3       #messageId2:I
    const/4 v1, 0x6

    .line 283
    .restart local v1       #maxLength:I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .parameter "deviceManager"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 238
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090262

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 239
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 240
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 241
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 242
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 243
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 246
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 247
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    return-void
.end method

.method private createView(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 13
    .parameter "deviceManager"

    .prologue
    const/4 v5, 0x0

    const v12, 0x7f09026a

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040030

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 304
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, name:Ljava/lang/String;
    const v6, 0x7f0b007e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 308
    .local v2, messageView:Landroid/widget/TextView;
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 336
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Incorrect pairing type received, not creating view"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 340
    .end local v4           #view:Landroid/view/View;
    :goto_0
    return-object v4

    .line 311
    .restart local v4       #view:Landroid/view/View;
    :pswitch_0
    const v5, 0x7f09026a

    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    .local v1, messageText:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    .end local v1           #messageText:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/util/UnknownFormatConversionException;
    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "Unknown Device"

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {p0, v12, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 321
    .end local v0           #e:Ljava/util/UnknownFormatConversionException;
    .end local v1           #messageText:Ljava/lang/String;
    :pswitch_1
    const v5, 0x7f09026b

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 326
    .end local v1           #messageText:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f09026c

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 332
    .end local v1           #messageText:Ljava/lang/String;
    :pswitch_3
    const v5, 0x7f09026d

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private destroyNotification()V
    .locals 2

    .prologue
    .line 532
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 533
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 534
    return-void
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 471
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 427
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 464
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Incorrect pairing type received"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 429
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 430
    .local v2, pinBytes:[B
    if-eqz v2, :cond_0

    .line 433
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 437
    .end local v2           #pinBytes:[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, passkey:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 443
    .end local v1           #passkey:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 452
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 457
    :pswitch_5
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "android.bluetooth.profile.action.CARKIT_CONNECTED is sent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profile.action.CARKIT_CONNECTED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, intentMP:Landroid/content/Intent;
    const-string v3, "DeviceName"

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v3, "MacAddress"

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    :cond_0
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 506
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 524
    if-eqz p2, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 481
    packed-switch p2, :pswitch_data_0

    .line 492
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 497
    :goto_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 498
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 502
    :cond_0
    return-void

    .line 483
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 119
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "power"

    invoke-virtual {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 120
    .local v8, pm:Landroid/os/PowerManager;
    const v9, 0x3000001a

    const-string v10, "BluetoothPairingDialog"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    const/4 v9, 0x1

    const-string v10, "BluetoothPairingDialog"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    const/16 v9, 0xa

    const-string v10, "BluetoothPairingDialog"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 126
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    const-string v9, "BluetoothPairingDialog"

    const-string v10, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 233
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v5

    .line 135
    .local v5, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v5, :cond_1

    .line 136
    const-string v9, "BluetoothPairingDialog"

    const-string v10, "Error: BluetoothAdapter not supported by system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 142
    .local v0, deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 143
    const-string v9, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v10, -0x8000

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 145
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 146
    .local v4, mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    .line 147
    .local v3, mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 149
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 150
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 154
    :cond_2
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v9, :pswitch_data_0

    .line 203
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 205
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 207
    :cond_3
    const-string v9, "BluetoothPairingDialog"

    const-string v10, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mRecRegistered:Z

    .line 216
    const-string v9, "VZW"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 219
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 220
    .local v1, ecmIntent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 222
    const-string v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    .line 223
    iget-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    if-eqz v9, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 228
    .end local v1           #ecmIntent:Landroid/content/Intent;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 157
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 161
    :pswitch_1
    const-string v9, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v10, -0x8000

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, passkey:I
    const/high16 v9, -0x8000

    if-ne v7, v9, :cond_5

    .line 164
    const-string v9, "BluetoothPairingDialog"

    const-string v10, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    goto/16 :goto_0

    .line 169
    :cond_5
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%06d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 170
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto/16 :goto_1

    .line 175
    .end local v7           #passkey:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto/16 :goto_1

    .line 180
    :pswitch_3
    const-string v9, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v10, -0x8000

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 182
    .local v6, pairingKey:I
    const/high16 v9, -0x8000

    if-ne v6, v9, :cond_6

    .line 183
    const-string v9, "BluetoothPairingDialog"

    const-string v10, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    goto/16 :goto_0

    .line 193
    :cond_6
    const-string v9, "%06d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto/16 :goto_1

    .line 200
    .end local v6           #pairingKey:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createMyPlaceDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto/16 :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 413
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mRecRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 416
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 474
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 477
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 510
    return-void
.end method
