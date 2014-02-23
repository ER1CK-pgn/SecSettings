.class public Lcom/android/settings/motion2013/SMotionGuideHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

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

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 131
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 132
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 133
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 134
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 135
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 141
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 178
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 179
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 180
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 182
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastArcMotionQuickGlanceChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    return-void
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1255
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1256
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1271
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1259
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1260
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1261
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1266
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1250
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1251
    return-void
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1299
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1301
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1224
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_all_list"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1225
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1226
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_contact_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1227
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_scroll_email_list"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1228
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll_album_and_photo"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1229
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_scroll_email_body"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1230
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
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1233
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1234
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_single_photo_view"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1236
    .local v3, singlephotoview:I
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_now_playing_on_music"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1237
    .local v2, nowplayingmusic:I
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1238
    .local v0, bgmonlockscreen:I
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_note_page_view"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1239
    .local v1, notepageview:I
    or-int v6, v3, v2

    or-int/2addr v6, v0

    or-int/2addr v6, v1

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1244
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

    .line 1245
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1246
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090d3c

    const v4, 0x7f090d3b

    const/4 v1, 0x0

    const/4 v0, 0x1

    const v3, 0x7f0915a8

    .line 692
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 694
    const-string v0, "air_motion_glance_view"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 696
    const v1, 0x7f090dc6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 697
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 698
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

    .line 700
    :cond_0
    const v0, 0x7f090df9

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 701
    const v0, 0x7f020017

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 879
    :goto_0
    return-void

    .line 702
    :cond_1
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 703
    const-string v0, "air_motion_scroll"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090dca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090dbc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e0b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 709
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090dca

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

    const v2, 0x7f090dbc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e0b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 716
    :cond_2
    const v0, 0x7f090dc9

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 717
    const v0, 0x7f020019

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 718
    :cond_3
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 719
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 720
    const-string v0, "air_motion_turn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 722
    const v1, 0x7f090dcc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 723
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_4

    .line 724
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

    .line 726
    :cond_4
    const v0, 0x7f090dcb

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 727
    const v0, 0x7f02001a

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 728
    :cond_5
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 729
    const-string v0, "air_motion_item_move"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 731
    const v1, 0x7f090dcf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 733
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

    .line 734
    :cond_6
    const v1, 0x7f090dd1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 736
    :cond_7
    const v0, 0x7f090dce

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 737
    const v0, 0x7f020015

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 738
    :cond_8
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 739
    const-string v0, "air_motion_clip"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090dda

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 741
    const v0, 0x7f090dd9

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 742
    const v0, 0x7f020016

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 743
    :cond_9
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 744
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 745
    const-string v0, "air_motion_call_accept"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ddd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 747
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    .line 748
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

    .line 750
    :cond_a
    const v0, 0x7f090ddc

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 751
    const v0, 0x7f020013

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 752
    :cond_b
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 753
    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 755
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 756
    const v0, 0x7f0202fd

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 757
    :cond_c
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 758
    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 760
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 761
    const v0, 0x7f0202f5

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 762
    :cond_d
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 763
    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 765
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 766
    const v0, 0x7f0202dd

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 767
    :cond_e
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 768
    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 770
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 771
    const v0, 0x7f0202dc

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 772
    :cond_f
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 773
    const-string v2, "motion_shake"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d46

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 777
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

    .line 781
    :goto_1
    if-nez v0, :cond_11

    .line 782
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

    .line 785
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 795
    :cond_11
    :goto_2
    const v0, 0x7f090d3d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 796
    const v0, 0x7f0202e7

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 778
    :catch_0
    move-exception v0

    move v0, v1

    .line 779
    goto :goto_1

    .line 787
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

    .line 789
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 792
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 797
    :cond_15
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 798
    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d4a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 800
    const v0, 0x7f090d3e

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 801
    const v0, 0x7f0202d0

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 802
    :cond_16
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 803
    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d4b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 805
    const v0, 0x7f090d3f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 806
    const v0, 0x7f0202e8

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 807
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 808
    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 810
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_18

    .line 811
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

    .line 813
    :cond_18
    const v0, 0x7f090d40

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 814
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 815
    :cond_19
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 816
    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d4e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 818
    const v0, 0x7f090d41

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 819
    const v0, 0x7f0202fe

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 820
    :cond_1a
    const-string v0, "peek_view_albums_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 821
    const-string v0, "motion_peek_view_albums_list"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d4f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 823
    const v0, 0x7f090d26

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 825
    :cond_1b
    const-string v0, "peek_chapter_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 826
    const-string v0, "motion_peek_chapter_preview"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 828
    const v0, 0x7f090d27

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 830
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 831
    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 833
    const v0, 0x7f090d6b

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 834
    const v0, 0x7f0200bf

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 835
    :cond_1d
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 836
    const-string v0, "surface_palm_touch"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 841
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 842
    const v0, 0x7f090d6d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 843
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 840
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_3

    .line 844
    :cond_1f
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 845
    const-string v0, "surface_tap_and_twist"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d71

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 847
    const v0, 0x7f090d70

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 849
    :cond_20
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 850
    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d7d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 852
    const v0, 0x7f090d7c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 853
    const v0, 0x7f0202cc

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 854
    :cond_21
    const-string v0, "arc_motion_ripple_effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 855
    const-string v0, "arc_motion_ripple_effect"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d91

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 857
    const v0, 0x7f090d89

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 859
    :cond_22
    const-string v0, "arc_motion_quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 860
    const-string v0, "arc_motion_quick_glance"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 862
    const v0, 0x7f090d8a

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 864
    :cond_23
    const-string v0, "arc_motion_music_playback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 865
    const-string v0, "arc_motion_music_playback"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 867
    const v0, 0x7f090d8b

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 869
    :cond_24
    const-string v0, "arc_motion_messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 870
    const-string v0, "arc_motion_messaging"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 872
    const v0, 0x7f090d8c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 875
    :cond_25
    const-string v0, "SMotionGuideHub"

    const-string v1, "Cannot get correct motion information"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showFolderDialog()V
    .locals 3

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1191
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0915a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074c

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$9;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$8;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$8;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1206
    return-void
