.class public Lcom/android/settings/smartbonding/SmartBondingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

.field private mSmartBondingPreference:Landroid/preference/ListPreference;

.field private mUnclickPref:Lcom/android/settings/UnclickablePreference;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 75
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 81
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 106
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/UnclickablePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 358
    const v0, 0x104000a

    .line 359
    .local v0, popupBtnId:I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    const v0, 0x7f09133c

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    const v0, 0x7f09133b

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    const v0, 0x7f09133a

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 343
    const v0, 0x7f091335

    .line 344
    .local v0, popupMsgId:I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const v0, 0x7f091339

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    const v0, 0x7f091338

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 349
    const v0, 0x7f091337

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    const v0, 0x7f091336

    goto :goto_0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 418
    return-void
.end method

.method private showNotificationDialog()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const v11, 0x7f091331

    const v14, 0x7f09019d

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 260
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 261
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    iput-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 266
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 269
    .local v6, res:Landroid/content/res/Resources;
    const v9, 0x7f091340

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 329
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 272
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 274
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f091339

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingSettings$4;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$4;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 282
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 286
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 289
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040140

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, layout:Landroid/view/View;
    const v9, 0x7f0b035d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 291
    .local v8, tv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getTextIdUnderNetworkStatus()I

    move-result v4

    .line 292
    .local v4, msgResId:I
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 294
    const v9, 0x7f0b014b

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 295
    .local v3, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 296
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 298
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 299
    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getBtnIdUnderNetworkStatus()I

    move-result v9

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$5;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const/high16 v9, 0x104

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$6;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 320
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 322
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingSettings$7;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$7;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 423
    return-void
.end method

.method private updateSmartBondingState(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/UnclickablePreference;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 236
    .local v1, smartBondingState:Z
    :goto_0
    if-eqz p2, :cond_4

    if-nez v1, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification_do_not_show"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 238
    .local v0, do_not_show_again:Z
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V

    .line 246
    .end local v0           #do_not_show_again:Z
    :goto_2
    return-void

    .end local v1           #smartBondingState:Z
    :cond_1
    move v1, v3

    .line 235
    goto :goto_0

    .restart local v1       #smartBondingState:Z
    :cond_2
    move v0, v3

    .line 237
    goto :goto_1

    .line 241
    .restart local v0       #do_not_show_again:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 244
    .end local v0           #do_not_show_again:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x1

    const/4 v11, -0x2

    const/4 v7, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v5, 0x7f0700be

    invoke-virtual {p0, v5}, Lcom/android/settings/smartbonding/SmartBondingSettings;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    .line 124
    new-instance v5, Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v8}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 125
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 127
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    :cond_0
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f0034

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 130
    .local v1, padding:I
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 131
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 133
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    .line 142
    .end local v1           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "smart_bonding"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v4, v6

    .line 143
    .local v4, smartBondingState:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    const-string v5, "smart_bonding_size"

    invoke-virtual {p0, v5}, Lcom/android/settings/smartbonding/SmartBondingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "smart_bonding_file_size"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, fileSize:I
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 154
    const-string v5, "smart_bonding_popup"

    invoke-virtual {p0, v5}, Lcom/android/settings/smartbonding/SmartBondingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v5, "help_smart_bonding"

    invoke-virtual {p0, v5}, Lcom/android/settings/smartbonding/SmartBondingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/UnclickablePreference;

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    .line 157
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v5}, Lcom/android/settings/UnclickablePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, prefTitle:Ljava/lang/String;
    const-string v5, "%d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    const-string v8, "%d"

    const-string v9, "30"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    invoke-direct {p0, v7}, Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V

    .line 173
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/smartbonding/SmartBondingSettings;->setHasOptionsMenu(Z)V

    .line 174
    return-void

    .end local v0           #fileSize:I
    .end local v2           #prefTitle:Ljava/lang/String;
    .end local v4           #smartBondingState:Z
    :cond_3
    move v4, v7

    .line 142
    goto/16 :goto_0

    .line 161
    .restart local v0       #fileSize:I
    .restart local v2       #prefTitle:Ljava/lang/String;
    .restart local v4       #smartBondingState:Z
    :cond_4
    const-string v5, "SmartBondingSettings"

    const-string v8, "There is no %d."

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 372
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, countryCode:Ljava/lang/String;
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const/4 v1, 0x1

    const v2, 0x7f0912d7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201ca

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 385
    .local v1, itemId:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "download_booster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->startActivity(Landroid/content/Intent;)V

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "download_booster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "SmartBondingSettings"

    const-string v3, "There is no help app."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->unregisterForWfcAndAirPlaneStatus()V

    .line 222
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, key:Ljava/lang/String;
    const-string v2, "smart_bonding_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding_file_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 339
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, key:Ljava/lang/String;
    const-string v1, "smart_bonding_popup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding_notification_do_not_show_speed"

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    const-string v2, "SmartBondingSettings"

    const-string v5, "onResume()"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 187
    :cond_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 188
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 192
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->finish()V

    .line 214
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_bonding"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 202
    .local v1, smartBondingState:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_bonding"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_bonding_notification_do_not_show_speed"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    .line 208
    .local v0, do_not_show_speed_popup:Z
    :goto_2
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->registerForWfcAndAirPlaneStatus()V

    goto :goto_0

    .end local v0           #do_not_show_speed_popup:Z
    .end local v1           #smartBondingState:Z
    :cond_5
    move v1, v4

    .line 201
    goto :goto_1

    .restart local v1       #smartBondingState:Z
    :cond_6
    move v0, v4

    .line 207
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 231
    :cond_0
    return-void
.end method
