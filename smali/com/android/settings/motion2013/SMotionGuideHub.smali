.class public Lcom/android/settings/motion2013/SMotionGuideHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field mAdvancedSettingBtn:Landroid/widget/Button;

.field private mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mBattery:Landroid/preference/CheckBoxPreference;

.field private mCurrentMusic:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHasSensitivity:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mLearnAboutTitleID:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMissedCall:Landroid/preference/CheckBoxPreference;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSupportFolderType:Z

.field private mTimeAndDate:Landroid/preference/CheckBoxPreference;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mUnreadMessage:Landroid/preference/CheckBoxPreference;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 133
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 134
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 135
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 137
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 143
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 180
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 181
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 182
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 186
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastArcMotionQuickGlanceChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    return-void
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1362
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1375
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1377
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1365
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1366
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1367
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1371
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1372
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1355
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1356
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1357
    return-void
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1405
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1407
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1324
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1325
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_all_list"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1326
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1327
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_contact_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1328
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_scroll_email_list"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1329
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll_album_and_photo"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1330
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_scroll_email_body"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1331
    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllAirTurnOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1334
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1335
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1336
    .local v4, singlephotoview:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1337
    .local v1, internetwindow:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1338
    .local v3, nowplayingmusic:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1339
    .local v0, bgmonlockscreen:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1341
    .local v2, notepageview:I
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1342
    or-int v7, v4, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-ge v7, v5, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 1342
    goto :goto_0

    .line 1344
    :cond_2
    or-int v7, v4, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-lt v7, v5, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    const-string v1, "SMotionGuideHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1352
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090e9e

    const v4, 0x7f090e9d

    const/4 v1, 0x0

    const/4 v0, 0x1

    const v3, 0x7f09176e

    .line 732
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 734
    const-string v0, "air_motion_glance_view"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 736
    const v1, 0x7f090f3a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 737
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 740
    :cond_0
    const v0, 0x7f090f6d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 741
    const v0, 0x7f02001d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 930
    :goto_0
    return-void

    .line 742
    :cond_1
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 743
    const-string v0, "air_motion_scroll"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090f3e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090f30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090f7f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 761
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090f3e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090f30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090f7f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 768
    :cond_2
    const v0, 0x7f090f3d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 769
    const v0, 0x7f02001f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 770
    :cond_3
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 771
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 772
    const-string v0, "air_motion_turn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 774
    const v1, 0x7f090f40

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 775
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_4

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 778
    :cond_4
    const v0, 0x7f090f3f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 779
    const v0, 0x7f020020

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 780
    :cond_5
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 781
    const-string v0, "air_motion_item_move"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 783
    const v1, 0x7f090f43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 784
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 785
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 786
    :cond_6
    const v1, 0x7f090f45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 788
    :cond_7
    const v0, 0x7f090f42

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 789
    const v0, 0x7f02001b

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 790
    :cond_8
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 791
    const-string v0, "air_motion_clip"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f4e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 793
    const v0, 0x7f090f4d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 794
    const v0, 0x7f02001c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 795
    :cond_9
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 796
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 797
    const-string v0, "air_motion_call_accept"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f51

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 799
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 802
    :cond_a
    const v0, 0x7f090f50

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 803
    const v0, 0x7f020019

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 804
    :cond_b
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 805
    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 807
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 808
    const v0, 0x7f020360

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 809
    :cond_c
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 810
    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 812
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 813
    const v0, 0x7f020358

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 814
    :cond_d
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 815
    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 817
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 818
    const v0, 0x7f02033e

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 819
    :cond_e
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 820
    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 822
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 823
    const v0, 0x7f02033d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 824
    :cond_f
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 825
    const-string v2, "motion_shake"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ea8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.swift.app.kiesair"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_1
    if-nez v0, :cond_11

    .line 834
    const-string v0, "CMCC"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CHC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 837
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 847
    :cond_11
    :goto_2
    const v0, 0x7f090e9f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 848
    const v0, 0x7f02034a

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 830
    :catch_0
    move-exception v0

    move v0, v1

    .line 831
    goto :goto_1

    .line 839
    :cond_12
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 841
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eaa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 844
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eaa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 849
    :cond_15
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 850
    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 852
    const v0, 0x7f090ea0

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 853
    const v0, 0x7f020330

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 854
    :cond_16
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 855
    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ead

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 857
    const v0, 0x7f090ea1

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 858
    const v0, 0x7f02034b

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 859
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 860
    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ec1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 862
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_18

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 865
    :cond_18
    const v0, 0x7f090ea2

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 866
    const v0, 0x7f02032d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 867
    :cond_19
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 868
    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eb0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 870
    const v0, 0x7f090ea3

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 871
    const v0, 0x7f020361

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 872
    :cond_1a
    const-string v0, "peek_view_albums_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 873
    const-string v0, "motion_peek_view_albums_list"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 875
    const v0, 0x7f090e86

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 876
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 877
    :cond_1b
    const-string v0, "peek_chapter_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 878
    const-string v0, "motion_peek_chapter_preview"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 880
    const v0, 0x7f090e87

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 881
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 882
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 883
    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ed0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 885
    const v0, 0x7f090ecf

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 886
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 887
    :cond_1d
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 888
    const-string v0, "surface_palm_touch"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ed3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 893
    :goto_3
    const v0, 0x7f090ed1

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 894
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 892
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ed2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_3

    .line 895
    :cond_1f
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 896
    const-string v0, "surface_tap_and_twist"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ed5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 898
    const v0, 0x7f090ed4

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 900
    :cond_20
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 901
    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ee3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 903
    const v0, 0x7f090ee2

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 904
    const v0, 0x7f02032c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 905
    :cond_21
    const-string v0, "arc_motion_ripple_effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 906
    const-string v0, "arc_motion_ripple_effect"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 908
    const v0, 0x7f090eef

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 909
    const v0, 0x7f020343

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 910
    :cond_22
    const-string v0, "arc_motion_quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 911
    const-string v0, "arc_motion_quick_glance"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 913
    const v0, 0x7f090ef0

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 914
    const v0, 0x7f020342

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 915
    :cond_23
    const-string v0, "arc_motion_music_playback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 916
    const-string v0, "arc_motion_music_playback"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 917
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 918
    const v0, 0x7f090ef1

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 919
    const v0, 0x7f02033c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 920
    :cond_24
    const-string v0, "arc_motion_messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 921
    const-string v0, "arc_motion_messaging"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 923
    const v0, 0x7f090ef2

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 926
    :cond_25
    const-string v0, "SMotionGuideHub"

    const-string v1, "Cannot get correct motion information"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showFolderDialog()V
    .locals 3

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09176f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d2

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$10;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$10;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$9;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$9;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1307
    return-void
