.class public Lcom/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# static fields
.field static block_HelpStep2:Z


# instance fields
.field private bTabStyle:Z

.field private mActivity:Landroid/app/Activity;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcHelpText:Landroid/preference/Preference;

.field private mNfcWallet:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 75
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 77
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcSettings;->bTabStyle:Z

    .line 93
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 100
    new-instance v0, Lcom/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcSettings$1;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/nfc/NfcSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private createHelpStep1Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 517
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 519
    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 523
    const-string v1, "NfcSettings"

    const-string v2, "createHelpStep1Dialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sput-boolean v3, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    .line 527
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 529
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bc

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 532
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 537
    .end local v0           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private createHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 543
    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 546
    :cond_0
    sget-boolean v2, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    if-eqz v2, :cond_2

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 551
    :cond_2
    const-string v2, "NfcSettings"

    const-string v3, "createHelpStep2Dialog() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 554
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400bd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 555
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 556
    .local v0, closeBtn:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/nfc/NfcSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcSettings$3;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 569
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 570
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 571
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 572
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 573
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "targetPackage"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 585
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 586
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 588
    .local v3, state:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 600
    :cond_0
    :goto_1
    return v4

    .end local v3           #state:Z
    :cond_1
    move v3, v4

    .line 586
    goto :goto_0

    .line 592
    .restart local v3       #state:Z
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 593
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 594
    goto :goto_1

    .line 595
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 597
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v1, 0x7f07007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 132
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 135
    new-instance v3, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 137
    .local v3, actionBarSwitch:Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    check-cast v25, Landroid/preference/PreferenceActivity;

    .line 139
    .local v25, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 142
    .local v24, padding:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v1, v2, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v6, 0x10

    invoke-virtual {v1, v2, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x15

    invoke-direct {v2, v6, v7, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 153
    .end local v24           #padding:I
    .end local v25           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 154
    .local v21, intent:Landroid/content/Intent;
    const/16 v19, 0x0

    .line 155
    .local v19, bHelpMode:Z
    if-eqz v21, :cond_2

    .line 156
    const-string v1, "fromHelp"

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 157
    if-eqz v19, :cond_2

    .line 158
    new-instance v1, Lcom/android/settings/nfc/NfcSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/nfc/NfcSettings$2;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 182
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 186
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/nfc/NfcSettings;->bTabStyle:Z

    .line 188
    const-string v1, "click_tap_pay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 190
    .local v9, mTapPay:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.nfc.hce"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 191
    const-string v1, "nfc_tap_pay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceGroup;

    .line 192
    .local v27, tapPayGroup:Landroid/preference/PreferenceGroup;
    if-eqz v27, :cond_3

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_3
    const/4 v9, 0x0

    .line 197
    .end local v27           #tapPayGroup:Landroid/preference/PreferenceGroup;
    :cond_4
    const-string v1, "nfc_wallet_manager_sub"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_5

    .line 203
    const-string v1, "nfc_wallet"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    .line 204
    .local v23, nfcCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v23           #nfcCategory:Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v1, "nfc_default_transaction_sub"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_6

    .line 215
    const-string v1, "nfc_default_transaction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    .line 216
    .restart local v23       #nfcCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    .end local v23           #nfcCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 222
    const-string v1, "toggle_android_beam"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    .line 223
    .local v4, androidBeam:Landroid/preference/SwitchPreferenceScreen;
    const-string v1, "cat_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceGroup;

    .line 224
    .local v26, rwP2pCat:Landroid/preference/PreferenceGroup;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 225
    :cond_7
    const-string v1, "toggle_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    .line 226
    .local v5, rwP2pSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    const v1, 0x7f0902da

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 228
    const v1, 0x7f0902da

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    :cond_8
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 262
    .end local v5           #rwP2pSwitch:Landroid/preference/SwitchPreferenceScreen;
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 263
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_a

    .line 264
    sget v1, Lcom/android/settings/nfc/NfcSettings;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    .line 266
    .local v20, extra_bundle:Landroid/os/Bundle;
    const-string v1, "extra_parent_preference_key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 267
    .local v28, targetKey:Ljava/lang/String;
    const-string v1, "toggle_android_beam"

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 268
    sget v1, Lcom/android/settings/nfc/NfcSettings;->mSettingValue:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/16 v29, 0x1

    .line 269
    .local v29, value:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/settings/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 274
    .end local v20           #extra_bundle:Landroid/os/Bundle;
    .end local v28           #targetKey:Ljava/lang/String;
    .end local v29           #value:Z
    :cond_a
    const-string v1, "nfc_android_beam_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    .line 276
    .local v22, nfcAdapter:Landroid/nfc/NfcAdapter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 280
    invoke-virtual/range {v22 .. v22}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v2, 0x7f0902d9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 288
    :cond_b
    :goto_2
    return-void

    .line 247
    .end local v22           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :cond_c
    if-eqz v26, :cond_d

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_d
    new-instance v10, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-object/from16 v17, v0

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_0

    .line 268
    .restart local v20       #extra_bundle:Landroid/os/Bundle;
    .restart local v28       #targetKey:Ljava/lang/String;
    :cond_e
    const/16 v29, 0x0

    goto :goto_1

    .line 282
    .end local v20           #extra_bundle:Landroid/os/Bundle;
    .end local v28           #targetKey:Ljava/lang/String;
    .restart local v22       #nfcAdapter:Landroid/nfc/NfcAdapter;
    :cond_f
    invoke-virtual/range {v22 .. v22}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v2, 0x7f0902d7

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 284
    :cond_10
    invoke-virtual/range {v22 .. v22}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v2, 0x7f0902d8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 491
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    const v1, 0x7f090c0b

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02010e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 495
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 363
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 365
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 370
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 373
    :cond_1
    sget-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "NfcSettings"

    const-string v1, "onDestroy called!!finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    .line 378
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 499
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 511
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 501
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    const-string v2, "default"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 506
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 306
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, super_mOpenDetailMenu:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 320
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 321
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 349
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 351
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 354
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    :cond_5
    return-void
.end method
