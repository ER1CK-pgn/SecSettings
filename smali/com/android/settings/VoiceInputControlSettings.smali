.class public Lcom/android/settings/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;


# instance fields
.field private final KEY_EASY_MODE_SWITCH:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog;

.field private foundVoiceControlView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private isTablet:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mChatonV:Landroid/preference/CheckBoxPreference;

.field mHelpHandler:Landroid/os/Handler;

.field private mHelpState:I

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mIndex:I

.field private mIsAutoHapticDialogShowing:Z

.field private mIsFromHelp:Z

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRotation:I

.field private mVoiceInputCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;

.field private r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 72
    const-string v0, "easy_mode_switch"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_EASY_MODE_SWITCH:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 95
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    .line 96
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 97
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    .line 109
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 110
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 113
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    .line 240
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlSettings$2;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/VoiceInputControlSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->setTabletView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/VoiceInputControlSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/VoiceInputControlSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    return p1
.end method

.method public static getInstance()Lcom/android/settings/VoiceInputControlSettings;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-object v0
.end method

.method public static getSalesCodeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, isChatONV:Z
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getSalesCodeProperty()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 588
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    :cond_0
    const/4 v0, 0x0

    .line 596
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v2

    .line 276
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v1

    .line 285
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEasyModeOn()I
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "mPref"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isEasyModeOn()I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setTabletView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0b0624

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 865
    iget v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    if-ne v0, v7, :cond_0

    .line 868
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 871
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 873
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0143

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 878
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 879
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 880
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 882
    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    move v0, v1

    .line 884
    :goto_0
    if-ge v0, v5, :cond_1

    .line 885
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 886
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 892
    iget v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-eqz v0, :cond_4

    .line 893
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 894
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 896
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-ge v0, v2, :cond_2

    .line 897
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 922
    :goto_1
    return-void

    .line 884
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_4
    iput-object v10, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 903
    iput-object v10, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 908
    :cond_5
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 909
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 910
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 911
    iput v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 913
    invoke-virtual {v4}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    .line 914
    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    .line 915
    iget v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    if-ne v1, v7, :cond_7

    .line 916
    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 920
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 917
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    mul-int/lit8 v3, v3, 0x3

    if-gt v1, v3, :cond_6

    .line 918
    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_2
.end method

.method private showHelpStep1Dialog()V
    .locals 10

    .prologue
    const v9, 0x7f0f0151

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 710
    if-ne v0, v8, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 715
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_0

    .line 719
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-nez v0, :cond_3

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c3

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 722
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 723
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v8}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto :goto_0

    .line 730
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c4

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 732
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 733
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 735
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 738
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 739
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 740
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 742
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 746
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 747
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 748
    iget v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    if-ne v5, v8, :cond_7

    .line 750
    instance-of v0, v1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    .line 751
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 752
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 755
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 756
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 757
    :goto_1
    if-ge v2, v1, :cond_5

    .line 758
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/Switch;

    if-eqz v5, :cond_6

    .line 759
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 777
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 780
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 781
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f0143

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 790
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    .line 792
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v4, v0

    .line 793
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 795
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 796
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 798
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 800
    iget v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    if-ne v2, v8, :cond_a

    .line 801
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogCenter(III)V

    .line 809
    :goto_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 810
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v8}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 811
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 812
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto/16 :goto_0

    .line 757
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 764
    :goto_4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 765
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x1020018

    if-ne v2, v5, :cond_8

    .line 766
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    goto/16 :goto_2

    .line 769
    :cond_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_9

    .line 770
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 771
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    goto/16 :goto_0

    .line 764
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 805
    :cond_a
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogRight(IIII)V

    goto :goto_3
.end method

.method private showHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 821
    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 827
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 830
    :cond_2
    iput v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 831
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 833
    const v0, 0x7f0b011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 835
    new-instance v2, Lcom/android/settings/VoiceInputControlSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlSettings$8;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 845
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 846
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 847
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 848
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 849
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    goto :goto_0
.end method