.end method

.method private showMotionDialog()V
    .locals 6

    .prologue
    const v5, 0x7f090f54

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1218
    const v0, 0x7f090ebd

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1219
    const v0, 0x7f090ebe

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1220
    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1221
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1222
    const v0, 0x7f090f55

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d2

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090198

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1265
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$6;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1271
    return-void

    .line 1223
    :cond_1
    const-string v3, "air_motion_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1224
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1225
    const v0, 0x7f090f56

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1226
    :cond_2
    const-string v3, "air_motion_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1227
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1228
    const v0, 0x7f090f57

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1229
    :cond_3
    const-string v3, "air_motion_item_move"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1230
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1231
    const v0, 0x7f090f58

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1232
    :cond_4
    const-string v3, "air_motion_clip"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1233
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1234
    const v0, 0x7f090f59

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1235
    :cond_5
    const-string v3, "air_motion_call_accept"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1237
    const v0, 0x7f090f5a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090eba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090eb9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d2

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$8;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ebb

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$7;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1289
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xa

    .line 982
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 988
    const-string v1, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 990
    const-string v0, "SMotionGuideHub"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    :cond_2
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 997
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_3

    .line 998
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 1001
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1005
    :cond_4
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1006
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_5

    .line 1007
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 1010
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1012
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1015
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1021
    :cond_7
    const-string v0, "air_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1022
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1023
    const-string v1, "com.sec.android.motions.settings.airmotiontutorial"

    const-string v2, "com.sec.android.motions.settings.airmotiontutorial.AirMotionTry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1025
    :cond_8
    const-string v0, "air_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirPinTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1030
    :cond_9
    const-string v0, "air_call_accept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1031
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_a

    .line 1032
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 1035
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1036
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.AirMotionTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1039
    :cond_b
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1041
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1043
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1046
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v1, "MotionTest"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1052
    :cond_d
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1053
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1054
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1055
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1057
    :cond_e
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1060
    :cond_f
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1061
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1062
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v1, "isLaunchedFromHelp"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1066
    :cond_10
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1067
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1069
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1072
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v1, "MotionTest"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1078
    :cond_12
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1086
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1087
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1089
    :cond_13
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1090
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1091
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1092
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1094
    :cond_14
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1097
    :cond_15
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1098
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1100
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1103
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1104
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1106
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1108
    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1109
    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1112
    :cond_18
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v1, :cond_19

    .line 1113
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 1116
    :cond_19
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1120
    :cond_1a
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1121
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1122
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_1b

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1123
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 1125
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 1127
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1128
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1130
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1133
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1134
    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1137
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1138
    :cond_1e
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1139
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1141
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1144
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1145
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1148
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1149
    :cond_20
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1153
    const-string v1, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1155
    :cond_21
    const-string v0, "peek_view_albums_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1156
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1158
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1161
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v1, "MotionTest"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1166
    :cond_23
    const-string v0, "peek_chapter_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1167
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1169
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1171
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "video_help"

    const-string v2, "raw"

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1172
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 1173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_HELP_VIDEO_MOTION_PEEK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://com.samsung.helpplugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1177
    :cond_25
    const-string v0, "SMotionGuideHub"

    const-string v1, "The Video resource not downloaded yet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1181
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_HELP_VIDEO_MOTION_PEEK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    const-string v1, "file:///system/media/video/video_help.mp4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1185
    :cond_27
    const-string v0, "arc_motion_quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1186
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1188
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1191
    :cond_28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1192
    const-string v1, "samsung.pickuptutorial.MOTIONGLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1194
    :cond_29
    const-string v0, "arc_motion_music_playback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1197
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1200
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1201
    const-string v1, "android.intent.action.ROCKING_MOTION_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1207
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1209
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    .line 1214
    return-void

    .line 1211
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1310
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1312
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1316
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1320
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1322
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 408
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 409
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040190

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b01c5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 411
    const v4, 0x7f0b01c4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 412
    const v4, 0x7f0b00bf

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 413
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const-string v4, "arc_motion_ripple_effect"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    :cond_0
    const-string v4, "arc_motion_music_playback"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :cond_1
    const-string v4, "air_scroll"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 433
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 434
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    :cond_3
    const v4, 0x7f0b041c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    .line 439
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    if-eqz v4, :cond_4

    .line 441
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 444
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 446
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    if-eqz v4, :cond_7

    .line 447
    new-instance v4, Lcom/android/settings/motion2013/SMotionGuideHub$3;

    invoke-direct {v4, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 471
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/motion2013/SMotionGuideHub$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 484
    :goto_0
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 485
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :cond_5
    iget v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 488
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 490
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_6

    .line 491
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 494
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 495
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 496
    return-void

    .line 481
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 601
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 624
    :cond_0
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 633
    :cond_1
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    .line 636
    :cond_2
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    .line 639
    :cond_3
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    .line 642
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 646
    :cond_5
    return-void

    .line 602
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 1381
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1382
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 1383
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 1386
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1389
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    .line 1400
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1401
    return-void

    .line 1394
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1396
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 209
    const-string v3, "hasSensitivity"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 210
    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 214
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 220
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 223
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 224
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 227
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    const-string v0, "advanced_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 251
    const-string v0, "advanced_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    .line 252
    const-string v0, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    .line 253
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 255
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_5

    .line 332
    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v7, :cond_5

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget v3, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v3, v1, :cond_d

    .line 337
    :goto_3
    const-string v2, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 338
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 376
    :cond_4
    :goto_4
    sput v7, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    .line 381
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 212
    goto/16 :goto_0

    .line 217
    :cond_7
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto/16 :goto_1

    .line 258
    :cond_8
    const-string v0, "air_call_accept"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 261
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f090f96

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_2

    .line 264
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 265
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 267
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090f6c

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 270
    const-string v0, "time_and_date"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v0, "unread_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v0, "current_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    .line 276
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 294
    :cond_a
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090f83

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 296
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 298
    const-string v0, "single_photo_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 299
    const-string v0, "internet_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 300
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_b
    const-string v0, "now_playing_on_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 304
    const-string v0, "bgm_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v0, "note_page_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 306
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "com.samsung.android.snote"

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_c

    .line 313
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090f92

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 320
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090f90

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    goto/16 :goto_2

    .line 316
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090f90

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 335
    goto/16 :goto_3

    .line 342
    :cond_e
    const-string v2, "battery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 343
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 345
    :cond_f
    const-string v2, "notification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 346
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 348
    :cond_10
    const-string v2, "missed_call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 349
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 351
    :cond_11
    const-string v2, "unread_message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 352
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 354
    :cond_12
    const-string v2, "current_music"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 355
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 359
    :cond_13
    const-string v2, "single_photo_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 360
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 362
    :cond_14
    const-string v2, "internet_window"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 363
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 365
    :cond_15
    const-string v2, "now_playing_on_music"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 366
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 368
    :cond_16
    const-string v2, "bgm_on_lock_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 369
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 371
    :cond_17
    const-string v2, "note_page_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f090e78

    const/4 v2, 0x0

    .line 575
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 576
    const-string v0, "air_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v0, "air_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 651
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    .line 653
    sget v4, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 654
    sget v4, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 655
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 656
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 668
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    .line 669
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 729
    :cond_2
    :goto_1
    return v2

    :cond_3
    move v1, v3

    .line 654
    goto :goto_0

    .line 671
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_call_accept_auto_start_speaker"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v2

    :cond_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 674
    :cond_6
    if-eqz p2, :cond_2

    .line 676
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_8

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_view_battery_charging_info"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v2

    :cond_7
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 679
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_a

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_view_notification"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v2

    :cond_9
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 682
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_c

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_view_missed_call"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v2

    :cond_b
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 685
    :cond_c
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_e

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_view_new_message"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d

    move v3, v2

    :cond_d
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 688
    :cond_e
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_10

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_view_now_playing_music"

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_f

    move v3, v2

    :cond_f
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 705
    :cond_10
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_13

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_turn_single_photo_view"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    :goto_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    :cond_11
    :goto_3
    const-string v4, "air_scroll"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 717
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_12
    move v4, v3

    .line 706
    goto :goto_2

    .line 707
    :cond_13
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_15

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_turn_internet_window"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    :goto_4
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_14
    move v4, v3

    goto :goto_4

    .line 709
    :cond_15
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_17

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_turn_now_playing_on_music"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    :goto_5
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_16
    move v4, v3

    goto :goto_5

    .line 711
    :cond_17
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_19

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_turn_bgm_on_lock_screen"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v2

    :goto_6
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_18
    move v4, v3

    goto :goto_6

    .line 713
    :cond_19
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_11

    .line 714
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_turn_note_page_view"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v2

    :goto_7
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_1a
    move v4, v3

    goto :goto_7

    .line 722
    :cond_1b
    const-string v4, "air_turn"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 723
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 724
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 729
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 500
    .line 501
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 503
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 506
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 508
    const-string v2, "default"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 514
    :goto_1
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 515
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 516
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 519
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    const-string v4, "quick_glance"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 522
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "glance_view_battery_charging_info"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 523
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "glance_view_notification"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v3

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "glance_view_missed_call"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 525
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "glance_view_new_message"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    :goto_6
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "glance_view_now_playing_music"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    :goto_7
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 528
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 531
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 567
    :cond_2
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 568
    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 569
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 572
    :cond_4
    return-void

    :cond_5
    move v2, v1

    .line 513
    goto/16 :goto_1

    :cond_6
    move v4, v1

    .line 519
    goto/16 :goto_2

    :cond_7
    move v4, v1

    .line 522
    goto :goto_3

    :cond_8
    move v4, v1

    .line 523
    goto :goto_4

    :cond_9
    move v4, v1

    .line 524
    goto :goto_5

    :cond_a
    move v4, v1

    .line 525
    goto :goto_6

    :cond_b
    move v3, v1

    .line 526
    goto :goto_7

    .line 547
    :cond_c
    const-string v4, "air_turn"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 550
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_single_photo_view"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v3

    :goto_9
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 551
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_internet_window"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v3

    :goto_a
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 552
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_now_playing_on_music"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v3

    :goto_b
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 553
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v3

    :goto_c
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 554
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_note_page_view"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    :goto_d
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 555
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 556
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 557
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 558
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_d
    move v4, v1

    .line 550
    goto :goto_9

    :cond_e
    move v4, v1

    .line 551
    goto :goto_a

    :cond_f
    move v4, v1

    .line 552
    goto :goto_b

    :cond_10
    move v4, v1

    .line 553
    goto :goto_c

    :cond_11
    move v3, v1

    .line 554
    goto :goto_d

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 594
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 598
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f090f53

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 932
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 934
    const-class v1, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 937
    const-class v1, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 938
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 940
    const-class v1, Lcom/android/settings/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 941
    :cond_3
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 942
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_4
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_5
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x5

    .line 952
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 954
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 959
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    const-string v0, "SMotionGuideHub"

    const-string v1, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    :cond_2
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 966
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 967
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 971
    :cond_3
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 973
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