.end method

.method private showMotionDialog()V
    .locals 6

    .prologue
    const v5, 0x7f090de0

    .line 1115
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1117
    const v0, 0x7f090d5b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1118
    const v0, 0x7f090d5c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1120
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1121
    const v0, 0x7f090de1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
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

    const v1, 0x7f09074c

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1164
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$5;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1170
    return-void

    .line 1122
    :cond_1
    const-string v3, "air_motion_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1123
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1124
    const v0, 0x7f090de2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :cond_2
    const-string v3, "air_motion_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1126
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1127
    const v0, 0x7f090de3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1128
    :cond_3
    const-string v3, "air_motion_item_move"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1129
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1130
    const v0, 0x7f090de4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1131
    :cond_4
    const-string v3, "air_motion_clip"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1132
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1133
    const v0, 0x7f090de5

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1134
    :cond_5
    const-string v3, "air_motion_call_accept"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1136
    const v0, 0x7f090de6

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d57

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074c

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$7;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d59

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$6;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1188
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 925
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 927
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 931
    const-string v1, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 933
    const-string v0, "SMotionGuideHub"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    :cond_2
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_3

    .line 941
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 944
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 948
    :cond_4
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 949
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_5

    .line 950
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 953
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

    .line 955
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 958
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 964
    :cond_7
    const-string v0, "air_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 965
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 966
    const-string v1, "com.sec.android.motions.settings.airmotiontutorial"

    const-string v2, "com.sec.android.motions.settings.airmotiontutorial.AirMotionTry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 968
    :cond_8
    const-string v0, "air_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 969
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirPinTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 973
    :cond_9
    const-string v0, "air_call_accept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 974
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_a

    .line 975
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 978
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 979
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.AirMotionTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 982
    :cond_b
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 991
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 993
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 996
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    :cond_d
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 998
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 999
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1000
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1002
    :cond_e
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1005
    :cond_f
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    :cond_10
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1021
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1023
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1026
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    :cond_12
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1035
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1036
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1038
    :cond_13
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1039
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1040
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1041
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1043
    :cond_14
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1046
    :cond_15
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1047
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1049
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1052
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1053
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1055
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1056
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1057
    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1058
    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1061
    :cond_18
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v1, :cond_19

    .line 1062
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 1065
    :cond_19
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1069
    :cond_1a
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1071
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_1b

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1072
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 1074
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 1076
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1077
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1079
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1082
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1083
    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1085
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1086
    :cond_1e
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1087
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1089
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1092
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1093
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1095
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1096
    :cond_20
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1100
    const-string v1, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1106
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    .line 1113
    return-void

    .line 1110
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

    .line 1209
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1211
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1215
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1219
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1221
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 412
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 413
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040158

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b03b9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 415
    const v4, 0x7f0b03b8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 416
    const v4, 0x7f0b00b2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 417
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const-string v4, "air_scroll"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 435
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 437
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    if-eqz v4, :cond_1

    .line 438
    new-instance v4, Lcom/android/settings/motion2013/SMotionGuideHub$2;

    invoke-direct {v4, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 462
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/motion2013/SMotionGuideHub$3;

    invoke-direct {v5, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 473
    :cond_1
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 474
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_2
    iget v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 477
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 479
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 483
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 484
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 485
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 575
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 598
    :cond_0
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 607
    :cond_1
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    .line 610
    :cond_2
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    .line 613
    :cond_3
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 614
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 619
    :cond_5
    return-void

    .line 576
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 1275
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1276
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 1277
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 1280
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1283
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    .line 1294
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1295
    return-void

    .line 1288
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1290
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 206
    const-string v3, "hasSensitivity"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 207
    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 211
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 217
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 220
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 221
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 224
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    const-string v0, "advanced_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 248
    const-string v0, "advanced_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    .line 249
    const-string v0, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 252
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 376
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    sget v3, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v3, v1, :cond_15

    .line 378
    :goto_3
    const-string v2, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 385
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 209
    goto/16 :goto_0

    .line 214
    :cond_5
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto/16 :goto_1

    .line 255
    :cond_6
    const-string v0, "air_call_accept"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f090e22

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_2

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 262
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 264
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090df8

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 265
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 267
    const-string v0, "time_and_date"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    .line 268
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    .line 269
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v0, "unread_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v0, "current_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    .line 273
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 276
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 280
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v0, v1, :cond_8

    move v0, v1

    .line 282
    :goto_4
    const-string v4, "battery"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 283
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 281
    goto :goto_4

    .line 285
    :cond_9
    const-string v4, "notification"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 286
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 288
    :cond_a
    const-string v4, "missed_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 289
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 291
    :cond_b
    const-string v4, "unread_message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 292
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 294
    :cond_c
    const-string v4, "current_music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 314
    :cond_d
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090e0f

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 318
    const-string v0, "single_photo_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 319
    const-string v0, "internet_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    const-string v0, "now_playing_on_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 322
    const-string v0, "bgm_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 323
    const-string v0, "note_page_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 324
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    .line 325
    const-string v0, "com.samsung.android.snote"

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_f

    .line 331
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090e1e

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_e
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v0, v1, :cond_10

    move v0, v1

    .line 350
    :goto_6
    const-string v4, "single_photo_view"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 351
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 334
    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090e1c

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 336
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 338
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_10
    move v0, v2

    .line 349
    goto :goto_6

    .line 353
    :cond_11
    const-string v4, "internet_window"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 354
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 356
    :cond_12
    const-string v4, "now_playing_on_music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 357
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 359
    :cond_13
    const-string v4, "bgm_on_lock_screen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 360
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 362
    :cond_14
    const-string v4, "note_page_view"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_15
    move v1, v2

    .line 377
    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f090d18

    const/4 v2, 0x0

    .line 549
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 550
    const-string v0, "air_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string v0, "air_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 628
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return v1

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_call_accept_auto_start_speaker"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 634
    :cond_3
    if-eqz p2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 639
    :cond_5
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_notification"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 642
    :cond_7
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 645
    :cond_9
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 648
    :cond_b
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 665
    :cond_d
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    :cond_e
    :goto_2
    const-string v2, "air_scroll"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 677
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    move v2, v0

    .line 666
    goto :goto_1

    .line 667
    :cond_10
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_internet_window"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_11
    move v2, v0

    goto :goto_3

    .line 669
    :cond_12
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    :goto_4
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_13
    move v2, v0

    goto :goto_4

    .line 671
    :cond_14
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    :goto_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_15
    move v2, v0

    goto :goto_5

    .line 673
    :cond_16
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v1

    :goto_6
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_17
    move v2, v0

    goto :goto_6

    .line 682
    :cond_18
    const-string v2, "air_turn"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 683
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 689
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 490
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 496
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 497
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 498
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 500
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 501
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 503
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_battery_charging_info"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_notification"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_missed_call"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_new_message"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_now_playing_music"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_6
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 546
    .end local v0           #motionEngineState:Z
    :cond_1
    :goto_7
    return-void

    :cond_2
    move v0, v2

    .line 495
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_3
    move v3, v2

    .line 500
    goto :goto_1

    :cond_4
    move v3, v2

    .line 503
    goto :goto_2

    :cond_5
    move v3, v2

    .line 504
    goto :goto_3

    :cond_6
    move v3, v2

    .line 505
    goto :goto_4

    :cond_7
    move v3, v2

    .line 506
    goto :goto_5

    :cond_8
    move v1, v2

    .line 507
    goto :goto_6

    .line 528
    :cond_9
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 531
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 532
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 533
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    :goto_a
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 534
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    :goto_b
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    :goto_c
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 536
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_a
    move v3, v2

    .line 531
    goto :goto_8

    :cond_b
    move v3, v2

    .line 532
    goto :goto_9

    :cond_c
    move v3, v2

    .line 533
    goto :goto_a

    :cond_d
    move v3, v2

    .line 534
    goto :goto_b

    :cond_e
    move v1, v2

    .line 535
    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 568
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f090ddf

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 881
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 883
    const-class v1, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 886
    const-class v1, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 887
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 889
    const-class v1, Lcom/android/settings/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x5

    .line 895
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 897
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const-string v0, "SMotionGuideHub"

    const-string v1, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_2
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 909
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 910
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 912
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 914
    :cond_3
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
