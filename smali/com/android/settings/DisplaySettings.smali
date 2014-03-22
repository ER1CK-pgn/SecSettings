.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field public static UseMultiWindow:Z

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field protected MESSAGE_DELAY:I

.field private isDeviceLockTime:Z

.field private isSecuredLock:Z

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

.field private mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

.field private mAutoLockmode:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mClearfont:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mContextualPage:Landroid/preference/SwitchPreferenceScreen;

.field protected mContextualPageUncheckerHandler:Landroid/os/Handler;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDualFolderType:Z

.field private mEditScreenCapture:Landroid/preference/CheckBoxPreference;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSize:Lcom/android/settings/FontSizeListPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

.field private mMultiWindowModeObserver:Landroid/database/ContentObserver;

.field private mMultiWindowPref:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificationEdit:Landroid/preference/PreferenceScreen;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mQuickLaunchPreference:Landroid/preference/ListPreference;

.field private mReadingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mReadingModeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartScreen:Landroid/preference/PreferenceScreen;

.field private mSmartScreenGuideDialog:Landroid/app/AlertDialog;

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field mSupportFolderType:Z

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    .line 134
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    .line 175
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    .line 228
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    return-void

    .line 227
    nop

    :array_0
    .array-data 0x4
        0x5ct 0x4t 0xbt 0x7ft
        0x5dt 0x4t 0xbt 0x7ft
    .end array-data

    .line 228
    :array_1
    .array-data 0x4
        0xdet 0x10t 0x9t 0x7ft
        0xdft 0x10t 0x9t 0x7ft
        0xe0t 0x10t 0x9t 0x7ft
        0xe1t 0x10t 0x9t 0x7ft
        0xe2t 0x10t 0x9t 0x7ft
    .end array-data

    .line 229
    :array_2
    .array-data 0x4
        0xdet 0x10t 0x9t 0x7ft
        0xdft 0x10t 0x9t 0x7ft
        0xe0t 0x10t 0x9t 0x7ft
        0xe1t 0x10t 0x9t 0x7ft
        0xe2t 0x10t 0x9t 0x7ft
        0xdt 0x17t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 197
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 217
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 222
    iput v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 223
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    .line 233
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 251
    iput v1, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 252
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 265
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 280
    iput v1, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    .line 283
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 325
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    .line 333
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 341
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 350
    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    .line 364
    new-instance v0, Lcom/android/settings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    .line 371
    new-instance v0, Lcom/android/settings/DisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 1707
    new-instance v0, Lcom/android/settings/DisplaySettings$18;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$18;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1890
    new-instance v0, Lcom/android/settings/DisplaySettings$22;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$22;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    .line 2059
    new-instance v0, Lcom/android/settings/DisplaySettings$25;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$25;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 224
    :array_0
    .array-data 0x4
        0xdet 0x4t 0x2t 0x7ft
        0xdft 0x4t 0x2t 0x7ft
        0xe0t 0x4t 0x2t 0x7ft
        0xe1t 0x4t 0x2t 0x7ft
    .end array-data

    .line 225
    :array_1
    .array-data 0x4
        0xd4t 0x4t 0x2t 0x7ft
        0xd5t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DisplaySettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2274
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2275
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2276
    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 12
    .parameter

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 923
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 924
    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 929
    const v2, 0x927c0

    .line 933
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 934
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_b

    .line 935
    int-to-long v0, v2

    move-wide v2, v0

    .line 939
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1006
    :goto_2
    return-void

    .line 923
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 943
    :cond_1
    const/4 v1, -0x1

    .line 944
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 945
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 946
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 947
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 948
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 949
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 950
    cmp-long v10, v8, v2

    if-gtz v10, :cond_2

    .line 951
    aget-object v10, v4, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    aget-object v10, v5, v0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-gez v8, :cond_2

    .line 957
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    move v1, v0

    .line 948
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 963
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 965
    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 966
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 970
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 971
    :cond_5
    const v0, 0x7f091137

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 985
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 987
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 989
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-gtz v0, :cond_8

    .line 990
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1005
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 974
    :cond_7
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revisedValues.size() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 976
    const-string v4, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    .line 978
    const v0, 0x7f091137

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 991
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 995
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 997
    :cond_9
    const-string v0, "DisplaySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 1005
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_b
    move-wide v2, v0

    goto/16 :goto_1
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1871
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1872
    div-long v2, v0, v4

    .line 1873
    rem-long v4, v0, v4

    .line 1875
    const-string v0, ""

    .line 1876
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110009

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1882
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000a

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1886
    :cond_2
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return-object v0
.end method

