.class public Lcom/android/settings/motion2013/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 93
    new-instance v0, Lcom/android/settings/motion2013/MotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/MotionSettings$1;-><init>(Lcom/android/settings/motion2013/MotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 15
    .parameter "cr"
    .parameter "c"

    .prologue
    .line 488
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 489
    .local v2, isTablet:Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    .line 491
    .local v3, isVoiceCapable:Z
    const-string v13, "motion_zooming"

    const/4 v14, 0x0

    invoke-static {p0, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 493
    .local v11, tiltZoom:I
    const/4 v10, 0x0

    .line 495
    .local v10, tiltScroll:I
    const/4 v5, 0x0

    .line 497
    .local v5, panMove:I
    const-string v13, "motion_pan_to_browse_image"

    const/4 v14, 0x0

    invoke-static {p0, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 499
    .local v4, panBrowse:I
    const/4 v8, 0x0

    .line 501
    .local v8, shake:I
    const/4 v1, 0x0

    .line 503
    .local v1, doubleTap:I
    if-eqz v3, :cond_0

    const-string v13, "motion_pick_up"

    const/4 v14, 0x0

    invoke-static {p0, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 505
    .local v9, smartAlert:I
    :goto_0
    if-nez v2, :cond_1

    const-string v13, "motion_pick_up_to_call_out"

    const/4 v14, 0x0

    invoke-static {p0, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, directCall:I
    :goto_1
    if-nez v2, :cond_2

    const-string v13, "motion_overturn"

    const/4 v14, 0x0

    invoke-static {p0, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 509
    .local v12, turnover:I
    :goto_2
    const/4 v7, 0x0

    .line 511
    .local v7, peekViewAlbumsList:I
    const/4 v6, 0x0

    .line 514
    .local v6, peekChapterPreview:I
    or-int v13, v11, v10

    or-int/2addr v13, v5

    or-int/2addr v13, v4

    or-int/2addr v13, v8

    or-int/2addr v13, v1

    or-int/2addr v13, v9

    or-int/2addr v13, v0

    or-int/2addr v13, v12

    or-int/2addr v13, v7

    or-int/2addr v13, v6

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    const/4 v13, 0x1

    :goto_3
    return v13

    .line 503
    .end local v0           #directCall:I
    .end local v6           #peekChapterPreview:I
    .end local v7           #peekViewAlbumsList:I
    .end local v9           #smartAlert:I
    .end local v12           #turnover:I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 505
    .restart local v9       #smartAlert:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 507
    .restart local v0       #directCall:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 514
    .restart local v6       #peekChapterPreview:I
    .restart local v7       #peekViewAlbumsList:I
    .restart local v12       #turnover:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method public isAllMotionDisabled()Z
    .locals 17

    .prologue
    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 520
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 521
    .local v3, isTablet:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 523
    .local v4, isVoiceCapable:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_zooming"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 525
    .local v12, tiltZoom:I
    const/4 v11, 0x0

    .line 527
    .local v11, tiltScroll:I
    const/4 v6, 0x0

    .line 529
    .local v6, panMove:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pan_to_browse_image"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 531
    .local v5, panBrowse:I
    const/4 v9, 0x0

    .line 533
    .local v9, shake:I
    const/4 v2, 0x0

    .line 535
    .local v2, doubleTap:I
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 537
    .local v10, smartAlert:I
    :goto_0
    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up_to_call_out"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 539
    .local v1, directCall:I
    :goto_1
    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_overturn"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 541
    .local v13, turnover:I
    :goto_2
    const/4 v8, 0x0

    .line 543
    .local v8, peekViewAlbumsList:I
    const/4 v7, 0x0

    .line 546
    .local v7, peekChapterPreview:I
    or-int v14, v12, v11

    or-int/2addr v14, v6

    or-int/2addr v14, v5

    or-int/2addr v14, v9

    or-int/2addr v14, v2

    or-int/2addr v14, v10

    or-int/2addr v14, v1

    or-int/2addr v14, v13

    or-int/2addr v14, v8

    or-int/2addr v14, v7

    const/4 v15, 0x1

    if-ge v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_3
    return v14

    .line 535
    .end local v1           #directCall:I
    .end local v7           #peekChapterPreview:I
    .end local v8           #peekViewAlbumsList:I
    .end local v10           #smartAlert:I
    .end local v13           #turnover:I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 537
    .restart local v10       #smartAlert:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 539
    .restart local v1       #directCall:I
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 546
    .restart local v7       #peekChapterPreview:I
    .restart local v8       #peekViewAlbumsList:I
    .restart local v13       #turnover:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/MotionSettings$2;-><init>(Lcom/android/settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    if-eqz p2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 443
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->setHasOptionsMenu(Z)V

    .line 106
    const v18, 0x7f070058

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 109
    new-instance v18, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    const-string v18, "tilt"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 113
    const-string v18, "tilt_to_scroll_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 114
    const-string v18, "pan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 115
    const-string v18, "pan_to_browse_image"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 116
    const-string v18, "shake"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 117
    const-string v18, "double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 118
    const-string v18, "pick_up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 119
    const-string v18, "pick_up_to_call_out"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 120
    const-string v18, "turn_over"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 121
    const-string v18, "peek_view_albums_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v18, "peek_chapter_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 139
    .local v8, ps:Landroid/preference/PreferenceScreen;
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 141
    .local v4, isTablet:Z
    const/4 v12, 0x0

    .line 147
    .local v12, removeTiltCategory:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 150
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_0

    .line 151
    const-string v18, "tilt_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 152
    .local v15, tiltCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    .end local v15           #tiltCategory:Landroid/preference/PreferenceCategory;
    :cond_0
    const/4 v9, 0x0

    .line 158
    .local v9, removePanCategory:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    add-int/lit8 v9, v9, 0x1

    .line 165
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_1

    .line 166
    const-string v18, "pan_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 167
    .local v5, panCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    .end local v5           #panCategory:Landroid/preference/PreferenceCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    const-string v18, "shake_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 173
    .local v13, shakeCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    const/4 v11, 0x0

    .line 181
    .local v11, removePickupCategory:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    add-int/lit8 v11, v11, 0x1

    .line 185
    :cond_2
    if-eqz v4, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    add-int/lit8 v11, v11, 0x1

    .line 189
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v11, v0, :cond_4

    .line 190
    const-string v18, "pick_up_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 191
    .local v7, pickupCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    .end local v7           #pickupCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    if-eqz v4, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    const-string v18, "turn_over_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 197
    .local v16, turnoverCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    .end local v16           #turnoverCategory:Landroid/preference/PreferenceCategory;
    :cond_5
    const/4 v10, 0x0

    .line 202
    .local v10, removePeekCategory:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    add-int/lit8 v10, v10, 0x1

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    add-int/lit8 v10, v10, 0x1

    .line 209
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_6

    .line 210
    const-string v18, "peek_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 211
    .local v6, peekCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    .end local v6           #peekCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "com.android.browser"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f090d29

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 227
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    sget v18, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "master_motion"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_8

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 231
    .local v3, extra_bundle:Landroid/os/Bundle;
    const-string v18, "extra_parent_preference_key"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, targetKey:Ljava/lang/String;
    sget v18, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    .line 233
    .local v17, value:Z
    :goto_0
    const-string v18, "tilt"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 265
    .end local v3           #extra_bundle:Landroid/os/Bundle;
    .end local v14           #targetKey:Ljava/lang/String;
    .end local v17           #value:Z
    :cond_8
    :goto_1
    return-void

    .line 232
    .restart local v3       #extra_bundle:Landroid/os/Bundle;
    .restart local v14       #targetKey:Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    goto :goto_0

    .line 236
    .restart local v17       #value:Z
    :cond_a
    const-string v18, "tilt_to_scroll_list"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_b
    const-string v18, "pan"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_c
    const-string v18, "pan_to_browse_image"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 245
    :cond_d
    const-string v18, "shake"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 248
    :cond_e
    const-string v18, "double_tap"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 251
    :cond_f
    const-string v18, "pick_up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 254
    :cond_10
    const-string v18, "pick_up_to_call_out"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 257
    :cond_11
    const-string v18, "turn_over"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x1

    const v1, 0x7f090b0f

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020190

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 414
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 409
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 412
    const/4 v1, 0x1

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 375
    iget-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 452
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 454
    .local v1, value:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 481
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 484
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 453
    goto :goto_0

    .line 456
    .restart local v1       #value:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 458
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_5

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 460
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 462
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 464
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 466
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 468
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 470
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_b

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 472
    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_c

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_view_albums_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 474
    :cond_c
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_chapter_preview"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 448
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 298
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 299
    .local v3, super_mOpenDetailMenu:Z
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 302
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 303
    iput-boolean v5, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 310
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    :cond_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 313
    .local v1, padding:I
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 314
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 316
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 320
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 324
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 325
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 332
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "master_motion"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 333
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 335
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 336
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    .line 338
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 342
    :goto_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 343
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 344
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 345
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 346
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 347
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 348
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 349
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 351
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_zooming"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 352
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_tilt_to_list_scrolling"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 353
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_panning"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 354
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pan_to_browse_image"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 355
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_shake"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 356
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_double_tap"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 357
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    :goto_8
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 358
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v4

    :goto_9
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 359
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_overturn"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    :goto_a
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 360
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    :goto_b
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 361
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    :goto_c
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 364
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 365
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 367
    return-void

    .end local v0           #motionEngineState:Z
    :cond_3
    move v0, v5

    .line 332
    goto/16 :goto_0

    .line 340
    .restart local v0       #motionEngineState:Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v6, v5

    .line 351
    goto/16 :goto_2

    :cond_6
    move v6, v5

    .line 352
    goto/16 :goto_3

    :cond_7
    move v6, v5

    .line 353
    goto/16 :goto_4

    :cond_8
    move v6, v5

    .line 354
    goto/16 :goto_5

    :cond_9
    move v6, v5

    .line 355
    goto :goto_6

    :cond_a
    move v6, v5

    .line 356
    goto :goto_7

    :cond_b
    move v6, v5

    .line 357
    goto :goto_8

    :cond_c
    move v6, v5

    .line 358
    goto :goto_9

    :cond_d
    move v6, v5

    .line 359
    goto :goto_a

    :cond_e
    move v6, v5

    .line 360
    goto :goto_b

    :cond_f
    move v4, v5

    .line 361
    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 392
    :cond_0
    return-void
.end method
