.class public Lcom/android/settings/motion/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedSettings:Landroid/preference/Preference;

.field private mAirCallAccept:Landroid/preference/CheckBoxPreference;

.field private mAirClip:Landroid/preference/CheckBoxPreference;

.field private mAirGlanceView:Landroid/preference/CheckBoxPreference;

.field private mAirItemMove:Landroid/preference/CheckBoxPreference;

.field private mAirMotionCategory:Landroid/preference/PreferenceCategory;

.field private mAirMotionScroll:Landroid/preference/CheckBoxPreference;

.field private mAirMotionTutorial:Landroid/preference/Preference;

.field private mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mAirNoteSwap:Landroid/preference/CheckBoxPreference;

.field private mAirWebNavigate:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDoubleTap:Landroid/preference/CheckBoxPreference;

.field private mGlanceView:Landroid/preference/CheckBoxPreference;

.field private mMotionCategory:Landroid/preference/PreferenceCategory;

.field private mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/CheckBoxPreference;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/CheckBoxPreference;

.field private mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

.field private mPickUp:Landroid/preference/CheckBoxPreference;

.field private mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSensitivitySettings:Landroid/preference/Preference;

.field private mShake:Landroid/preference/CheckBoxPreference;

.field private mSupportBrowser:Z

.field private mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mTapAndTwist:Landroid/preference/CheckBoxPreference;

.field private mTilt:Landroid/preference/CheckBoxPreference;

