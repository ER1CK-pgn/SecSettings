.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$SavedState;,
        Lcom/android/settings/BrightnessPreference$Listener;
    }
.end annotation


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private dissmissflag:Z

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightness:Lcom/android/settings/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxButton:Landroid/widget/TextView;

.field private mCurBrightness:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mDualFolderType:Z

.field private mFlipCloseStatus:Z

.field private mListener:Lcom/android/settings/BrightnessPreference$Listener;

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSupportFolderType:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTracking:Z

.field private mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->dissmissflag:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 104
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 126
    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 128
    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 135
    new-instance v3, Lcom/android/settings/BrightnessPreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessPreference$1;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v3, Lcom/android/settings/BrightnessPreference$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessPreference$2;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v3, Lcom/android/settings/BrightnessPreference$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessPreference$3;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 172
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 173
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 174
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 178
    const-string v3, "BrightnessPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "min Brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "BrightnessPreference"

    const-string v4, "EnableAuto"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 187
    :cond_0
    const v3, 0x7f04013c

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 190
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportDA()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.dual_lcd"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mDualFolderType:Z

    .line 193
    return-void

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 483
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 484
    .local v1, mode:I
    const/4 v0, 0x0

    .line 485
    .local v0, brightness:F
    sget-boolean v2, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 489
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 500
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 491
    :cond_0
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 497
    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 495
    :cond_1
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 504
    move v0, p1

    .line 506
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 510
    :goto_0
    return v0

    .line 508
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    .line 529
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v3, :cond_0

    .line 530
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 531
    move v1, v2

    .line 532
    .local v1, val:I
    const-string v0, ""

    .line 533
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v3, v1, -0x5

    if-lez v3, :cond_1

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_0
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 543
    .end local v0           #progressValue:Ljava/lang/String;
    .end local v1           #val:I
    :cond_0
    return-void

    .line 536
    .restart local v0       #progressValue:Ljava/lang/String;
    .restart local v1       #val:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 525
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 546
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 548
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 549
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 550
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 552
    if-eqz v0, :cond_5

    .line 553
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_4

    .line 556
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : mTwSeekBarLayout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    :cond_1
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 546
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_3
    move v1, v2

    .line 550
    goto :goto_1

    .line 560
    :cond_4
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f0903fc

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    :goto_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 572
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_6

    .line 575
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 579
    :cond_6
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f09079f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 586
    :goto_4
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 583
    :catch_0
    move-exception v1

    goto :goto_4

    .line 565
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 618
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 621
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 623
    :cond_1
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 634
    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->dissmissflag:Z

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 7
    .parameter "brightness"
    .parameter "write"

    .prologue
    const v6, 0x461c4000

    .line 638
    iget-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 639
    sget-boolean v4, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 640
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 642
    .local v3, valf:F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 644
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 647
    :cond_0
    if-eqz p2, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 649
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 675
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    iget v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 657
    .local v1, range:I
    mul-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    .line 659
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 661
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 662
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 664
    :cond_3
    if-eqz p2, :cond_4

    .line 665
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 667
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 672
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 670
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 652
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 678
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 682
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 685
    :cond_0
    return-void

    .line 678
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 160
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 161
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 349
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 350
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0b0348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 351
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b0349

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 352
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 353
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0b034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 354
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0b034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 355
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0b034d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 356
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0b034e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 357
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0b034f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 358
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0b0350

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 359
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0b0351

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 360
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x64

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 221
    iput v9, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 223
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->dissmissflag:Z

    .line 224
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 226
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 228
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v3, :cond_0

    .line 229
    const v3, 0x7f0b009a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    .line 230
    const v3, 0x7f0b009c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f0b0347

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 233
    const v3, 0x7f0b0097

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 234
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 238
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v3, :cond_4

    .line 240
    const-string v3, "BrightnessPreference"

    const-string v6, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_0
    const v3, 0x7f0b009d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "auto_brightness_detail"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 251
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    div-int/lit8 v3, v3, 0x14

    add-int/lit8 v1, v3, -0x5

    .line 252
    .local v1, defaultProgress:I
    const-string v2, ""

    .line 253
    .local v2, progressValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 254
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 255
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 256
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setQuickPanleInstance(Z)V

    .line 257
    if-lez v1, :cond_6

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "+"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 268
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 275
    .end local v1           #defaultProgress:I
    .end local v2           #progressValue:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_brightness"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness_DB:I

    .line 282
    const v3, 0x7f0b009e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 283
    const v3, 0x7f0b0345

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 287
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref_siop_brightness"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 288
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref_siop_brightness_change_type"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mChangeType:I

    .line 290
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_brightness"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-le v3, v6, :cond_7

    .line 293
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 296
    :goto_2
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    const/16 v6, 0xff

    if-ne v3, v6, :cond_8

    .line 297
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :cond_1
    :goto_3
    const v3, 0x7f0b0344

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 308
    const v3, 0x7f0b0096

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBoxButton:Landroid/widget/TextView;

    .line 309
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v3, :cond_b

    .line 310
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 311
    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 312
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    .line 313
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v6, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 314
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v6, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v6, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 325
    :goto_5
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 328
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    .line 329
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void

    .line 244
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 247
    :cond_5
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 260
    .restart local v1       #defaultProgress:I
    .restart local v2       #progressValue:Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 295
    .end local v1           #defaultProgress:I
    .end local v2           #progressValue:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    .line 299
    :cond_8
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mChangeType:I

    if-nez v3, :cond_9

    .line 300
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    const v6, 0x7f090c34

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 301
    :cond_9
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mChangeType:I

    if-ne v3, v4, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    const v6, 0x7f090c35

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_a
    move v3, v5

    .line 312
    goto :goto_4

    .line 317
    :cond_b
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 319
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 321
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    goto :goto_5
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->dissmissflag:Z

    if-nez v0, :cond_1

    .line 466
    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-le v0, v3, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_4

    :cond_0
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 480
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 466
    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 477
    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 605
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 606
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 609
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 611
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 615
    :cond_0
    return-void

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 397
    :cond_1
    :goto_0
    return v1

    .line 378
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 379
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 397
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 378
    goto :goto_1

    .line 381
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 382
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 383
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 389
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 390
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 391
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v1, 0x0

    .line 414
    if-eqz p3, :cond_0

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mDualFolderType:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 421
    invoke-direct {p0, p2, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 423
    :cond_1
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 425
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTwSeekBarSplitProgressChanged progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, ""

    .line 427
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v2, p2, -0x5

    if-lez v2, :cond_0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_0
    mul-int/lit8 v1, p2, 0x14

    .line 433
    .local v1, val:I
    new-instance v2, Lcom/android/settings/BrightnessPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/BrightnessPreference$4;-><init>(Lcom/android/settings/BrightnessPreference;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 439
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    return-void

    .line 430
    .end local v1           #val:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 744
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 757
    :goto_0
    return-void

    .line 750
    :cond_1
    check-cast p1, Lcom/android/settings/BrightnessPreference$SavedState;

    .line 751
    invoke-virtual {p1}, Lcom/android/settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 752
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 753
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 754
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 755
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 756
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 753
    goto :goto_1

    :cond_3
    move v1, v2

    .line 754
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 724
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 725
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 739
    :goto_0
    return-object v0

    .line 728
    :cond_1
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 729
    .local v0, myState:Lcom/android/settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 730
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 731
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 732
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 733
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->curBrightness:I

    goto :goto_0

    .line 731
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 444
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mTracking:Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mListener:Lcom/android/settings/BrightnessPreference$Listener;

    if-eqz v0, :cond_0

    .line 455
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 448
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mTracking:Z

    .line 459
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mListener:Lcom/android/settings/BrightnessPreference$Listener;

    if-eqz v0, :cond_0

    .line 462
    :cond_0
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 404
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 407
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(I)V
    .locals 4
    .parameter "hardKeyboardState"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 688
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mDualFolderType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    packed-switch p1, :pswitch_data_0

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBoxButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 702
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBoxButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBoxButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/BrightnessPreference$5;

    invoke-direct {v1, p0}, Lcom/android/settings/BrightnessPreference$5;-><init>(Lcom/android/settings/BrightnessPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    .line 166
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 197
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 212
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0903fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 216
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 363
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 366
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 372
    :cond_1
    return-void
.end method
