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
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 65
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f090e62

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 293
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    iput-object v9, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 297
    :cond_0
    move-object v3, p1

    .line 298
    .local v3, tutorial_type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 299
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f090e8c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, title:Ljava/lang/String;
    const v4, 0x7f090e8d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, message:Ljava/lang/String;
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    const v4, 0x7f090e8e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e72

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
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

    const v5, 0x7f09074c

    new-instance v6, Lcom/android/settings/FingerAirViewHelp$7;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/FingerAirViewHelp$7;-><init>(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090173

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 336
    return-void

    .line 307
    :cond_2
    const-string v4, "progress_bar_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 308
    const v4, 0x7f090e8f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e7b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_3
    const-string v4, "speed_dial_tip"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    const v4, 0x7f090e90

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e7d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_4
    const-string v4, "magnifier"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    const v4, 0x7f090e91

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e6e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    :cond_0
    return-void

    .line 289
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

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    const-string v4, "type"

    const-string v5, "default"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    .local v1, mActivity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 77
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 78
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 79
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 81
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 82
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 88
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 90
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const/4 v12, 0x0

    .line 95
    .local v12, view:Landroid/view/View;
    const v13, 0x7f04008e

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 97
    const v13, 0x7f0b01ad

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 99
    .local v3, helpContent:Landroid/widget/LinearLayout;
    const-string v13, "information_preview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 100
    const-string v13, "finger_air_view_information_preview"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 102
    new-instance v4, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 103
    .local v4, infoPreview:Lcom/android/settings/HelpItem;
    const v13, 0x7f090e80

    invoke-virtual {v4, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 104
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 105
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 106
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v11, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 108
    .local v11, splanner:Lcom/android/settings/HelpItem;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, salesCode:Ljava/lang/String;
    const-string v13, "ATT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "SPR"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "VZW"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "TMB"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "USC"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "VMU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "BST"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "XAS"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 112
    .local v8, res:Landroid/content/res/Resources;
    const v13, 0x7f090e82

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 113
    const v13, 0x7f090e84

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const v16, 0x7f090e82

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 119
    .end local v8           #res:Landroid/content/res/Resources;
    :goto_0
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 122
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$1;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 133
    .local v2, gallery:Lcom/android/settings/HelpItem;
    const v13, 0x7f090e85

    invoke-virtual {v2, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 134
    const v13, 0x7f090e86

    invoke-virtual {v2, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 135
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 138
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$2;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v2, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    const-string v13, "KDI"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 150
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 151
    .local v6, message:Lcom/android/settings/HelpItem;
    const v13, 0x7f090e87

    invoke-virtual {v6, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 152
    const v13, 0x7f090e88

    invoke-virtual {v6, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 153
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 156
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$3;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v6, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    .end local v2           #gallery:Lcom/android/settings/HelpItem;
    .end local v4           #infoPreview:Lcom/android/settings/HelpItem;
    .end local v6           #message:Lcom/android/settings/HelpItem;
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v11           #splanner:Lcom/android/settings/HelpItem;
    :cond_1
    :goto_1
    return-object v12

    .line 116
    .restart local v4       #infoPreview:Lcom/android/settings/HelpItem;
    .restart local v9       #salesCode:Ljava/lang/String;
    .restart local v11       #splanner:Lcom/android/settings/HelpItem;
    :cond_2
    const v13, 0x7f090e81

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 117
    const v13, 0x7f090e83

    invoke-virtual {v11, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto :goto_0

    .line 167
    .end local v4           #infoPreview:Lcom/android/settings/HelpItem;
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v11           #splanner:Lcom/android/settings/HelpItem;
    :cond_3
    const-string v13, "progress_bar_preview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 168
    const-string v13, "finger_air_view_pregress_bar_preview"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 170
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 171
    .local v7, progress_bar_preview:Lcom/android/settings/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 172
    const v13, 0x7f090e89

    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 173
    const v13, 0x7f0200ab

    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 174
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 175
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$4;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 185
    .end local v7           #progress_bar_preview:Lcom/android/settings/HelpItem;
    :cond_4
    const-string v13, "speed_dial_tip"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 186
    const-string v13, "finger_air_view_speed_dial_tip"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 188
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 189
    .local v10, speed_dial_tip:Lcom/android/settings/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 190
    const v13, 0x7f090e8a

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 191
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 192
    .restart local v9       #salesCode:Ljava/lang/String;
    const-string v13, "ATT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "SPR"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "VZW"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "TMB"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "USC"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "VMU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "BST"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "XAS"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 195
    :cond_5
    const v13, 0x7f0200b0

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 199
    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 200
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$5;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 197
    :cond_6
    const v13, 0x7f0200af

    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_2

    .line 210
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v10           #speed_dial_tip:Lcom/android/settings/HelpItem;
    :cond_7
    const-string v13, "magnifier"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 211
    const-string v13, "finger_air_view_magnifier"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 213
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 214
    .local v5, magnifier:Lcom/android/settings/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090e6f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, contents:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 219
    .restart local v9       #salesCode:Ljava/lang/String;
    const-string v13, "DCM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 220
    const-string v13, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090e6f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_8
    invoke-virtual {v5, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 226
    const v13, 0x7f0200a7

    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 227
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 228
    new-instance v13, Lcom/android/settings/FingerAirViewHelp$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$6;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 266
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    .local v1, status:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    .end local v1           #status:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 273
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter "type"

    .prologue
    .line 338
    const-string v3, "information_preview_splanner"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.calendar.help"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    .line 398
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v3, "information_preview_gallery"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 342
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    const-string v3, "information_preview_gallery"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 347
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v3, "IsHelpMode"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "information_preview_message"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.help.AirViewTutorialReceiver.java"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.help.AirViewMainActivity"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 357
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "progress_bar_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 360
    const-string v3, "progress_bar_preview"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 362
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 364
    .local v2, resId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
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

    .line 370
    const-string v3, "type"

    const-string v4, "finger"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 373
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "FingerAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    .end local v2           #resId:I
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v3, "speed_dial_tip"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, mIntent:Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v1}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 389
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #mIntent:Landroid/content/Intent;
    goto :goto_1

    .line 393
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_a
    const-string v3, "magnifier"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.sbrowsertry.GUIDE_AIRVIEW_MAGNIFIER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v1       #mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/FingerAirViewHelp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
