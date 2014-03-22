.class public Lcom/android/settings/motion2014/SMotionGuideHub2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mFunctionTitleID1:I

.field private mFunctionTitleID2:I

.field private mFunctionTitleView1:Landroid/widget/TextView;

.field private mFunctionTitleView2:Landroid/widget/TextView;

.field private mGuideAniResID1:I

.field private mGuideAniResID2:I

.field private mGuideContent1:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHeadMessageID:I

.field private mHeadMessageView:Landroid/widget/TextView;

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView1:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mNumOfTutorial:I

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSupportFolderType:Z

.field private mTryBtnClickListener1:Landroid/view/View$OnClickListener;

.field private mTryBtnClickListener2:Landroid/view/View$OnClickListener;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;

.field private mTutorialTitleID1:I

.field private mTutorialTitleID2:I

.field private mTutorialTitleView1:Landroid/widget/TextView;

.field private mTutorialTitleView2:Landroid/widget/TextView;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 91
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 92
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 93
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    .line 95
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    .line 96
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    .line 97
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    .line 98
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    .line 99
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    .line 100
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 101
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    .line 117
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 138
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 139
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    .line 140
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 142
    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTryBtnClickListener1:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTryBtnClickListener2:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showMotionDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private broadcastAirBrowseAndScrollChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 889
    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 875
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 879
    return-void
.end method

.method private isAllAirTurnAndScrollOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 851
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_scroll_email_body"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 852
    .local v4, scrollemailbody:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_scroll_web_page"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 854
    .local v5, scrollwebpage:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_single_photo_view"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 855
    .local v6, singlephotoview:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_internet_window"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 856
    .local v1, internetwindow:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_now_playing_on_music"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 857
    .local v3, nowplayingmusic:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 858
    .local v0, bgmonlockscreen:I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_note_page_view"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 860
    .local v2, notepageview:I
    or-int v9, v4, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v1

    or-int/2addr v9, v3

    or-int/2addr v9, v0

    or-int/2addr v9, v2

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 866
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 868
    .local v1, turnOver:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 872
    .local v0, palmTouch:I
    or-int v4, v1, v0

    if-ge v4, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    .end local v0           #palmTouch:I
    .end local v1           #turnOver:I
    :cond_1
    move v1, v2

    .line 866
    goto :goto_0
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v5, 0x2

    const v4, 0x7f09170d

    const/4 v3, 0x1

    .line 593
    const-string v1, "air_wake_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 595
    const-string v1, "air_motion_wake_up"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 597
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090ecf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 598
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 601
    :cond_0
    const v1, 0x7f02001d

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 602
    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    .line 651
    .end local v0           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 603
    :cond_1
    const-string v1, "air_turn_and_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 604
    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 605
    const-string v1, "air_motion_turn"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 606
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 607
    .restart local v0       #res:Landroid/content/res/Resources;
    const v1, 0x7f090f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 608
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 611
    :cond_2
    const v1, 0x7f020020

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 612
    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    .line 613
    const v1, 0x7f090ed2

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    .line 614
    const v1, 0x7f090ed3

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    goto :goto_0

    .line 615
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_3
    const-string v1, "pick_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    const-string v1, "motion_pick_up"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e74

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 618
    const v1, 0x7f020349

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 619
    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    .line 620
    :cond_4
    const-string v1, "pick_up_to_call_out"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 621
    const-string v1, "motion_pick_up_to_call_out"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 622
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e88

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 623
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_5

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 626
    :cond_5
    const v1, 0x7f02032b

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 627
    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 628
    :cond_6
    const-string v1, "merged_mute_or_pause"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 629
    const-string v1, "motion_merged_mute_pause"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 630
    const v1, 0x7f090eda

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    .line 632
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e99

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 633
    const v1, 0x7f020100

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 634
    const v1, 0x7f090ed9

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    .line 636
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    .line 637
    const v1, 0x7f02035f

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    .line 638
    const v1, 0x7f090ed8

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    .line 640
    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 641
    :cond_7
    const-string v1, "palm_swipe"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 642
    const-string v1, "surface_palm_swipe"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e97

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 644
    const v1, 0x7f0200ff

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 645
    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 647
    :cond_8
    const-string v1, "SMotionGuideHub"

    const-string v2, "Cannot get correct motion information"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showFolderDialog()V
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 815
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09170e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 830
    return-void
.end method

.method private showMotionDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 758
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 759
    const v1, 0x7f090e84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    const v2, 0x7f090e85

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    .line 788
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 794
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 798
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e81

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e80

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e82

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 812
    return-void
.end method