.method private isEnabledScreenReaderService()Z
    .locals 3

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1805
    if-nez v0, :cond_0

    .line 1806
    const-string v0, ""

    .line 1809
    :cond_0
    sget-object v1, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1811
    invoke-virtual {v1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1813
    :cond_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1814
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 1815
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_1

    .line 1818
    const-string v2, "com.google.android.marvin.talkback"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1819
    const/4 v0, 0x1

    .line 1822
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1854
    .line 1855
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1856
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1862
    :goto_0
    if-nez v2, :cond_2

    .line 1867
    :cond_0
    :goto_1
    return v1

    .line 1858
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1864
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1865
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1864
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 2013
    const/4 v0, 0x0

    .line 2015
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_stay_noti"

    if-ne v1, v2, :cond_1

    .line 2016
    const v0, 0x7f0910da

    .line 2023
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09112d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09077c

    new-instance v2, Lcom/android/settings/DisplaySettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$24;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$23;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2057
    return-void

    .line 2017
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_pause_noti"

    if-ne v1, v2, :cond_2

    .line 2018
    const v0, 0x7f0910e7

    goto :goto_0

    .line 2019
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_scroll_noti"

    if-ne v1, v2, :cond_0

    .line 2020
    const v0, 0x7f0910e9

    goto :goto_0
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 12
    .parameter

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1013
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1014
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1016
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1017
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1018
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    const/4 v2, 0x0

    :goto_1
    array-length v9, v6

    if-ge v2, v9, :cond_2

    .line 1021
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1023
    cmp-long v11, v9, v0

    if-eqz v11, :cond_1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v11

    if-nez v11, :cond_1

    cmp-long v9, v3, v9

    if-eqz v9, :cond_1

    .line 1020
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1013
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1026
    :cond_1
    aget-object v9, v5, v2

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1030
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1032
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1034
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1035
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method private removeDisplayPreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1987
    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1990
    :cond_0
    return-void
.end method

.method private removeEnabledScreenReaderValue()V
    .locals 4

    .prologue
    .line 1826
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    :goto_0
    return-void

    .line 1832
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1833
    sget-object v2, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1834
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1836
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1837
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1840
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    :cond_2
    if-eqz v0, :cond_1

    const-string v3, "com.google.android.marvin.talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1844
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1847
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private showTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 1765
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090dd1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090dd0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$21;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$21;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/DisplaySettings$20;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$20;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$19;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1799
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2098
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2096
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter

    .prologue
    .line 1975
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1977
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1979
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1982
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1984
    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1336
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1335
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1336
    goto :goto_2
.end method

.method private updateAccelerometerRotationSecondCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1342
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 2070
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2088
    :goto_0
    return-void

    .line 2071
    :cond_0
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2074
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2077
    :cond_1
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2079
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2082
    :cond_2
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 2083
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2085
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter

    .prologue
    .line 1958
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1959
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1961
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 1964
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1968
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1970
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1972
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1313
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1284
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 1285
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1286
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 1287
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 1289
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display_battery_percentage"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1290
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edit_after_screen_capture"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_key_light"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    .line 1295
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_5

    .line 1296
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    .line 1297
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1298
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_night_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1302
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 1289
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1290
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1297
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1298
    goto :goto_3

    .line 1299
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 11
    .parameter

    .prologue
    .line 849
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 851
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 853
    :goto_0
    const-wide/16 v2, -0x1

    .line 855
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 857
    const-string v0, ""

    move-wide p1, v2

    .line 903
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v1, v2, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 904
    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-eqz v3, :cond_10

    .line 905
    cmp-long v3, v4, v1

    if-gez v3, :cond_e

    .line 907
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v1, :cond_f

    cmp-long v1, p1, v4

    if-lez v1, :cond_f

    .line 908
    const v1, 0x7f09006d

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 909
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 915
    :cond_0
    :goto_3
    return-void

    .line 851
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 858
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, p1, v4

    if-gtz v0, :cond_3

    .line 859
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v2

    goto :goto_1

    .line 862
    :cond_3
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 863
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 864
    if-eqz v7, :cond_4

    array-length v0, v7

    if-nez v0, :cond_5

    .line 865
    :cond_4
    const-string v0, ""

    move-wide p1, v2

    goto :goto_1

    .line 867
    :cond_5
    const/4 v1, 0x0

    .line 868
    const/4 v0, 0x0

    :goto_4
    array-length v9, v8

    if-ge v0, v9, :cond_7

    .line 869
    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 870
    cmp-long v9, p1, v9

    if-ltz v9, :cond_6

    move v1, v0

    .line 868
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 876
    :cond_7
    array-length v0, v7

    if-eqz v0, :cond_8

    array-length v0, v8

    if-nez v0, :cond_9

    .line 877
    :cond_8
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v2

    goto/16 :goto_1

    .line 880
    :cond_9
    aget-object v0, v8, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    cmp-long v0, v4, p1

    if-gez v0, :cond_a

    .line 881
    const-string v0, "DisplaySettings"

    const-string v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v4

    .line 883
    goto/16 :goto_1

    .line 885
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_c

    cmp-long v0, p1, v4

    if-ltz v0, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_c

    .line 886
    :cond_b
    const v0, 0x7f0905a1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v7, v7, v1

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 887
    aget-object v1, v8, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto/16 :goto_1

    .line 889
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_d

    .line 890
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 893
    :cond_d
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v4

    .line 894
    goto/16 :goto_1

    :cond_e
    move-wide v4, v1

    .line 905
    goto/16 :goto_2

    .line 912
    :cond_f
    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_10
    move-wide v4, v1

    goto/16 :goto_2
.end method

.method private updateTouchKeyLightSummary()V
    .locals 2

    .prologue
    .line 1993
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1994
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1995
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1997
    .end local v0           #summary:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1326
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0902ca

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1319
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1322
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0902c8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1317
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createSmartScreenGuideDialog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2000
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2002
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2003
    if-nez v0, :cond_0

    .line 2004
    const-string v0, "pref_smart_scroll_noti"

    if-ne p1, v0, :cond_1

    .line 2005
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showSmartScreenGuideDialogForScroll()V

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showSmartScreenGuideDialog()V

    goto :goto_0
.end method

.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1049
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1050
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1051
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1052
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1053
    add-int/lit8 v0, v1, -0x1

    .line 1057
    :goto_2
    return v0

    .line 1044
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1050
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 1057
    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public isContextualAllOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1897
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_s_pen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1898
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "contextual_page_earphone"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1899
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "contextual_page_audio_dock"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1900
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "contextual_page_car_cradle"

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1901
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "contextual_page_desk_cardle"

    invoke-static {v2, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1902
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "contextual_page_roaming"

    invoke-static {v2, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1905
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    move v2, v0

    .line 1909
    :goto_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    move v2, v0

    .line 1912
    :goto_1
    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    .line 1915
    :goto_2
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EarphoneScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CarCardleScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DeskCradleScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamingScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return v0

    :cond_0
    move v2, v1

    .line 1905
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1909
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1912
    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 808
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 832
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0913c0

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 382
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 386
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 393
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v2

    .line 395
    :goto_1
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "settings_listui"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "led_indicator_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    :cond_1
    const-string v0, "contextualpage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "contextualpage_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    const-string v0, "notification_panel_edit"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationEdit:Landroid/preference/PreferenceScreen;

    .line 413
    const-string v0, "screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "contextual_page"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    :cond_2
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "is_secured_lock"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_18

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    .line 423
    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 424
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 425
    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 435
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 436
    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 441
    :goto_3
    const-string v0, "reading_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 446
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    const-string v0, "screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 449
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111004c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_5
    :goto_4
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    .line 458
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 459
    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 460
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/BrightnessPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 461
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    .line 462
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 463
    const-string v0, "clear_font"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    .line 464
    const-string v0, "persist.sys.font_clarity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClearfont_check_status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "persist.sys.font_clarity"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 467
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 471
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 473
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v5, :cond_6

    .line 474
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 475
    const-string v5, "Direct"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDirect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_6
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v0, "smart_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "settings_listui"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 494
    :cond_7
    :goto_6
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 495
    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 496
    const-string v0, "smartscreen_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 497
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 513
    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 515
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 516
    const-string v0, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v4, v0, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 518
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_8

    .line 519
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v7, 0x7f0a0019

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v7, 0x7f0a001a

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 523
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 526
    invoke-direct {p0, v5, v6}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 528
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 529
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 532
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 533
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 535
    :cond_9
    if-nez v1, :cond_a

    .line 536
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    const-string v0, "display_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 546
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 550
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1e

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 566
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 567
    const-string v0, "wifi_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 572
    iput-object v8, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 576
    const-string v0, "touch_key_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 577
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v2, :cond_20

    .line 582
    :goto_8
    const-string v0, "power_saving_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 583
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v0, "power_saving_mode"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 589
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 590
    const-string v0, "screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 591
    const v1, 0x7f040187

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 608
    :cond_c
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 618
    :cond_d
    const-string v0, "auto_adjust_touch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    .line 619
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    const-string v0, "auto_adjust_touch"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 631
    const-string v0, "quick_launch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    .line 632
    const-string v0, "quick_launch_app"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 639
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 641
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_23

    move v0, v2

    .line 646
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-nez v0, :cond_24

    .line 649
    :goto_c
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    .line 656
    :cond_e
    const-string v0, "accelerometer_second"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    .line 657
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 658
    const-string v0, "sub_lcd_auto_lock"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    .line 659
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    const-string v0, "sub_lcd_auto_lock"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    :goto_d
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 660
    const-string v0, "key_backlight"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 662
    const-string v1, "key_backlight_timeout"

    const/16 v5, 0xbb8

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 665
    const-string v1, "key_night_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    .line 666
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const-string v1, "key_night_mode"

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_26

    move v1, v2

    :goto_e
    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 670
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 671
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_29

    .line 672
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 673
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v9}, Landroid/preference/SwitchPreferenceScreen;->setTitle(I)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0913cb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 697
    :goto_11
    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    .line 700
    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 701
    new-instance v0, Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v0, v1, v4}, Lcom/android/settings/MultiWindowPrefEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 704
    sput-boolean v3, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    .line 707
    :cond_f
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-nez v0, :cond_11

    .line 708
    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 711
    :cond_10
    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 718
    :cond_11
    const-string v0, "edit_screen_capture"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 729
    const-string v0, "general"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 730
    const-string v0, "wallpaper"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 731
    const-string v0, "led_indicator_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 732
    const-string v0, "notification_panel_edit"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 733
    const-string v0, "key_multi_window"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 734
    const-string v0, "contextualpage_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 735
    const-string v0, "screen_category"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 736
    const-string v0, "accelerometer_second"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 737
    const-string v0, "sub_lcd_auto_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 738
    const-string v0, "features_category"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 739
    const-string v0, "smart_screen"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 740
    const-string v0, "key_font"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 741
    const-string v0, "MONOTYPE"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 742
    const-string v0, "font_size"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 743
    const-string v0, "clear_font"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 744
    const-string v0, "more_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 745
    const-string v0, "quick_launch"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 746
    const-string v0, "key_night_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 747
    const-string v0, "key_backlight"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 748
    const-string v0, "auto_adjust_touch"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 749
    const-string v0, "notification_pulse"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 750
    const-string v0, "wifi_display"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 751
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 755
    const-string v0, "header_display_multi_window"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 771
    :cond_12
    :goto_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 772
    const-string v0, "display_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 781
    :goto_13
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 782
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_14

    .line 783
    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 785
    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    sget v1, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    if-ne v1, v2, :cond_2e

    .line 787
    :goto_14
    const-string v1, "screensaver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 788
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_14

    .line 789
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 790
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 804
    :cond_14
    :goto_15
    return-void

    .line 387
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 388
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 390
    :cond_16
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_17
    move v1, v3

    .line 393
    goto/16 :goto_1

    :cond_18
    move v0, v3

    .line 420
    goto/16 :goto_2

    .line 438
    :cond_19
    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 453
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 469
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 485
    :cond_1c
    const-string v0, "features_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "features_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 554
    :cond_1e
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 555
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification_light_pulse"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v0, v2

    :goto_16
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 559
    :catch_0
    move-exception v0

    .line 560
    const-string v0, "DisplaySettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1f
    move v0, v3

    .line 555
    goto :goto_16

    .line 580
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_21
    move v0, v3

    .line 583
    goto/16 :goto_9

    :cond_22
    move v0, v3

    .line 619
    goto/16 :goto_a

    :cond_23
    move v0, v3

    .line 641
    goto/16 :goto_b

    .line 642
    :catch_1
    move-exception v0

    .line 643
    const-string v1, "DisplaySettings"

    const-string v5, "Failing checking whether status bar can hide"

    invoke-static {v1, v5, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 644
    goto/16 :goto_b

    .line 647
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    :cond_25
    move v0, v3

    .line 659
    goto/16 :goto_d

    :cond_26
    move v1, v3

    .line 666
    goto/16 :goto_e

    :cond_27
    move v1, v3

    .line 668
    goto/16 :goto_f

    :cond_28
    move v1, v3

    .line 670
    goto/16 :goto_10

    .line 678
    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-nez v1, :cond_2a

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 681
    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    .line 759
    :cond_2b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 760
    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 765
    :cond_2c
    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 774
    :cond_2d
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 775
    const-string v0, "smartscreen_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 776
    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 777
    const-string v0, "font_menu"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_2e
    move v2, v3

    .line 786
    goto/16 :goto_14

    .line 794
    :cond_2f
    const-string v1, "reading_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 795
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 796
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 797
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_15
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const v5, 0x104000a

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1227
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1228
    const v3, 0x7f04013e

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1229
    const v0, 0x7f0b0147

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1230
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1232
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 1233
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090064

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/DisplaySettings$10;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1280
    :goto_0
    return-object v0

    .line 1247
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$12;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$11;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1271
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090bf9

    new-instance v2, Lcom/android/settings/DisplaySettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$13;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1280
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1194
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1196
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->pause()V

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1215
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1218
    :cond_1
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v0, :cond_2

    .line 1219
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1221
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1222
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1537
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1538
    const-string v4, "screen_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1539
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1541
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    const-string v0, "DisplaySettings"

    const-string v1, "isInDefaultTimeoutList = true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_rollback"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 1556
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1563
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1564
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1565
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1566
    cmp-long v8, v0, v2

    if-eqz v8, :cond_1c

    .line 1567
    cmp-long v8, v0, v4

    if-gez v8, :cond_4

    .line 1569
    :goto_3
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentDeviceLockTimeout: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    int-to-long v2, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 1572
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showScreenTimeDialog()V

    .line 1704
    :cond_2
    :goto_4
    return v6

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1559
    :catch_1
    move-exception v0

    .line 1560
    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 1564
    goto :goto_2

    :cond_4
    move-wide v0, v4

    .line 1567
    goto :goto_3

    .line 1575
    :cond_5
    const-string v2, "font_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, p2

    .line 1577
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    .line 1578
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1579
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_6

    .line 1580
    add-int/lit8 v0, v0, 0x1

    .line 1582
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1583
    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v2, v3, :cond_9

    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_9

    .line 1584
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1588
    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1599
    const-string v3, "pref_font_noti"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1601
    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1602
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 1604
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1605
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_4

    .line 1589
    :cond_9
    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_7

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v0, v2, :cond_7

    .line 1590
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1592
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1594
    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1606
    :cond_a
    const-string v2, "touch_key_light"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1607
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1609
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_key_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1610
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1614
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_4

    .line 1611
    :catch_2
    move-exception v0

    .line 1612
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist Touch key light setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1615
    :cond_b
    const-string v2, "quick_launch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1616
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1618
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_launch_app"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1622
    const-string v0, "DisplaySettings"

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED is broadcasted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 1624
    :catch_3
    move-exception v0

    .line 1625
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist quick launch setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1627
    :cond_c
    const-string v2, "key_backlight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1628
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1630
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 1632
    :catch_4
    move-exception v0

    .line 1633
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist key backlight setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1635
    :cond_d
    const-string v2, "contextualpage_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1636
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v6

    .line 1637
    :goto_7
    if-ne v0, v6, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1638
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 1636
    goto :goto_7

    .line 1640
    :cond_f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 1642
    const-string v1, "changed"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "contextual_page"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1646
    :cond_10
    const-string v1, "changed"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = false"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1652
    :cond_11
    const-string v2, "screensaver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1653
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    .line 1654
    :goto_9
    if-ne v0, v6, :cond_14

    .line 1655
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1658
    const v2, 0x7f0905ad

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1659
    const v2, 0x7f090caa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1660
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DisplaySettings$16;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$16;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1668
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/DisplaySettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$17;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1674
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1675
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    :cond_12
    move v0, v1

    .line 1653
    goto :goto_9

    .line 1677
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "desk_home_screen_display"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1678
    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1679
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_4

    .line 1682
    :cond_14
    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1683
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_4

    .line 1685
    :cond_15
    const-string v2, "reading_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1686
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v6

    .line 1687
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "e_reading_display_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_16
    move v0, v1

    .line 1686
    goto :goto_a

    .line 1689
    :cond_17
    const-string v2, "smartscreen_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 1690
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v6

    .line 1691
    :goto_b
    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 1692
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1693
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1694
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_4

    :cond_18
    move v0, v1

    .line 1690
    goto :goto_b

    .line 1697
    :cond_19
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 1700
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1701
    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v0, v6, :cond_1b

    move v1, v6

    :cond_1b
    invoke-direct {p0, v2, v1}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1c
    move-wide v0, v4

    goto/16 :goto_3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 1720
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v1, :cond_1

    .line 1721
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 1728
    :goto_0
    return v0

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 1728
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1388
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v0}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    .line 1393
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    .line 1395
    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1396
    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 1397
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1398
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1399
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 1407
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1409
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_8

    .line 1410
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1411
    if-nez v0, :cond_2

    .line 1412
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1414
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_7

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1533
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_3
    return v2

    :cond_4
    move v1, v3

    .line 1396
    goto :goto_0

    .line 1408
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_4
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v2, v3

    .line 1414
    goto :goto_1

    .line 1416
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_5
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5

    .line 1418
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    if-ne p2, v0, :cond_11

    .line 1419
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1421
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_f

    .line 1422
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    .line 1423
    if-nez v0, :cond_b

    .line 1424
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1426
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_e

    :goto_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1420
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_7
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_d
    move v2, v3

    goto :goto_7

    :cond_e
    move v2, v3

    .line 1426
    goto :goto_6

    .line 1428
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_8
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_10
    move v2, v3

    goto :goto_8

    .line 1430
    :cond_11
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1431
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1432
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "display_battery_percentage"

    if-eqz v0, :cond_12

    move v3, v2

    :cond_12
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1434
    :cond_13
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1436
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ModePreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1440
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ModePreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1443
    :cond_15
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1444
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1445
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "edit_after_screen_capture"

    if-eqz v0, :cond_16

    move v3, v2

    :cond_16
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1447
    :cond_17
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1448
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1449
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_18

    move v3, v2

    :cond_18
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1452
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    :goto_9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1454
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto/16 :goto_2

    :cond_1a
    move v2, v3

    .line 1453
    goto :goto_9

    .line 1455
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1456
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1457
    if-eqz v0, :cond_1c

    .line 1458
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 1459
    new-instance v0, Lcom/android/settings/DisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$14;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    .line 1469
    :cond_1c
    const-string v0, "persist.sys.font_clarity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClearfont_check_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.font_clarity"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->restartSettings()V

    goto/16 :goto_2

    .line 1474
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1475
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1476
    if-nez v0, :cond_1e

    .line 1477
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1479
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accelerometer_rotation_second"

    if-eqz v0, :cond_1f

    :goto_a
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1f
    move v2, v3

    goto :goto_a

    .line 1480
    :cond_20
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1481
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sub_lcd_auto_lock"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_21
    move v2, v3

    goto :goto_b

    .line 1483
    :cond_22
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1484
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_night_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_23

    :goto_c
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_23
    move v2, v3

    goto :goto_c

    .line 1485
    :cond_24
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1486
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1488
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isEnabledScreenReaderService()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1489
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->showTalkBackDisablePopup()V

    goto/16 :goto_2

    .line 1491
    :cond_25
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "multi_window_enabled"

    if-eqz v0, :cond_26

    :goto_d
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1492
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1493
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1494
    new-instance v1, Lcom/android/settings/DisplaySettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$15;-><init>(Lcom/android/settings/DisplaySettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_26
    move v2, v3

    .line 1491
    goto :goto_d

    .line 1501
    :cond_27
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_28

    :goto_e
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1503
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto/16 :goto_2

    :cond_28
    move v2, v3

    .line 1502
    goto :goto_e

    .line 1504
    :cond_29
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1505
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1506
    const-string v1, "pref_smart_stay_noti"

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 1507
    if-eqz v0, :cond_2b

    .line 1508
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1509
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    .line 1512
    :cond_2a
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 1515
    :cond_2b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "intelligent_sleep_mode"

    if-eqz v0, :cond_2c

    move v3, v2

    :cond_2c
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1517
    :cond_2d
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1519
    const-string v1, "pref_smart_pause_noti"

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 1520
    if-eqz v0, :cond_2f

    .line 1521
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1522
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    .line 1525
    :cond_2e
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 1528
    :cond_2f
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "smart_pause"

    if-eqz v0, :cond_30

    move v3, v2

    :cond_30
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1529
    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1098
    .line 1099
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1100
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1101
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1104
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    .line 1108
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "intelligent_sleep_mode"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1109
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1110
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1111
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1112
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1113
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1114
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1116
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->resume()V

    .line 1118
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v4}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1122
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1123
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 1124
    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1126
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1129
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 1132
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_timeout"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1140
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "contextual_page"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1141
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "e_reading_display_mode"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "e_reading_display_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1145
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1146
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    const-string v4, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1149
    const-string v2, "DisplaySettings"

    const-string v4, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1154
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_c

    .line 1155
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v2}, Lcom/android/settings/BrightnessPreference;->directBrightness()V

    .line 1163
    :cond_2
    :goto_6
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_3

    .line 1164
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accelerometer_rotation_second"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1166
    :cond_3
    sget-boolean v2, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v2, :cond_4

    .line 1167
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "multi_window_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e

    move v2, v3

    :goto_7
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "multi_window_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1170
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "access_control_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->updateAccessControlCheckbox()V

    .line 1174
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1175
    :cond_5
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1180
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 1182
    :goto_8
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10

    move v2, v3

    .line 1185
    :goto_9
    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    .line 1186
    :goto_a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1187
    return-void

    :cond_7
    move v2, v1

    .line 1108
    goto/16 :goto_1

    :cond_8
    move v2, v1

    .line 1109
    goto/16 :goto_2

    :cond_9
    move v2, v1

    .line 1110
    goto/16 :goto_3

    :cond_a
    move v2, v1

    .line 1140
    goto/16 :goto_4

    :cond_b
    move v2, v1

    .line 1141
    goto/16 :goto_5

    .line 1156
    :cond_c
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_d

    .line 1157
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    goto/16 :goto_6

    .line 1158
    :cond_d
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    .line 1159
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto/16 :goto_6

    :cond_e
    move v2, v1

    .line 1167
    goto/16 :goto_7

    :cond_f
    move v0, v1

    .line 1180
    goto :goto_8

    :cond_10
    move v2, v1

    .line 1182
    goto :goto_9

    :cond_11
    move v3, v1

    .line 1185
    goto :goto_a

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    .line 1070
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1072
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    .line 1074
    sget v0, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    .line 1075
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1080
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_1

    .line 1081
    add-int/lit8 v0, v0, 0x1

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1086
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1087
    const v1, 0x7f0a0024

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1090
    :goto_1
    const v3, 0x7f0905b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v0, v1, v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1093
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1089
    :cond_2
    const v1, 0x7f0a0022

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public restartSettings()V
    .locals 6

    .prologue
    .line 1929
    const-string v0, "FontSolution"

    const-string v1, "To Restart = true "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1932
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1934
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1935
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1936
    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1937
    const-string v3, "com.infraware.polarisoffice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice4.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1940
    :cond_1
    const-string v3, "FontSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    FSN package forceStopPackage to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1944
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1945
    const-string v3, "FontSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    FSN Package restart : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1950
    :cond_3
    const-string v1, "FontSolution"

    const-string v2, "kill this package : com.android.settings"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1953
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1955
    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 1734
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1735
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1736
    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1737
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1738
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 1739
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    move-wide v2, v0

    .line 1741
    :goto_1
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxTimeout: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDeviceLockTimeout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1746
    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1749
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1750
    const v1, 0x7f040139

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1751
    const v0, 0x7f0b033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1752
    const v4, 0x7f09006e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1755
    const v0, 0x7f0905a0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1756
    const v0, 0x104000a

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1758
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1759
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1760
    return-void

    :cond_1
    move-wide v0, v2

    .line 1736
    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    .line 1739
    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public showSmartScreenGuideDialog()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2111
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2116
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2118
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2122
    const v1, 0x7f0401b0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2123
    const v0, 0x7f0b0147

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2125
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    array-length v1, v1

    new-array v8, v1, [Landroid/widget/TextView;

    .line 2128
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_stay_noti"

    if-ne v1, v2, :cond_3

    .line 2129
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 2130
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    .line 2131
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    .line 2135
    :goto_0
    const v1, 0x7f0910da

    move v2, v1

    .line 2141
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v9, "pref_smart_stay_noti"

    if-ne v1, v9, :cond_9

    .line 2143
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v3

    .line 2144
    aget-object v1, v8, v3

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v3, v9, v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2146
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v4

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v4

    .line 2147
    const-string v1, ""

    .line 2148
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_5

    move v3, v4

    .line 2149
    :goto_2
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_7

    .line 2150
    if-eq v3, v4, :cond_1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_4

    .line 2151
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2149
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2133
    :cond_2
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    goto :goto_0

    .line 2136
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_pause_noti"

    if-ne v1, v2, :cond_b

    .line 2137
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 2138
    const v1, 0x7f0910e7

    move v2, v1

    goto :goto_1

    .line 2153
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move v3, v4

    .line 2157
    :goto_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_7

    .line 2158
    if-ne v3, v4, :cond_6

    .line 2159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2157
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2161
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 2165
    :cond_7
    aget-object v3, v8, v4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2183
    :cond_8
    :goto_6
    const v1, 0x7f0b014f

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 2185
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2186
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2188
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$26;

    invoke-direct {v2, p0, v6, v0}, Lcom/android/settings/DisplaySettings$26;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2195
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2196
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2197
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/DisplaySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$27;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2202
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->startAnimation()V

    .line 2203
    return-void

    .line 2166
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v9, "pref_smart_pause_noti"

    if-ne v1, v9, :cond_8

    .line 2168
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v3

    .line 2169
    aget-object v1, v8, v3

    const v3, 0x7f091101

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v4

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v4

    .line 2172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f091102

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091103

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091104

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091105

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2176
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_a

    .line 2177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f09170d

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2179
    :cond_a
    aget-object v3, v8, v4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_b
    move v2, v3

    goto/16 :goto_1
.end method

.method public showSmartScreenGuideDialogForScroll()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2207
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2209
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2212
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2214
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2218
    const v1, 0x7f0401b1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2219
    const v1, 0x7f0b045e

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f091109

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v2, 0x7f09110a

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f09110b

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f09110c

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v2, 0x7f09110d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f09110e

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2227
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    const v1, 0x7f0b045f

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2231
    new-instance v6, Lcom/android/settings/HelpItem;

    invoke-direct {v6, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 2232
    const v2, 0x7f091118

    invoke-virtual {v6, v2}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 2233
    const v2, 0x7f09110f

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 2234
    const v2, 0x7f020490

    invoke-virtual {v6, v2}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 2235
    invoke-virtual {v6, v7}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 2236
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2238
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 2239
    const v0, 0x7f091117

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 2240
    const v0, 0x7f091110

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 2241
    const v0, 0x7f02048f

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 2242
    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 2243
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2245
    const v0, 0x7f0b0460

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f091111

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091112

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091113

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091114

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09170d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2254
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    const v0, 0x7f0b0461

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2258
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2259
    const v1, 0x7f0910e9

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2261
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$28;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/settings/DisplaySettings$28;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2268
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2269
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2270
    return-void
.end method

.method public updateAccessControlCheckbox()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1373
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1374
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    .line 1377
    :goto_1
    sget-boolean v4, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v4, :cond_0

    .line 1378
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1382
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1383
    return-void

    :cond_1
    move v0, v2

    .line 1373
    goto :goto_0

    :cond_2
    move v3, v2

    .line 1374
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1378
    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1347
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1348
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1350
    sget v0, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    .line 1351
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1357
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1358
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 1360
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1361
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 1370
    :goto_0
    return-void

    .line 1363
    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
