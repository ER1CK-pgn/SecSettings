.class public Lcom/android/settings/PenAirViewHelp;
.super Landroid/app/Fragment;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDBItem:Ljava/lang/String;

.field private mDisableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHelpType:Ljava/lang/String;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 86
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 440
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 444
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 446
    :cond_1
    return-void
.end method

.method private showInforPreviewDisableDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fd9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d2

    new-instance v2, Lcom/android/settings/PenAirViewHelp$7;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$7;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090198

    new-instance v2, Lcom/android/settings/PenAirViewHelp$6;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$6;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 304
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewHelp$8;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewHelp$8;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 310
    return-void
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 11
    .parameter "type"

    .prologue
    const v10, 0x7f090e12

    const v9, 0x7f090e10

    const v8, 0x7f090fd5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 313
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 314
    move-object v3, p1

    .line 315
    .local v3, tutorial_type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

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
    const-string v4, "pointer"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0907d2

    new-instance v6, Lcom/android/settings/PenAirViewHelp$9;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/PenAirViewHelp$9;-><init>(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090198

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 359
    return-void

    .line 324
    :cond_1
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_2
    const-string v4, "progress_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    const v4, 0x7f090fa4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090fa4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_3
    const-string v4, "speed_dial_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    const v4, 0x7f090fa6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090fa6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    :cond_4
    const-string v4, "icon_label"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 340
    const v4, 0x7f090e14

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e14

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 344
    :cond_5
    const-string v4, "list_scroll"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    const v4, 0x7f090e16

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e16

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    const-string v5, "pen_hovering_information_preview"

    if-ne v4, v5, :cond_1

    .line 278
    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 279
    .local v1, status:I
    if-ne v1, v2, :cond_1

    .line 280
    const-string v2, "information_preview"

    invoke-direct {p0, v2}, Lcom/android/settings/PenAirViewHelp;->showInforPreviewDisableDialog(Ljava/lang/String;)V

    .line 286
    .end local v1           #status:I
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 98
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 101
    .local v1, mActivity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 102
    instance-of v3, v1, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 105
    .local v2, padding:I
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 108
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 113
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 115
    .end local v2           #padding:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_1

    const/4 v4, 0x1

    .line 123
    .local v4, isKnox:Z
    :goto_0
    const/4 v10, 0x0

    .line 124
    .local v10, view:Landroid/view/View;
    const v11, 0x7f04009f

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 125
    const v11, 0x7f0b01d0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const-string v11, "pointer"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 128
    const-string v11, "pen_hovering_pointer"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 129
    new-instance v6, Lcom/android/settings/HelpItem;

    invoke-direct {v6, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 130
    .local v6, pointer:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 131
    const v11, 0x7f090fce

    invoke-virtual {v6, v11}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 132
    const v11, 0x7f02015e

    invoke-virtual {v6, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 133
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    if-eqz v4, :cond_0

    .line 135
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 248
    .end local v6           #pointer:Lcom/android/settings/HelpItem;
    :cond_0
    :goto_1
    return-object v10

    .line 121
    .end local v1           #helpContent:Landroid/widget/LinearLayout;
    .end local v4           #isKnox:Z
    .end local v10           #view:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 136
    .restart local v1       #helpContent:Landroid/widget/LinearLayout;
    .restart local v4       #isKnox:Z
    .restart local v10       #view:Landroid/view/View;
    :cond_2
    const-string v11, "information_preview"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 137
    const-string v11, "pen_hovering_information_preview"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 138
    new-instance v3, Lcom/android/settings/HelpItem;

    invoke-direct {v3, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 139
    .local v3, informatoin_preview:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 140
    const v11, 0x7f090fcf

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 141
    const v11, 0x7f0203c5

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 143
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 144
    if-eqz v4, :cond_3

    .line 145
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 156
    :goto_2
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 147
    :cond_3
    new-instance v11, Lcom/android/settings/PenAirViewHelp$1;

    invoke-direct {v11, p0}, Lcom/android/settings/PenAirViewHelp$1;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v3, v11}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 157
    .end local v3           #informatoin_preview:Lcom/android/settings/HelpItem;
    :cond_4
    const-string v11, "progress_preview"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 158
    const-string v11, "pen_hovering_progress_preview"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 159
    new-instance v7, Lcom/android/settings/HelpItem;

    invoke-direct {v7, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 160
    .local v7, progress_bar_preview:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 161
    const v11, 0x7f090fd0

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 162
    const v11, 0x7f0203c7

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 163
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 164
    if-eqz v4, :cond_5

    .line 165
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 176
    :goto_3
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 167
    :cond_5
    new-instance v11, Lcom/android/settings/PenAirViewHelp$2;

    invoke-direct {v11, p0}, Lcom/android/settings/PenAirViewHelp$2;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v7, v11}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 177
    .end local v7           #progress_bar_preview:Lcom/android/settings/HelpItem;
    :cond_6
    const-string v11, "speed_dial_preview"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 178
    const-string v11, "pen_hovering_speed_dial_preview"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 179
    new-instance v9, Lcom/android/settings/HelpItem;

    invoke-direct {v9, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 180
    .local v9, speed_dial_preview:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 181
    const v11, 0x7f090fd1

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 182
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, salesCode:Ljava/lang/String;
    const-string v11, "ATT"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "SPR"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "VZW"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "TMB"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "USC"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "VMU"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "BST"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "XAS"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 185
    :cond_7
    const v11, 0x7f0203c9

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 189
    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 190
    if-eqz v4, :cond_9

    .line 191
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 202
    :goto_5
    invoke-virtual {v9}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 187
    :cond_8
    const v11, 0x7f0203c8

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_4

    .line 193
    :cond_9
    new-instance v11, Lcom/android/settings/PenAirViewHelp$3;

    invoke-direct {v11, p0}, Lcom/android/settings/PenAirViewHelp$3;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v9, v11}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 203
    .end local v8           #salesCode:Ljava/lang/String;
    .end local v9           #speed_dial_preview:Lcom/android/settings/HelpItem;
    :cond_a
    const-string v11, "icon_label"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 204
    const-string v11, "pen_hovering_icon_label"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 205
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 206
    .local v2, icon_label:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090fd2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, contents:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 209
    const v11, 0x7f0203c4

    invoke-virtual {v2, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 210
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 211
    if-eqz v4, :cond_b

    .line 212
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 223
    :goto_6
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 214
    :cond_b
    new-instance v11, Lcom/android/settings/PenAirViewHelp$4;

    invoke-direct {v11, p0}, Lcom/android/settings/PenAirViewHelp$4;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v2, v11}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 224
    .end local v0           #contents:Ljava/lang/String;
    .end local v2           #icon_label:Lcom/android/settings/HelpItem;
    :cond_c
    const-string v11, "list_scroll"

    iget-object v12, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 225
    const-string v11, "pen_hovering_list_scroll"

    iput-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 226
    new-instance v5, Lcom/android/settings/HelpItem;

    invoke-direct {v5, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 227
    .local v5, list_scroll:Lcom/android/settings/HelpItem;
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090fd3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0       #contents:Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 231
    const v11, 0x7f0203c6

    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 232
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 233
    if-eqz v4, :cond_d

    .line 234
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 246
    :goto_7
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 236
    :cond_d
    new-instance v11, Lcom/android/settings/PenAirViewHelp$5;

    invoke-direct {v11, p0}, Lcom/android/settings/PenAirViewHelp$5;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 253
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    .local v1, status:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    .end local v1           #status:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 259
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 362
    const-string v3, "pointer"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v3, "information_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 366
    const-string v3, "information_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 369
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "progress_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 377
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 379
    const-string v3, "progress_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, resId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
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

    .line 389
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    const-string v3, "PenAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    .end local v2           #resId:I
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    const-string v3, "speed_dial_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 405
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 408
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, mIntent:Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v1}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 410
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #mIntent:Landroid/content/Intent;
    goto :goto_1

    .line 414
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_9
    const-string v3, "icon_label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v3, "HelpMode"

    const-string v4, "ICON_LABELS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    const-string v3, "list_scroll"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 424
    const-string v3, "list_scroll"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 427
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v3, "HelpMode"

    const-string v4, "AIR_VIEW_LIST_SCROLLING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