.method private startTryActually(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 653
    const-string v0, "air_wake_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string v0, "air_turn_and_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 662
    if-ne p2, v1, :cond_3

    .line 667
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_2

    .line 668
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    .line 671
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 675
    :cond_3
    if-ne p2, v2, :cond_0

    .line 676
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_4

    .line 677
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    .line 680
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 685
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 692
    :cond_6
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 693
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 695
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 698
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 699
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 701
    :cond_8
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 702
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 703
    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 704
    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 707
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v1, :cond_a

    .line 708
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto/16 :goto_0

    .line 711
    :cond_a
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 715
    :cond_b
    const-string v0, "merged_mute_or_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 716
    if-ne p2, v1, :cond_d

    .line 717
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 719
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 722
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 725
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :cond_d
    if-ne p2, v2, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 728
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 729
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showUseRingDialog()V

    goto/16 :goto_0

    .line 731
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 734
    :cond_f
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 737
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 740
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 743
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 747
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 748
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 749
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 755
    return-void

    .line 752
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 495
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 496
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 498
    const-string v3, "air_turn_and_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 501
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_email_body"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 502
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 503
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 504
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 506
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 523
    :cond_0
    :goto_7
    return-void

    .end local v0           #motionEngineState:Z
    :cond_1
    move v0, v2

    .line 494
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_2
    move v3, v2

    .line 501
    goto :goto_1

    :cond_3
    move v3, v2

    .line 502
    goto :goto_2

    :cond_4
    move v3, v2

    .line 503
    goto :goto_3

    :cond_5
    move v3, v2

    .line 504
    goto :goto_4

    :cond_6
    move v3, v2

    .line 505
    goto :goto_5

    :cond_7
    move v1, v2

    .line 506
    goto :goto_6

    .line 513
    :cond_8
    const-string v3, "merged_mute_or_pause"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 516
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 517
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    :goto_9
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    move v3, v2

    .line 516
    goto :goto_8

    :cond_a
    move v1, v2

    .line 517
    goto :goto_9
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 835
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 839
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 843
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 845
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 314
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 315
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04018f

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 316
    .local v1, guideView:Landroid/view/View;
    const v5, 0x7f0b0415

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    .line 317
    const v5, 0x7f0b0416

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    .line 318
    const v5, 0x7f0b041b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    .line 319
    const v5, 0x7f0b0417

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    .line 320
    const v5, 0x7f0b041c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    .line 321
    const v5, 0x7f0b0418

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    .line 322
    const v5, 0x7f0b041d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    .line 323
    const v5, 0x7f0b0419

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    .line 324
    const v5, 0x7f0b041e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    .line 325
    const v5, 0x7f0b041a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 326
    .local v3, tryBtn1:Landroid/widget/Button;
    const v5, 0x7f0b041f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 327
    .local v4, tryBtn2:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTryBtnClickListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTryBtnClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    if-nez v5, :cond_3

    .line 332
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :goto_0
    const-string v5, "default"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 339
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_1
    const-string v5, "default"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 346
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :goto_2
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    if-nez v5, :cond_6

    .line 353
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_3
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    if-nez v5, :cond_7

    .line 360
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :goto_4
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    if-nez v5, :cond_8

    .line 367
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :goto_5
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    if-nez v5, :cond_9

    .line 374
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :goto_6
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    if-nez v5, :cond_a

    .line 381
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    :cond_0
    :goto_7
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    if-nez v5, :cond_b

    .line 392
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :cond_1
    :goto_8
    iget v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_c

    .line 403
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :goto_9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    .line 409
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 411
    iget-boolean v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    if-eqz v5, :cond_2

    .line 412
    new-instance v5, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;

    invoke-direct {v5, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 436
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/settings/motion2014/SMotionGuideHub2014$4;

    invoke-direct {v6, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$4;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 447
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 448
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 449
    return-void

    .line 334
    :cond_3
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 341
    :cond_4
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 348
    :cond_5
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 355
    :cond_6
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 362
    :cond_7
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 369
    :cond_8
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 376
    :cond_9
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 383
    :cond_a
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 386
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_7

    .line 394
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_b
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 397
    .restart local v0       #ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_8

    .line 405
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_c
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    const-string v0, "default"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    const-string v0, "air_motion_wake_up"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    .line 531
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 547
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 549
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 527
    goto :goto_0

    .line 532
    :cond_3
    const-string v0, "air_motion_turn"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 534
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "air_motion_scroll"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 534
    goto :goto_2

    .line 542
    :cond_5
    const-string v0, "motion_merged_mute_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 894
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 895
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 896
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 899
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 902
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    .line 913
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 914
    return-void

    .line 907
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 909
    iput-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 179
    .local v1, arguments:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 180
    const-string v12, "type"

    const-string v13, "default"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 181
    const-string v12, "hasAdvancedSettings"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    .line 189
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 191
    .local v2, config:Landroid/content/res/Configuration;
    iget v12, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 192
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 196
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->setArgument(Ljava/lang/String;)V

    .line 197
    const v12, 0x7f07009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    .line 200
    new-instance v12, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    instance-of v12, v12, Landroid/preference/PreferenceActivity;

    if-eqz v12, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0034

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 204
    .local v7, padding:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v7, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    const/16 v13, 0x10

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v14, Landroid/app/ActionBar$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x15

    invoke-direct/range {v14 .. v17}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    .line 213
    .end local v7           #padding:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    const-string v12, "advanced_air_call_accept_auto_start_speaker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 219
    const-string v12, "advanced_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 220
    const-string v12, "advanced_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    .line 221
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v12, :cond_6

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 223
    .local v8, ps:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_1
    :goto_3
    return-void

    .line 183
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v8           #ps:Landroid/preference/PreferenceScreen;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 184
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "type"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 185
    const-string v12, "type"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 187
    :cond_3
    const-string v12, "hasAdvancedSettings"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    goto/16 :goto_0

    .line 189
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 194
    .restart local v2       #config:Landroid/content/res/Configuration;
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto/16 :goto_2

    .line 226
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 227
    .restart local v8       #ps:Landroid/preference/PreferenceScreen;
    const-string v12, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v13, 0x7f090f48

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    const v12, 0x7f070012

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 231
    const-string v12, "email_body"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    .line 232
    const-string v12, "single_photo_view"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 233
    const-string v12, "internet_window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 234
    const-string v12, "now_playing_on_music"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 235
    const-string v12, "bgm_on_lock_screen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v12, "note_page_view"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_7

    .line 238
    const-string v9, "com.samsung.android.snote"

    .line 240
    .local v9, samsungbackupPackage:Ljava/lang/String;
    const/4 v6, 0x0

    .line 241
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 243
    if-eqz v6, :cond_9

    .line 244
    const-string v12, "SMotionGuideHub"

    const-string v13, "S note is Installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090f57

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #samsungbackupPackage:Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v12, :cond_1

    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 261
    .local v4, extra_bundle:Landroid/os/Bundle;
    const-string v12, "extra_parent_preference_key"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, targetKey:Ljava/lang/String;
    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v11, 0x1

    .line 263
    .local v11, value:Z
    :goto_5
    const-string v12, "email_body"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 247
    .end local v4           #extra_bundle:Landroid/os/Bundle;
    .end local v10           #targetKey:Ljava/lang/String;
    .end local v11           #value:Z
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #samsungbackupPackage:Ljava/lang/String;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090f55

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 249
    :catch_0
    move-exception v3

    .line 250
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    const-string v12, "SMotionGuideHub"

    const-string v13, "S note is NOT Installed"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 262
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #samsungbackupPackage:Ljava/lang/String;
    .restart local v4       #extra_bundle:Landroid/os/Bundle;
    .restart local v10       #targetKey:Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 266
    .restart local v11       #value:Z
    :cond_b
    const-string v12, "single_photo_view"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 269
    :cond_c
    const-string v12, "internet_window"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 272
    :cond_d
    const-string v12, "now_playing_on_music"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 275
    :cond_e
    const-string v12, "bgm_on_lock_screen"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 278
    :cond_f
    const-string v12, "note_page_view"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 285
    .end local v4           #extra_bundle:Landroid/os/Bundle;
    .end local v10           #targetKey:Ljava/lang/String;
    .end local v11           #value:Z
    :cond_10
    const-string v12, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v13, 0x7f090ed7

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    const v12, 0x7f070071

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 289
    const-string v12, "palm_touch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 290
    const-string v12, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    .line 292
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v12

    if-nez v12, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 293
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v12, :cond_1

    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 296
    .restart local v4       #extra_bundle:Landroid/os/Bundle;
    const-string v12, "extra_parent_preference_key"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .restart local v10       #targetKey:Ljava/lang/String;
    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    const/4 v11, 0x1

    .line 298
    .restart local v11       #value:Z
    :goto_6
    const-string v12, "palm_touch"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 297
    .end local v11           #value:Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_6

    .line 301
    .restart local v11       #value:Z
    :cond_13
    const-string v12, "turn_over"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f090e3f

    const/4 v2, 0x0

    .line 464
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 465
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 468
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 476
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 553
    if-nez p2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll_email_body"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    :cond_2
    :goto_2
    const-string v0, "air_turn_and_scroll"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 579
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 556
    goto :goto_1

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    .line 559
    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_internet_window"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll_web_page"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v0, v2

    .line 560
    goto :goto_4

    :cond_8
    move v0, v2

    .line 561
    goto :goto_5

    .line 562
    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_6

    .line 564
    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto :goto_7

    .line 566
    :cond_d
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_8
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto :goto_8

    .line 568
    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_touch"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_9
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    move v0, v2

    goto :goto_9

    .line 570
    :cond_11
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 572
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 576
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_overturn"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_b
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 574
    :cond_12
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_a

    :cond_13
    move v0, v2

    .line 576
    goto :goto_b

    .line 583
    :cond_14
    const-string v0, "merged_mute_or_pause"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 584
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 590
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 452
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 454
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    .line 461
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 487
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 491
    :cond_0
    return-void
.end method
