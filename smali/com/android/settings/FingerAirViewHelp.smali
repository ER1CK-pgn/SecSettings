.class public Lcom/android/settings/FingerAirViewHelp;
.super Landroid/app/Fragment;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDBItem:Ljava/lang/String;

.field private mHelpType:Ljava/lang/String;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 68
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f090fd6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 310
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    iput-object v9, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 314
    :cond_0
    move-object v3, p1

    .line 315
    .local v3, tutorial_type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f091000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, title:Ljava/lang/String;
    const v4, 0x7f091001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, message:Ljava/lang/String;
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    const v4, 0x7f091002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090fe6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    :cond_1
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0907d2

    new-instance v6, Lcom/android/settings/FingerAirViewHelp$7;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/FingerAirViewHelp$7;-><init>(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090198

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 373
    return-void

    .line 329
    :cond_2
    const-string v4, "progress_bar_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    const v4, 0x7f091003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090fef

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 339
    :cond_3
    const-string v4, "speed_dial_tip"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    const v4, 0x7f091004

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090ff1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 349
    :cond_4
    const-string v4, "magnifier"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    const v4, 0x7f091005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090fe2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    :cond_0
    return-void

    .line 306
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v4, "type"

    const-string v5, "default"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 79
    .local v1, mActivity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 80
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 81
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 82
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 84
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 85
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 91
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 93
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/16 v15, 0x64

    if-lt v14, v15, :cond_5

    const/4 v5, 0x1

    .line 99
    .local v5, isKnox:Z
    :goto_0
    const/4 v13, 0x0

    .line 100
    .local v13, view:Landroid/view/View;
    const v14, 0x7f04009f

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 102
    const v14, 0x7f0b01d0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 104
    .local v3, helpContent:Landroid/widget/LinearLayout;
    const-string v14, "information_preview"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 105
    const-string v14, "finger_air_view_information_preview"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 107
    new-instance v4, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 108
    .local v4, infoPreview:Lcom/android/settings/HelpItem;
    const v14, 0x7f090ff4

    invoke-virtual {v4, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 109
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 110
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 111
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 113
    .local v12, splanner:Lcom/android/settings/HelpItem;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, salesCode:Ljava/lang/String;
    const-string v14, "ATT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "TMB"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "VMU"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "BST"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 117
    .local v9, res:Landroid/content/res/Resources;
    const v14, 0x7f090ff6

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 118
    const v14, 0x7f090ff8

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f090ff6

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 124
    .end local v9           #res:Landroid/content/res/Resources;
    :goto_1
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 127
    if-nez v5, :cond_1

    .line 128
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$1;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 140
    .local v2, gallery:Lcom/android/settings/HelpItem;
    const v14, 0x7f090ff9

    invoke-virtual {v2, v14}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 141
    const v14, 0x7f090ffa

    invoke-virtual {v2, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 142
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 145
    if-nez v5, :cond_2

    .line 146
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$2;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v2, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    const-string v14, "KDI"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 159
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 160
    .local v7, message:Lcom/android/settings/HelpItem;
    const v14, 0x7f090ffb

    invoke-virtual {v7, v14}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 161
    const v14, 0x7f090ffc

    invoke-virtual {v7, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 162
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 165
    if-nez v5, :cond_3

    .line 166
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$3;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v7, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    .end local v2           #gallery:Lcom/android/settings/HelpItem;
    .end local v4           #infoPreview:Lcom/android/settings/HelpItem;
    .end local v7           #message:Lcom/android/settings/HelpItem;
    .end local v10           #salesCode:Ljava/lang/String;
    .end local v12           #splanner:Lcom/android/settings/HelpItem;
    :cond_4
    :goto_2
    return-object v13

    .line 97
    .end local v3           #helpContent:Landroid/widget/LinearLayout;
    .end local v5           #isKnox:Z
    .end local v13           #view:Landroid/view/View;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 121
    .restart local v3       #helpContent:Landroid/widget/LinearLayout;
    .restart local v4       #infoPreview:Lcom/android/settings/HelpItem;
    .restart local v5       #isKnox:Z
    .restart local v10       #salesCode:Ljava/lang/String;
    .restart local v12       #splanner:Lcom/android/settings/HelpItem;
    .restart local v13       #view:Landroid/view/View;
    :cond_6
    const v14, 0x7f090ff5

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 122
    const v14, 0x7f090ff7

    invoke-virtual {v12, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_1

    .line 178
    .end local v4           #infoPreview:Lcom/android/settings/HelpItem;
    .end local v10           #salesCode:Ljava/lang/String;
    .end local v12           #splanner:Lcom/android/settings/HelpItem;
    :cond_7
    const-string v14, "progress_bar_preview"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 179
    const-string v14, "finger_air_view_pregress_bar_preview"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 181
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 182
    .local v8, progress_bar_preview:Lcom/android/settings/HelpItem;
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 183
    const v14, 0x7f090ffd

    invoke-virtual {v8, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 184
    const v14, 0x7f0200b7

    invoke-virtual {v8, v14}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 185
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 186
    if-nez v5, :cond_8

    .line 187
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$4;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v8, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_8
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 198
    .end local v8           #progress_bar_preview:Lcom/android/settings/HelpItem;
    :cond_9
    const-string v14, "speed_dial_tip"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 199
    const-string v14, "finger_air_view_speed_dial_tip"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 201
    new-instance v11, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 202
    .local v11, speed_dial_tip:Lcom/android/settings/HelpItem;
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 203
    const v14, 0x7f090ffe

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 204
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 205
    .restart local v10       #salesCode:Ljava/lang/String;
    const-string v14, "ATT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "TMB"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "VMU"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "BST"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 208
    :cond_a
    const v14, 0x7f0200bc

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 212
    :goto_3
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 213
    if-nez v5, :cond_b

    .line 214
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$5;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_b
    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 210
    :cond_c
    const v14, 0x7f0200bb

    invoke-virtual {v11, v14}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_3

    .line 225
    .end local v10           #salesCode:Ljava/lang/String;
    .end local v11           #speed_dial_tip:Lcom/android/settings/HelpItem;
    :cond_d
    const-string v14, "magnifier"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 226
    const-string v14, "finger_air_view_magnifier"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 228
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 229
    .local v6, magnifier:Lcom/android/settings/HelpItem;
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 230
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090fe3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, contents:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 234
    .restart local v10       #salesCode:Ljava/lang/String;
    const-string v14, "DCM"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 235
    const-string v14, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090fe3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_e
    invoke-virtual {v6, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 241
    const v14, 0x7f0200b3

    invoke-virtual {v6, v14}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 242
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 243
    if-nez v5, :cond_f

    .line 244
    new-instance v14, Lcom/android/settings/FingerAirViewHelp$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/FingerAirViewHelp$6;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v6, v14}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_f
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 283
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    .local v1, status:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    .end local v1           #status:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 297
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter "type"

    .prologue
    .line 375
    const-string v3, "information_preview_splanner"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.calendar.help"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    .line 435
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v3, "information_preview_gallery"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    const-string v3, "information_preview_gallery"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 384
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v3, "IsHelpMode"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "information_preview_message"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.help.AirViewTutorialReceiver.java"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.help.AirViewMainActivity"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "progress_bar_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 395
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 397
    const-string v3, "progress_bar_preview"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 401
    .local v2, resId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://com.samsung.helpplugin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v3, "type"

    const-string v4, "finger"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 410
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "FingerAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    .end local v2           #resId:I
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 420
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v3, "speed_dial_tip"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 422
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, mIntent:Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v1}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 426
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #mIntent:Landroid/content/Intent;
    goto :goto_1

    .line 430
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_a
    const-string v3, "magnifier"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.sbrowsertry.GUIDE_AIRVIEW_MAGNIFIER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v1       #mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/FingerAirViewHelp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