.field private mTiltToScrollList:Landroid/preference/CheckBoxPreference;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 14
    .parameter "cr"
    .parameter "c"

    .prologue
    .line 356
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 357
    .local v2, isTablet:Z
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    .line 359
    .local v3, isVoiceCapable:Z
    const-string v12, "motion_zooming"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 361
    .local v10, tiltZoom:I
    const/4 v7, 0x0

    .line 363
    .local v7, panMove:I
    const-string v12, "motion_pan_to_browse_image"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 365
    .local v6, panBrowse:I
    const/4 v8, 0x0

    .line 367
    .local v8, shake:I
    const/4 v1, 0x0

    .line 369
    .local v1, doubleTap:I
    if-eqz v3, :cond_0

    const-string v12, "motion_pick_up"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 371
    .local v9, smartAlert:I
    :goto_0
    if-nez v2, :cond_1

    const-string v12, "motion_pick_up_to_call_out"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 373
    .local v0, directCall:I
    :goto_1
    if-nez v2, :cond_2

    const-string v12, "motion_overturn"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 375
    .local v11, turnover:I
    :goto_2
    if-nez v2, :cond_3

    const-string v12, "surface_palm_swipe"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 377
    .local v4, palmSwipe:I
    :goto_3
    if-nez v2, :cond_4

    const-string v12, "surface_palm_touch"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 380
    .local v5, palmTouch:I
    :goto_4
    or-int v12, v10, v7

    or-int/2addr v12, v6

    or-int/2addr v12, v8

    or-int/2addr v12, v1

    or-int/2addr v12, v9

    or-int/2addr v12, v0

    or-int/2addr v12, v11

    or-int/2addr v12, v4

    or-int/2addr v12, v5

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_5
    return v12

    .line 369
    .end local v0           #directCall:I
    .end local v4           #palmSwipe:I
    .end local v5           #palmTouch:I
    .end local v9           #smartAlert:I
    .end local v11           #turnover:I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 371
    .restart local v9       #smartAlert:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 373
    .restart local v0       #directCall:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 375
    .restart local v11       #turnover:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 377
    .restart local v4       #palmSwipe:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 380
    .restart local v5       #palmTouch:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    const-string v1, "MotionsSettings"

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

    .line 563
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 524
    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 527
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionSettings$1;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 542
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionSettings$2;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 386
    if-nez p2, :cond_7

    .line 387
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 389
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 390
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const/4 v2, 0x1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    const/4 v0, 0x1

    .line 400
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 401
    const v3, 0x7f090ea3

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    .line 417
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 418
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 419
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 422
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 423
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 424
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 425
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 428
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 429
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 430
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 436
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 440
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 441
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    return-void

    .line 402
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 403
    const v3, 0x7f090ea2

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 404
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 405
    const v3, 0x7f090ea1

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    if-eqz p2, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_engine"

    if-eqz p2, :cond_6

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 407
    goto :goto_1

    :cond_6
    move v4, v5

    .line 408
    goto :goto_2

    .line 412
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    if-eqz p2, :cond_8

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_engine"

    if-eqz p2, :cond_9

    :goto_4
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v5

    .line 412
    goto :goto_3

    :cond_9
    move v4, v5

    .line 413
    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion/MotionSettings;->mSupportBrowser:Z

    .line 118
    const v3, 0x7f070073

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 121
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    .line 122
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 123
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 126
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 133
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 136
    .end local v1           #padding:I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 140
    const-string v3, "glance_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v3, "tilt"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v3, "tilt_to_scroll_list"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v3, "pan"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v3, "pan_to_browse_image"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v3, "shake"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v3, "double_tap"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v3, "pick_up"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    .line 148
    const-string v3, "pick_up_to_call_out"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v3, "turn_over"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    .line 150
    const-string v3, "palm_swipe"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    .line 151
    const-string v3, "palm_touch"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v3, "tap_and_twist"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v3, "category_motion"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionCategory:Landroid/preference/PreferenceCategory;

    .line 154
    const-string v3, "category_motion_tutorial"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 155
    const-string v3, "category_surface_tutorial"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 156
    const-string v3, "sensitivity_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    .line 157
    const-string v3, "glance_view_advanced_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAdvancedSettings:Landroid/preference/Preference;

    .line 160
    const-string v3, "category_air_motion"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    .line 161
    const-string v3, "air_motion_glance_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v3, "air_motion_web_navigate"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    .line 163
    const-string v3, "air_motion_note_swap"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v3, "air_motion_scroll"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v3, "air_motion_item_move"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v3, "air_motion_clip"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v3, "air_call_accept"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v3, "category_air_motion_tutorial"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 169
    const-string v3, "learn_about_air_motion"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorial:Landroid/preference/Preference;

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 173
    .local v2, ps:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 179
    .local v0, isTablet:Z
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_1
    if-eqz v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_2
    if-eqz v0, :cond_3

    .line 200
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090f2f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionSettings;->mSupportBrowser:Z

    if-nez v3, :cond_4

    .line 249
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090e52

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 448
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 449
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_glance_view"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionSettings;->sendGlanceViewCheck(Z)V

    .line 511
    .end local v0           #value:Z
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/motion/MotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "master_motion"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "motion_engine"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    invoke-direct {p0, v2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    .line 517
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #value:Z
    :cond_2
    move v1, v2

    .line 449
    goto :goto_0

    .line 452
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_zooming"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 455
    :cond_5
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_tilt_to_list_scrolling"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 458
    :cond_7
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_panning"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 461
    :cond_9
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pan_to_browse_image"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v1, v2

    goto :goto_5

    .line 464
    :cond_b
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_shake"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_6

    .line 467
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_f

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_double_tap"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto :goto_7

    .line 470
    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_11

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pick_up"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_8

    .line 473
    :cond_11
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_13

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pick_up_to_call_out"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_9
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_9

    .line 476
    :cond_13
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_15

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_overturn"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_a

    .line 479
    :cond_15
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_17

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_swipe"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    :goto_b
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_b

    .line 482
    :cond_17
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_19

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_touch"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_c

    .line 485
    :cond_19
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1b

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_tap_and_twist"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1a

    :goto_d
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1a
    move v1, v2

    goto :goto_d

    .line 488
    :cond_1b
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1d

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_glance_view"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1c

    :goto_e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_e

    .line 491
    :cond_1d
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1f

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_web_navigate"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1e

    :goto_f
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1e
    move v1, v2

    goto :goto_f

    .line 494
    :cond_1f
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_21

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_note_swap"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    :goto_10
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_10

    .line 497
    :cond_21
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_23

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_11
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_11

    .line 500
    :cond_23
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_25

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_item_move"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_24

    :goto_12
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_12

    .line 503
    :cond_25
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_27

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_clip"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_26

    :goto_13
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_26
    move v1, v2

    goto :goto_13

    .line 506
    :cond_27
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_call_accept"

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_28

    :goto_14
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_28
    move v1, v2

    goto :goto_14
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/16 v7, 0x10

    const/4 v9, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 261
    const-string v5, "MotionsSettings"

    const-string v6, "onResume()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    .line 264
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 266
    .local v2, padding:I
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 267
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 269
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 273
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 276
    .end local v2           #padding:I
    :cond_0
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 277
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 283
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "master_motion"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, motionState:I
    if-eqz v1, :cond_2

    move v0, v3

    .line 288
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 290
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 301
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 305
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_glance_view"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 306
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_zooming"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 307
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_tilt_to_list_scrolling"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 308
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_panning"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_4
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 309
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pan_to_browse_image"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    :goto_5
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 310
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_shake"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    :goto_6
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 311
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_double_tap"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_7
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 312
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v3

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 313
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up_to_call_out"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    :goto_9
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 314
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_overturn"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    :goto_a
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 315
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_palm_swipe"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v3

    :goto_b
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 316
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_palm_touch"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v3

    :goto_c
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 317
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_tap_and_twist"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    :goto_d
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 322
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 324
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 326
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 330
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_glance_view"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_10

    move v5, v3

    :goto_e
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 331
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_web_navigate"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v3

    :goto_f
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_note_swap"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_12

    move v5, v3

    :goto_10
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13

    move v5, v3

    :goto_11
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 334
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_item_move"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    :goto_12
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 335
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_clip"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    move v5, v3

    :goto_13
    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_call_accept"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_16

    :goto_14
    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 338
    return-void

    .end local v0           #motionEngineState:Z
    :cond_2
    move v0, v4

    .line 287
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_3
    move v5, v4

    .line 305
    goto/16 :goto_1

    :cond_4
    move v5, v4

    .line 306
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 307
    goto/16 :goto_3

    :cond_6
    move v5, v4

    .line 308
    goto/16 :goto_4

    :cond_7
    move v5, v4

    .line 309
    goto/16 :goto_5

    :cond_8
    move v5, v4

    .line 310
    goto/16 :goto_6

    :cond_9
    move v5, v4

    .line 311
    goto/16 :goto_7

    :cond_a
    move v5, v4

    .line 312
    goto/16 :goto_8

    :cond_b
    move v5, v4

    .line 313
    goto/16 :goto_9

    :cond_c
    move v5, v4

    .line 314
    goto/16 :goto_a

    :cond_d
    move v5, v4

    .line 315
    goto/16 :goto_b

    :cond_e
    move v5, v4

    .line 316
    goto/16 :goto_c

    :cond_f
    move v5, v4

    .line 317
    goto/16 :goto_d

    :cond_10
    move v5, v4

    .line 330
    goto/16 :goto_e

    :cond_11
    move v5, v4

    .line 331
    goto/16 :goto_f

    :cond_12
    move v5, v4

    .line 332
    goto :goto_10

    :cond_13
    move v5, v4

    .line 333
    goto :goto_11

    :cond_14
    move v5, v4

    .line 334
    goto :goto_12

    :cond_15
    move v5, v4

    .line 335
    goto :goto_13

    :cond_16
    move v3, v4

    .line 336
    goto :goto_14
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 343
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/motion/MotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-direct {p0, v2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 353
    :cond_1
    return-void
.end method