.method private updateUIVoiceInputControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 441
    .local v0, voiceInputControlState:I
    if-ne v0, v4, :cond_7

    .line 442
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 443
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputControlSettings;->setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 456
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_6

    .line 457
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_5

    .line 458
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 459
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 492
    :cond_5
    :goto_0
    return-void

    .line 462
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 466
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 468
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    :cond_8
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 470
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 472
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 473
    :cond_a
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 474
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 475
    :cond_b
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    .line 476
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 478
    :cond_c
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 479
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_d

    .line 480
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 483
    :cond_d
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_e

    .line 484
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 485
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 487
    :cond_e
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 855
    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 857
    if-lez v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 860
    :cond_0
    return v0
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 570
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 571
    .local v1, call:I
    const-string v8, "voice_input_control_alarm"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 572
    .local v0, alarm:I
    const-string v8, "voice_input_control_camera"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 573
    .local v2, camera:I
    const-string v8, "voice_input_control_music"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 574
    .local v5, music:I
    const-string v8, "voice_input_control_chatonv"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 576
    .local v3, chatonv:I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 577
    const-string v8, "voice_input_control"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isFromHelpApp()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 290
    .local v3, showNeverAgain:I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 291
    .local v5, voiceState:I
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 293
    .local v4, vibrator:Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    if-eqz p2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    if-eqz p2, :cond_1

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 297
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 298
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040059

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0b0103

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 300
    .local v0, check:Landroid/widget/CheckBox;
    const v6, 0x7f0b0102

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f091244

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 301
    new-instance v6, Lcom/android/settings/VoiceInputControlSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlSettings$3;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f091243

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f091246

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$4;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/VoiceInputControlSettings$4;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f091247

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputControlSettings$5;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$6;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$7;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    .line 343
    iput-boolean v7, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 345
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 346
    return-void

    .line 300
    .restart local v0       #check:Landroid/widget/CheckBox;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #layout:Landroid/view/View;
    :cond_2
    const v8, 0x7f091245

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 679
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 685
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 686
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstance"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sput-object p0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    .line 137
    new-instance v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v5}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 142
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 143
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 144
    if-eqz p1, :cond_0

    .line 146
    const-string v5, "isfromhelp"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 148
    :cond_0
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 153
    :cond_1
    const v5, 0x7f0700d7

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 155
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->isChatONVPhone()Z

    move-result v5

    if-nez v5, :cond_b

    move v1, v6

    .line 157
    .local v1, chatONVHide1:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 160
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    iput-boolean v6, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 163
    :cond_2
    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_4

    move-object v4, v0

    .line 164
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 165
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f0034

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 168
    .local v3, padding:I
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    .line 179
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    const-string v5, "voice_input_control"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    .line 182
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_5
    const-string v5, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v5, "voice_input_control_chatonv"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    .line 188
    const-string v5, "voice_input_control_alarm"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v5, "voice_input_control_camera"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 190
    const-string v5, "voice_input_control_music"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 195
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_7
    if-eq v1, v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isChatOnVInstalled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 200
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_chatonv"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-nez v5, :cond_a

    .line 206
    invoke-virtual {p0, v6}, Lcom/android/settings/VoiceInputControlSettings;->setHasOptionsMenu(Z)V

    .line 210
    :cond_a
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #chatONVHide1:Z
    :cond_b
    move v1, v7

    .line 155
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 216
    const/4 v0, 0x1

    const v1, 0x7f0912d7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ca

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 218
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 694
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 698
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 704
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 229
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 224
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "voice_control"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/VoiceInputControlSettings;->startActivity(Landroid/content/Intent;)V

    .line 227
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 499
    .local v0, state:I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v4, v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090e78

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 506
    iput v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 508
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 511
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 533
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_incomming_calls"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090e78

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 558
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 562
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VOICECONTROL_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 534
    goto :goto_0

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_chatonv"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    .line 540
    :cond_5
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_alarm"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_4

    .line 543
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_camera"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto :goto_5

    .line 546
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_music"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_6
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v1, v3

    goto :goto_6

    .line 560
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "voice_input_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->setBargeInSummary()V

    .line 353
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "enterprise_policy"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 360
    .local v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 362
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->finish()V

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 380
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "voice_input_control"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 387
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "voice_input_control_incomming_calls"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 393
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "voice_input_control_chatonv"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 398
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "voice_input_control_alarm"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 402
    :cond_5
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 403
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "voice_input_control_camera"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    :cond_6
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 408
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control_music"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 414
    .local v1, voiceInputControlState:I
    if-nez v1, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .end local v1           #voiceInputControlState:I
    :cond_8
    move v2, v4

    .line 387
    goto :goto_1

    :cond_9
    move v2, v4

    .line 393
    goto :goto_2

    :cond_a
    move v2, v4

    .line 398
    goto :goto_3

    :cond_b
    move v2, v4

    .line 403
    goto :goto_4

    :cond_c
    move v3, v4

    .line 408
    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-ne v0, v1, :cond_0

    .line 236
    const-string v0, "isfromhelp"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 517
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 522
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 526
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 528
    :cond_2
    return-void
