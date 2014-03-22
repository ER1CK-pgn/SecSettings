.class public Lcom/android/settings/motion2014/MotionSettings2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirMotionIndicatorAnimation:[I

.field private mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMasterMotionObserver:Landroid/database/ContentObserver;

.field private mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

.field private mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->isGoIntoQuideHub:Z

    .line 88
    iput v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirMotionIndicatorAnimation:[I

    .line 90
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationView:Landroid/widget/ImageView;

    .line 92
    new-instance v0, Lcom/android/settings/motion2014/MotionSettings2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2014/MotionSettings2014$1;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings/motion2014/MotionSettings2014$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014$2;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMasterMotionObserver:Landroid/database/ContentObserver;

    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0xcct 0x4t 0x2t 0x7ft
        0xcdt 0x4t 0x2t 0x7ft
        0xcet 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/MotionSettings2014;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/MotionSettings2014;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2014/MotionSettings2014;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2014/MotionSettings2014;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirBrowseAndScrollChanged(Z)V

    return-void
.end method

.method private broadcastAirBrowseAndScrollChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 676
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 673
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 581
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 586
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 591
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    .line 593
    :cond_2
    return-void
.end method

.method private isAllAirTurnAndScrollOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 638
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_email_body"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 639
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 641
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 642
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_internet_window"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 643
    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_now_playing_on_music"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 644
    iget-object v7, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 645
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn_note_page_view"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 647
    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    or-int/2addr v2, v8

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 653
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_overturn"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 655
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_touch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 659
    or-int/2addr v0, v3

    if-ge v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 653
    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 555
    move-object v0, p3

    .line 556
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2014/MotionSettings2014$9;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014$9;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 575
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 576
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 21
    .parameter "showagain_checkbox_flag"

    .prologue
    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 473
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 476
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v16, 0x7f040074

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 477
    .local v7, layout:Landroid/view/View;
    const v16, 0x7f0b007e

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 478
    .local v8, message:Landroid/widget/TextView;
    const v16, 0x7f0b014f

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 479
    .local v5, image:Landroid/widget/ImageView;
    const v16, 0x7f0b0147

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 480
    .local v4, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 481
    if-eqz p1, :cond_0

    .line 482
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 484
    :cond_0
    const v16, 0x7f0204ce

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 487
    .local v14, res:Landroid/content/res/Resources;
    const v16, 0x7f090efa

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 488
    .local v11, part1:Ljava/lang/String;
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 489
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 493
    :goto_0
    const v16, 0x7f0e0009

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 494
    .local v13, proper_distance:I
    const v16, 0x7f090efc

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 495
    .local v12, part3:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    .line 496
    .local v15, salesCode:Ljava/lang/String;
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "CRI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "VMU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "BST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "XAS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "TFN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "XAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "CSP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 499
    :cond_1
    const v16, 0x7f0e000a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 500
    const v16, 0x7f090efd

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 502
    :cond_2
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 503
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 507
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090efb

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 508
    .local v10, original_str:Ljava/lang/String;
    const-string v16, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 509
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090efa

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090efc

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090efb

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 513
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 514
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090efb

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f09170d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 516
    :cond_4
    const v16, 0x7f02001e

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v9

    .line 517
    .local v9, message_str:Landroid/text/SpannableString;
    if-eqz v9, :cond_8

    .line 518
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_2
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 523
    const v16, 0x7f090ef8

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 524
    const v16, 0x7f09079f

    new-instance v17, Lcom/android/settings/motion2014/MotionSettings2014$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/motion2014/MotionSettings2014$7;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 539
    .local v2, POSITIVE_BUTTON:Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 540
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 544
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/MotionSettings2014;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings/motion2014/MotionSettings2014$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/motion2014/MotionSettings2014$8;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 550
    return-void

    .line 491
    .end local v2           #POSITIVE_BUTTON:Landroid/widget/Button;
    .end local v9           #message_str:Landroid/text/SpannableString;
    .end local v10           #original_str:Ljava/lang/String;
    .end local v12           #part3:Ljava/lang/String;
    .end local v13           #proper_distance:I
    .end local v15           #salesCode:Ljava/lang/String;
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 505
    .restart local v12       #part3:Ljava/lang/String;
    .restart local v13       #proper_distance:I
    .restart local v15       #salesCode:Ljava/lang/String;
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 520
    .restart local v9       #message_str:Landroid/text/SpannableString;
    .restart local v10       #original_str:Ljava/lang/String;
    :cond_8
    const v16, 0x7f090ef9

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method private showTalkBackDisableDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 418
    move-object v0, p1

    .line 419
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090ee1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ee0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2014/MotionSettings2014$5;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014$5;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/motion2014/MotionSettings2014$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014$4;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 453
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 455
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion2014/MotionSettings2014$6;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014$6;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 468
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirMotionIndicatorAnimation:[I

    iget v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 614
    iget v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    .line 615
    iget v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirMotionIndicatorAnimation:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationIndex:I

    .line 616
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->stopAnimation()V

    goto :goto_0
.end method

.method private updateStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 632
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/MotionSettings2014$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/MotionSettings2014$3;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 403
    if-eqz p2, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "master_motion"

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    .line 412
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/MotionSettings2014;->updateStatus(Z)V

    .line 413
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/settings/motion2014/MotionSettings2014;->setHasOptionsMenu(Z)V

    .line 114
    const v5, 0x7f070075

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    .line 117
    new-instance v5, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 118
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0034

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 121
    .local v1, padding:I
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 128
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarLayout:Landroid/view/View;

    .line 131
    .end local v1           #padding:I
    :cond_0
    const-string v5, "air_wake_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 132
    const-string v5, "air_turn_and_scroll"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    const-string v5, "pick_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 135
    const-string v5, "merged_mute_or_pause"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    .line 136
    const-string v5, "palm_swipe"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    .line 138
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 148
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_1
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_2
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mOpenDetailMenu:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/android/settings/motion2014/MotionSettings2014;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    .line 167
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "master_motion"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, targetKey:Ljava/lang/String;
    sget v5, Lcom/android/settings/motion2014/MotionSettings2014;->mSettingValue:I

    if-ne v5, v4, :cond_6

    .line 171
    .local v4, value:Z
    :goto_0
    const-string v5, "air_wake_up"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 172
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 173
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 195
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v3           #targetKey:Ljava/lang/String;
    .end local v4           #value:Z
    :cond_5
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v3       #targetKey:Ljava/lang/String;
    :cond_6
    move v4, v6

    .line 170
    goto :goto_0

    .line 174
    .restart local v4       #value:Z
    :cond_7
    const-string v5, "air_turn_and_scroll"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 175
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 176
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_8
    const-string v5, "pick_up"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 178
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_9
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 181
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 182
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_a
    const-string v5, "merged_mute_or_pause"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 184
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 185
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_b
    const-string v5, "palm_swipe"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 188
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x1

    const v1, 0x7f090c0b

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 397
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 392
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 395
    const/4 v1, 0x1

    goto :goto_0

    .line 390
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

    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->stopAnimation()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMasterMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->isGoIntoQuideHub:Z

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090edf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v6, 0x7f090e80

    const v5, 0x7f090e3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v2, p2

    .line 290
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 291
    .local v1, value:I
    :goto_0
    const-string v2, "air_wake_up"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p2

    .line 292
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    .line 363
    .end local p2
    :cond_0
    :goto_1
    return v3

    .end local v1           #value:I
    .restart local p2
    :cond_1
    move v1, v4

    .line 290
    goto :goto_0

    .line 297
    .restart local v1       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_wake_up"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirWakeupChanged(Z)V

    .line 358
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 360
    invoke-direct {p0, v4}, Lcom/android/settings/motion2014/MotionSettings2014;->updateStatus(Z)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 302
    .restart local p2
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_wake_up"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirWakeupChanged(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto :goto_2

    .line 306
    .restart local p2
    :cond_5
    const-string v2, "air_turn_and_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, p2

    .line 307
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 309
    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 313
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirBrowseAndScrollChanged(Z)V

    goto :goto_2

    .line 323
    .restart local p2
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->broadcastAirBrowseAndScrollChanged(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 328
    .restart local p2
    :cond_9
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_b

    .line 329
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 334
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "motion_pick_up"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 332
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_3

    .line 335
    .restart local p2
    :cond_b
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_d

    .line 336
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 341
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 339
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_4

    .line 342
    .restart local p2
    :cond_d
    const-string v2, "merged_mute_or_pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 343
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 344
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->isAllMutePauseOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 345
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 353
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "motion_merged_mute_pause"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 351
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_5

    .line 354
    .restart local p2
    :cond_10
    const-string v2, "palm_swipe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "surface_palm_swipe"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 368
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, key:Ljava/lang/String;
    const-string v2, "air_motion_indicator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->showGuideDialog(Z)V

    .line 375
    :goto_0
    return v1

    .line 373
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->isGoIntoQuideHub:Z

    .line 375
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 200
    .local v1, super_mOpenDetailMenu:Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 203
    iput-boolean v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->isGoIntoQuideHub:Z

    .line 205
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->updateAnimation()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 213
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirWakeUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_wake_up"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 214
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_scroll"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 215
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 216
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 217
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_merged_mute_pause"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "master_motion"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    .line 221
    .local v0, masterMotionState:Z
    :goto_6
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->updateStatus(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_motion"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMasterMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 229
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 231
    return-void

    .end local v0           #masterMotionState:Z
    :cond_1
    move v2, v4

    .line 213
    goto :goto_0

    :cond_2
    move v2, v4

    .line 214
    goto :goto_1

    :cond_3
    move v2, v4

    .line 215
    goto :goto_2

    :cond_4
    move v2, v4

    .line 216
    goto :goto_3

    :cond_5
    move v2, v4

    .line 217
    goto :goto_4

    :cond_6
    move v2, v4

    .line 218
    goto :goto_5

    :cond_7
    move v0, v4

    .line 220
    goto :goto_6
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 258
    :cond_0
    return-void
.end method
