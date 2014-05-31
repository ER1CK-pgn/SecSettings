.class public Lcom/android/settings/AirButtonHelp;
.super Landroid/app/Fragment;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCommanObserver:Landroid/database/ContentObserver;

.field private mDBItem:Ljava/lang/String;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mDBItem:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 74
    new-instance v0, Lcom/android/settings/AirButtonHelp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirButtonHelp$1;-><init>(Lcom/android/settings/AirButtonHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirButtonHelp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirButtonHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirButtonHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->turnOnPenInfoPreview()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 186
    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->dismissAllDialog()V

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fd8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirButtonHelp$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirButtonHelp$3;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/AirButtonHelp$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirButtonHelp$2;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 178
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 192
    .local v1, airViewState:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, airViewMode:I
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 194
    .local v2, penHover:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 195
    .local v3, penInforPreview:Z
    :goto_2
    if-nez v1, :cond_0

    .line 197
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :cond_1
    if-nez v2, :cond_2

    .line 205
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :cond_2
    if-nez v3, :cond_3

    .line 208
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penHover:Z
    .end local v3           #penInforPreview:Z
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 191
    goto :goto_0

    .restart local v0       #airViewMode:I
    .restart local v1       #airViewState:Z
    :cond_5
    move v2, v5

    .line 193
    goto :goto_1

    .restart local v2       #penHover:Z
    :cond_6
    move v3, v5

    .line 194
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    if-eqz p2, :cond_6

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, airViewState:Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 143
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, airViewMode:I
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 145
    .local v2, penInforPreview:Z
    :goto_1
    if-eqz v1, :cond_0

    sget v4, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v4, :cond_0

    if-nez v2, :cond_5

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->showAirCommandEnabledPopup()V

    .line 153
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penInforPreview:Z
    :goto_2
    return-void

    .restart local v1       #airViewState:Z
    :cond_1
    move v1, v4

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_3
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    .restart local v0       #airViewMode:I
    :cond_4
    move v2, v4

    .line 144
    goto :goto_1

    .line 148
    .restart local v2       #penInforPreview:Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 151
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penInforPreview:Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_button_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onClickEnableSettingsButtonCancel()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onClickEnableSettingsButtonOK(I)V
    .locals 8
    .parameter "clickedButton"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 367
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 368
    .local v1, airViewState:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 369
    .local v0, airViewMode:I
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 370
    .local v3, penInforPreview:Z
    :goto_1
    if-eqz v1, :cond_0

    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v5, :cond_0

    if-nez v3, :cond_1

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->turnOnPenInfoPreview()V

    .line 376
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v3           #penInforPreview:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, air_view_changed:Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 397
    :goto_2
    return-void

    .end local v2           #air_view_changed:Landroid/content/Intent;
    :cond_2
    move v1, v5

    .line 367
    goto :goto_0

    .restart local v0       #airViewMode:I
    .restart local v1       #airViewState:Z
    :cond_3
    move v3, v5

    .line 369
    goto :goto_1

    .line 383
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .restart local v2       #air_view_changed:Landroid/content/Intent;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->startTutorialInsertingContent()V

    goto :goto_2

    .line 387
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->startTutorialAddingRecipients()V

    goto :goto_2

    .line 391
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->startTutorialDisplayFuncionalMenu()V

    goto :goto_2

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/AirButtonHelp;->setHasOptionsMenu(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    .line 87
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    .line 89
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 90
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 93
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    .line 102
    .end local v0           #padding:I
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x1

    const v1, 0x7f090fcd

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 215
    const/4 v13, 0x0

    .line 216
    .local v13, view:Landroid/view/View;
    const v14, 0x7f040010

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 218
    const v14, 0x7f0b002f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 219
    .local v12, tv:Landroid/widget/TextView;
    const v14, 0x7f090fbb

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const v14, 0x7f0b003e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 222
    .local v1, button1:Landroid/widget/Button;
    new-instance v14, Lcom/android/settings/AirButtonHelp$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/AirButtonHelp$4;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v14, 0x7f0b0042

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 258
    .local v2, button2:Landroid/widget/Button;
    new-instance v14, Lcom/android/settings/AirButtonHelp$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/AirButtonHelp$5;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v14, 0x7f0b0046

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 293
    .local v3, button3:Landroid/widget/Button;
    new-instance v14, Lcom/android/settings/AirButtonHelp$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/AirButtonHelp$6;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v14, 0x7f0b003b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 328
    .local v10, mAttachingText:Landroid/widget/TextView;
    const v14, 0x7f0b003c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 329
    .local v11, mAttachingText2:Landroid/widget/TextView;
    const v14, 0x7f0b003d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 330
    .local v9, mAttachingImage:Landroid/widget/ImageView;
    const v14, 0x7f0b003e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 331
    .local v8, mAttachingButton:Landroid/widget/Button;
    const v14, 0x7f0b003f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 332
    .local v6, mAddingText:Landroid/widget/TextView;
    const v14, 0x7f0b0040

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 333
    .local v7, mAddingText2:Landroid/widget/TextView;
    const v14, 0x7f0b0041

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 334
    .local v5, mAddingImage:Landroid/widget/ImageView;
    const v14, 0x7f0b0042

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 336
    .local v4, mAddingButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.android.mms"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 337
    :cond_0
    const v14, 0x7f02017e

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    const v14, 0x7f02017f

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/16 v15, 0x64

    if-lt v14, v15, :cond_2

    .line 346
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    :cond_2
    const-string v14, "DCM"

    const-string v15, "ro.csc.sales_code"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 353
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    :cond_3
    :goto_0
    return-object v13

    .line 355
    :cond_4
    const-string v14, "KDI"

    const-string v15, "ro.csc.sales_code"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 356
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 458
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 454
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->startHelpActivity()V

    .line 455
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 107
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 113
    .local v0, airCommandEngineState:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public startHelpActivity()V
    .locals 3

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method protected startTutorialAddingRecipients()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 416
    .local v0, flag:Z
    if-ne v0, v4, :cond_0

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.help.AirButtonMainActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "helpContactTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/settings/AirButtonHelp;->startActivity(Landroid/content/Intent;)V

    .line 423
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showDialogPopup(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected startTutorialDisplayFuncionalMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 427
    .local v0, flag:Z
    if-ne v0, v4, :cond_0

    .line 428
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/jpg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v2, "IsHelpMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v2, "HelpMode"

    const-string v3, "AIR_BUTTON"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/settings/AirButtonHelp;->startActivity(Landroid/content/Intent;)V

    .line 437
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showDialogPopup(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected startTutorialInsertingContent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 405
    .local v0, flag:Z
    if-ne v0, v4, :cond_0

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.help.AirButtonMainActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "helpAttachTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/settings/AirButtonHelp;->startActivity(Landroid/content/Intent;)V

    .line 412
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showDialogPopup(Landroid/content/Context;)V

    goto :goto_0
.end method