.end method

.method public setBargeInSummary()V
    .locals 28

    .prologue
    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 606
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 607
    .local v16, resources:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 608
    .local v8, configuration:Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 610
    .local v15, previousLocale:Ljava/util/Locale;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "voicetalk_language"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 612
    .local v23, voiceLocale:Ljava/lang/String;
    if-nez v23, :cond_a

    .line 613
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    .line 623
    :cond_0
    :goto_0
    const-string v25, "en-gb_GB"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 624
    const-string v23, "en_GB"

    .line 626
    :cond_1
    new-instance v24, Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v15}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .local v24, voicetalkLocale:Ljava/util/Locale;
    const-string v25, "pt-BR"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 629
    const-string v25, "-"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 630
    .local v17, splitVoiceLocale:[Ljava/lang/String;
    new-instance v24, Ljava/util/Locale;

    .end local v24           #voicetalkLocale:Ljava/util/Locale;
    const/16 v25, 0x0

    aget-object v25, v17, v25

    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-direct/range {v24 .. v26}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .end local v17           #splitVoiceLocale:[Ljava/lang/String;
    .restart local v24       #voicetalkLocale:Ljava/util/Locale;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "zh-CN"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 634
    sget-object v24, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 636
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v25

    if-nez v25, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "zh_CN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 637
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 640
    :cond_4
    move-object/from16 v0, v24

    iput-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 641
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 643
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a000f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, bargeInCallCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0010

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, bargeInAlarmCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0011

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, bargeInCameraCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0012

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, bargeInMusicCommands:[Ljava/lang/String;
    iput-object v15, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 650
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 652
    const v25, 0x7f091255

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 653
    .local v19, tempForCall:Ljava/lang/String;
    const v25, 0x7f091256

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 654
    .local v21, tempForChatOn:Ljava/lang/String;
    const v25, 0x7f091257

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 655
    .local v18, tempForAlarm:Ljava/lang/String;
    const v25, 0x7f091258

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 656
    .local v20, tempForCamera:Ljava/lang/String;
    const v25, 0x7f09125a

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 659
    .local v22, tempForMusic:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 660
    .local v11, guideCallString:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 661
    .local v13, guideChatOnVString:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v4, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v4, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 662
    .local v10, guideAlarmString:Ljava/lang/String;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 663
    .local v12, guideCameraString:Ljava/lang/String;
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    const/16 v27, 0x4

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x5

    const/16 v27, 0x5

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 665
    .local v14, guideMusicString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 667
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 669
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 673
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    :cond_9
    return-void

    .line 614
    .end local v4           #bargeInAlarmCommands:[Ljava/lang/String;
    .end local v5           #bargeInCallCommands:[Ljava/lang/String;
    .end local v6           #bargeInCameraCommands:[Ljava/lang/String;
    .end local v7           #bargeInMusicCommands:[Ljava/lang/String;
    .end local v10           #guideAlarmString:Ljava/lang/String;
    .end local v11           #guideCallString:Ljava/lang/String;
    .end local v12           #guideCameraString:Ljava/lang/String;
    .end local v13           #guideChatOnVString:Ljava/lang/String;
    .end local v14           #guideMusicString:Ljava/lang/String;
    .end local v18           #tempForAlarm:Ljava/lang/String;
    .end local v19           #tempForCall:Ljava/lang/String;
    .end local v20           #tempForCamera:Ljava/lang/String;
    .end local v21           #tempForChatOn:Ljava/lang/String;
    .end local v22           #tempForMusic:Ljava/lang/String;
    .end local v24           #voicetalkLocale:Ljava/util/Locale;
    :cond_a
    const-string v25, "v-es-LA"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 615
    const-string v23, "es"

    goto/16 :goto_0
.end method
