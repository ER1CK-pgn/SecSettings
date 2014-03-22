.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static KEY_ASSISTANT_MENU:Ljava/lang/String;

.field private static KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

.field private static KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

.field private static KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

.field private static final LARGE_FONT_SCALE:F

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private MobilityCategory:Landroid/preference/PreferenceCategory;

.field private RecognitionCategory:Landroid/preference/PreferenceCategory;

.field private checkSetupWizard:Z

.field private endPowerKeyEndChecked:Z

.field private isDeviceLockTime:Z

.field private isSecuredLock:Z

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

.field private mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mAudioCategory:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

.field private mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mColorBlind:Landroid/preference/SwitchPreferenceScreen;

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mFlashNotification:Landroid/database/ContentObserver;

.field private mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

.field private mLcdCurtain:Landroid/preference/CheckBoxPreference;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMagnification:Landroid/database/ContentObserver;

.field private mManageAccessibility:Z

.field private mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

.field private mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mPowerKeyHold:Landroid/preference/PreferenceScreen;

.field private mRotation2ndObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

.field private mSpokenServiceAvailble:Z

.field private mStartFromSearch:Z

.field mSupportFolderType:Z

.field private mSystemsCategory:Landroid/preference/PreferenceScreen;

.field private mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisionCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "notification_preference"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettings;->LARGE_FONT_SCALE:F

    .line 166
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    .line 213
    const-string v0, "assistant_menu_preference"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    .line 216
    const-string v0, "share_acc_setting_menu"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    .line 217
    const-string v0, "call_hearing_aid"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    .line 266
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 252
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSpokenServiceAvailble:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 274
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 322
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 332
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 372
    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 373
    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 379
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    .line 449
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    .line 451
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 465
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    .line 477
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 489
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 501
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    .line 511
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFlashNotificationSettingsScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/accessibility/AccessibilitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/settings/accessibility/AccessibilitySettings;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSettingsScreen()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private disableUnusableLockTimeouts(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2531
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2532
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2533
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2534
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "screen_off_timeout"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    move v0, v1

    .line 2539
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 2540
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2541
    cmp-long v7, v7, p1

    if-gtz v7, :cond_0

    .line 2542
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2543
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2548
    :cond_1
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, p1, v7

    .line 2550
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 2552
    const v0, 0x7f091137

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2553
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2557
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2559
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2561
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2562
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 2563
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2572
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2574
    return-void

    .line 2565
    :cond_4
    const-string v0, "AccessibilitySettings"

    const-string v3, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method private disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V
    .locals 12
    .parameter

    .prologue
    .line 2308
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2311
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2312
    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2317
    const v2, 0x927c0

    .line 2321
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2322
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_a

    .line 2323
    int-to-long v0, v2

    move-wide v2, v0

    .line 2327
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 2389
    :goto_2
    return-void

    .line 2311
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2331
    :cond_1
    const/4 v1, -0x1

    .line 2332
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2333
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 2334
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 2337
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2338
    cmp-long v10, v8, v2

    if-gtz v10, :cond_2

    .line 2339
    aget-object v10, v4, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2340
    aget-object v10, v5, v0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-gtz v8, :cond_2

    .line 2345
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    move v1, v0

    .line 2336
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2351
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

    invoke-direct {p0, v8, v9}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2352
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2353
    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2354
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2358
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 2359
    :cond_5
    const v0, 0x7f091137

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2374
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2376
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2377
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_8

    .line 2378
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2388
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 2362
    :cond_7
    const-string v0, "AccessibilitySettings"

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

    .line 2363
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

    .line 2364
    const-string v4, "AccessibilitySettings"

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

    .line 2365
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

    .line 2366
    const v0, 0x7f091137

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2367
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2380
    :cond_8
    const-string v0, "AccessibilitySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 2388
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_a
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

    .line 1145
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1146
    div-long v2, v0, v4

    .line 1147
    rem-long v4, v0, v4

    .line 1149
    const-string v0, ""

    .line 1150
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

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

    .line 1153
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

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

    .line 1160
    :cond_2
    const-string v1, "AccessibilitySettings"

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

    .line 1161
    return-object v0
.end method

.method private handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1559
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1560
    const-string v3, "title"

    const v4, 0x7f0908b4

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0908b6

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0908b7

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1566
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1567
    return-void

    :cond_0
    move v0, v1

    .line 1564
    goto :goto_0
.end method

.method private handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f09089a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1543
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1544
    const-string v3, "title"

    const v4, 0x7f090899

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1547
    :cond_0
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09089c

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :goto_0
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1555
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1556
    return-void

    .line 1550
    :cond_1
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09089b

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1553
    goto :goto_1
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1497
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1499
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_4

    .line 1500
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1501
    if-nez v2, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1508
    :goto_1
    return-void

    .line 1498
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1504
    goto :goto_0

    .line 1506
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1532
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1533
    const-string v3, "title"

    const v4, 0x7f09089d

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v3, "summary"

    const v4, 0x7f0908a0

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1539
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1540
    return-void

    :cond_0
    move v0, v1

    .line 1537
    goto :goto_0
.end method

.method private handleToggleAutoRotateScreen2ndPreferenceClick()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1511
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1512
    .local v0, value:Z
    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1515
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    return-void
.end method

.method private handleToggleEasyInteractionPreferenceClick()V
    .locals 3

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_interaction"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1528
    return-void

    .line 1526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1522
    return-void

    .line 1519
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 11

    .prologue
    const v6, 0x7f09006a

    const/16 v10, 0x1a

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1571
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    .line 1577
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 1578
    const-string v0, "mobility_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->MobilityCategory:Landroid/preference/PreferenceCategory;

    .line 1579
    const-string v0, "Recognition_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    .line 1581
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 1582
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1583
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1585
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 1589
    :cond_0
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 1591
    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1597
    :cond_2
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 1599
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1600
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1604
    :cond_3
    const-string v0, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    .line 1608
    const-string v0, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    .line 1612
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1614
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1615
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0910bd

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1622
    :cond_5
    :goto_0
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 1623
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1625
    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_6

    .line 1626
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1627
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f0a001a

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1630
    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1631
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1632
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 1633
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1636
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_after_timeout"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 1638
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_7

    .line 1639
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1645
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setupLockAfterPreference()V

    .line 1646
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 1648
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1649
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1652
    :cond_8
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 1653
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1656
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 1657
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1660
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    .line 1663
    const-string v0, "old_select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 1665
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1666
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1667
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1669
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 1670
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a006d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1672
    array-length v5, v1

    move v0, v3

    .line 1673
    :goto_1
    if-ge v0, v5, :cond_a

    .line 1674
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v1, v0

    aget-object v8, v4, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1617
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0910bc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1679
    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1685
    const-string v0, "google_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 1686
    const-string v0, "samsung_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 1687
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1690
    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eq v0, v2, :cond_c

    .line 1694
    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1697
    :cond_c
    const-string v0, "vision_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    .line 1698
    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1701
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 1703
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1704
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1708
    :cond_d
    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    .line 1713
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1717
    const-string v0, "lcd_curtain"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    .line 1719
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1723
    const-string v0, "haptic_feedback_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 1725
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1730
    const-string v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1731
    const-string v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    .line 1732
    const-string v0, "all_sound_off_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1733
    const-string v0, "flash_notification_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1734
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    .line 1739
    const-string v0, "audio_balance"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AudioBalancePreference;

    .line 1740
    const-string v1, "tts_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 1742
    const-string v1, "call_answering_ending"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    .line 1743
    const-string v1, "power_key_hold"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    .line 1746
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 1750
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1754
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    .line 1759
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1762
    const-string v1, "access_control_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 1763
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1766
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    .line 1771
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0004

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1772
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1773
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1774
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1775
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1776
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1777
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1778
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1779
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1780
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1781
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1782
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1785
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1786
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1789
    :cond_f
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_10

    .line 1790
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1791
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_captioning_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1795
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v2, :cond_12

    .line 1796
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1798
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lcd_curtain"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1800
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1802
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1804
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "all_sound_off"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1806
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "flash_notification"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1808
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hearing_aid"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1813
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_use"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1815
    const-string v0, "AccessibilitySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeAllPreferences : ACCESS_CONTROL_USE :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1823
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_sec_captioning_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    :goto_b
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1834
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1841
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    .line 1842
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_12

    .line 1843
    :cond_11
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1899
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    .line 1900
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v0, v2, :cond_13

    .line 1901
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1903
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1904
    invoke-virtual {v0, v9, v9}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1912
    const/high16 v1, 0x1e4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1920
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_d
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    .line 1921
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_20

    .line 1922
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 1923
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0913c0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1927
    :goto_e
    return-void

    :cond_14
    move v0, v3

    .line 1791
    goto/16 :goto_2

    :cond_15
    move v0, v3

    .line 1796
    goto/16 :goto_3

    :cond_16
    move v0, v3

    .line 1798
    goto/16 :goto_4

    :cond_17
    move v0, v3

    .line 1800
    goto/16 :goto_5

    :cond_18
    move v0, v3

    .line 1802
    goto/16 :goto_6

    :cond_19
    move v0, v3

    .line 1804
    goto/16 :goto_7

    :cond_1a
    move v0, v3

    .line 1806
    goto/16 :goto_8

    :cond_1b
    move v0, v3

    .line 1808
    goto/16 :goto_9

    :cond_1c
    move v0, v3

    .line 1813
    goto/16 :goto_a

    :cond_1d
    move v0, v3

    .line 1823
    goto/16 :goto_b

    :cond_1e
    move v0, v3

    .line 1841
    goto :goto_c

    :cond_1f
    move v2, v3

    .line 1920
    goto :goto_d

    .line 1925
    :cond_20
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_e
.end method

.method private isInDefaultLockTimeoutList(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, values:[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1119
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1120
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1123
    :goto_2
    return v2

    .line 1116
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1119
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1123
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private isInDefaultScreenTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1128
    .line 1129
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1136
    :goto_0
    if-nez v2, :cond_2

    .line 1141
    :cond_0
    :goto_1
    return v1

    .line 1132
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1138
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1139
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1138
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isTalkbackAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1931
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1932
    :catch_0
    move-exception v1

    .line 1933
    const-string v1, "AccessibilitySettings"

    const-string v2, "Screen reader does not installed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 3185
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 3186
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 3188
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 3191
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 3206
    :cond_0
    return-void

    .line 3195
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 3196
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3197
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 3198
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3202
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 3203
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSpokenServiceAvailble:Z

    .line 3196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2603
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v0, v3, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2606
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2607
    const-string v0, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2609
    :goto_1
    if-eqz v0, :cond_0

    .line 2610
    const-string v0, "ro.screenreader.market"

    const-string v4, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2613
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2614
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2616
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2621
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2625
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2607
    goto :goto_1
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 18
    .parameter "screenTimeoutPreference"

    .prologue
    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2396
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 2397
    .local v6, maxTimeout:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2399
    .local v1, currentTimeout:J
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2400
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 2401
    .local v13, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2402
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2403
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v13

    if-ge v5, v14, :cond_2

    .line 2404
    aget-object v14, v13, v5

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2406
    .local v10, timeout:J
    cmp-long v14, v10, v6

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v14

    if-nez v14, :cond_1

    cmp-long v14, v1, v10

    if-eqz v14, :cond_1

    .line 2403
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2396
    .end local v1           #currentTimeout:J
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #maxTimeout:J
    .end local v8           #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9           #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #timeout:J
    .end local v13           #values:[Ljava/lang/CharSequence;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 2409
    .restart local v1       #currentTimeout:J
    .restart local v4       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #i:I
    .restart local v6       #maxTimeout:J
    .restart local v8       #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v9       #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v10       #timeout:J
    .restart local v13       #values:[Ljava/lang/CharSequence;
    :cond_1
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2413
    .end local v10           #timeout:J
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2415
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2417
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2418
    .local v12, userPreference:I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2419
    return-void
.end method

.method private setTapAndHoldDelaySummary()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 2212
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2216
    .local v0, currentLongPressTimeout:I
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    .line 2217
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2237
    :goto_0
    return-void

    .line 2221
    :cond_0
    if-ne v0, v3, :cond_1

    .line 2222
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2226
    :cond_1
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_2

    .line 2227
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2232
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 2461
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2463
    .local v2, currentLockTimeout:J
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2464
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2465
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2466
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 2468
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 2474
    iget-boolean v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0           #adminTimeout:J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->disableUnusableLockTimeouts(J)V

    .line 2477
    :cond_0
    return-void

    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 2465
    goto :goto_0

    .line 2474
    .restart local v0       #adminTimeout:J
    .restart local v4       #displayTimeout:J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3252
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3255
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 3257
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 2017
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDefaultPreferences()V

    .line 2018
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 2020
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateVisionPreferences()V

    .line 2021
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMobilityPreferences()V

    .line 2022
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateRecognitionPreferences()V

    .line 2023
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2028
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 2031
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation_second"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2033
    .local v0, autoRotation2ndEnabled:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2036
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setupLockAfterPreference()V

    .line 2037
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 2038
    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1191
    const-string v0, "AccessibilitySettings"

    const-string v1, "TalkbackOnChagne "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1194
    const-string v1, "AccessibilitySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1198
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1200
    :cond_0
    return-void
.end method

.method private updateFlashNotificationSettingsScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1181
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1183
    .local v0, flashSettingValue:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1184
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1188
    :goto_1
    return-void

    .end local v0           #flashSettingValue:Z
    :cond_0
    move v0, v2

    .line 1181
    goto :goto_0

    .line 1186
    .restart local v0       #flashSettingValue:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter

    .prologue
    .line 3233
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 3234
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3238
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 3239
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3240
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3243
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3244
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 3245
    return-void
.end method

.method private updateGoogleCaptionSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1082
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_captioning_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_captioning_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1088
    :goto_1
    if-eqz v1, :cond_3

    .line 1089
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0908c9

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 1094
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1083
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1086
    goto :goto_1

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0908ca

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 2483
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 2484
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2485
    const/4 v1, 0x0

    .line 2486
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 2487
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2488
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v1, v0

    .line 2486
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2494
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v8, v0

    .line 2496
    const-wide/16 v10, 0x0

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2500
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_4

    const v0, 0x7f09006b

    .line 2501
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_5

    const v2, 0x7f09006c

    .line 2504
    :goto_4
    aget-object v3, v7, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_7

    cmp-long v3, v10, v4

    if-gez v3, :cond_7

    .line 2505
    const-string v3, "AccessibilitySettings"

    const-string v4, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_6

    cmp-long v3, v10, v8

    if-gez v3, :cond_6

    .line 2508
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2528
    :goto_5
    return-void

    .line 2493
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 2496
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 2500
    :cond_4
    const v0, 0x7f0901c5

    goto :goto_3

    .line 2501
    :cond_5
    const v2, 0x7f091136

    goto :goto_4

    .line 2510
    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2515
    :cond_7
    if-nez v1, :cond_8

    .line 2516
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2518
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->isInDefaultLockTimeoutList(J)Z

    move-result v2

    if-eqz v2, :cond_a

    cmp-long v2, v4, v10

    if-ltz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_a

    .line 2519
    :cond_9
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2521
    :cond_a
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 2577
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2578
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2579
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2582
    :cond_0
    return-void

    .line 2579
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateManageAccessibilityMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1204
    const-string v0, "AccessibilitySettings"

    const-string v1, "updateManageAccessibilityMenu() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1207
    const-string v1, "importNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 1209
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1214
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateMobilityPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2175
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setTapAndHoldDelaySummary()V

    .line 2177
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setTapAndHoldDelaySummary()V

    .line 2188
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assistant_menu"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2190
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_interaction"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2193
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2197
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2199
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2200
    const-string v2, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentScreenTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 2202
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 2203
    return-void

    :cond_1
    move v0, v2

    .line 2188
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2190
    goto :goto_1
.end method

.method private updateRecognitionPreferences()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2207
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2208
    return-void

    :cond_0
    move v0, v1

    .line 2207
    goto :goto_0
.end method

.method private updateSamsungCaptionSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1097
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_sec_captioning_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_sec_captioning_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1102
    :goto_1
    if-eqz v1, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0908c9

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 1107
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1097
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1100
    goto :goto_1

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0908ca

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2
.end method

.method private updateServicesPreferences()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2046
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 2048
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 2050
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 2052
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 2055
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 2058
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 2059
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2061
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 2063
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2065
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2066
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 2071
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 2072
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 2074
    :goto_2
    if-eqz v4, :cond_4

    .line 2075
    const v12, 0x7f0908c9

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2080
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 2081
    const-class v12, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 2084
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 2085
    const-string v13, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const-string v13, "checked"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2087
    const-string v4, "title"

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 2090
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2091
    const v4, 0x7f0908fd

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2093
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v12, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 2096
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2097
    const-string v10, "settings_title"

    const v13, 0x7f0908aa

    invoke-virtual {p0, v13}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v10, "settings_component_name"

    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_1
    const-string v0, "component_name"

    invoke-virtual {v12, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2106
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 2058
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 2055
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 2072
    goto/16 :goto_2

    .line 2077
    :cond_4
    const v12, 0x7f0908ca

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2109
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 2110
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 2111
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$15;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 2120
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 2121
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f0401bb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 2123
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 2125
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 2127
    :cond_7
    return-void
.end method

.method private updateSettingsScreen()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1166
    const-string v0, "AccessibilitySettings"

    const-string v3, "onChange() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1169
    :goto_0
    const-string v3, "AccessibilitySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCESS_CONTROL_ENABLED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1178
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1167
    goto :goto_0

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 11
    .parameter

    .prologue
    .line 2241
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 2242
    const-wide/16 v4, -0x1

    .line 2244
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2246
    const-string v0, ""

    move-object v1, v0

    move-wide v2, v4

    .line 2288
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2289
    if-eqz v0, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 2290
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "lock_screen_lock_after_timeout"

    const-wide/16 v9, 0x1388

    invoke-static {v0, v6, v9, v10}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2291
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_e

    .line 2292
    cmp-long v0, v4, v6

    if-gez v0, :cond_c

    .line 2294
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v0, :cond_d

    cmp-long v0, v2, v4

    if-lez v0, :cond_d

    .line 2295
    const v0, 0x7f09006d

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2296
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2302
    :cond_0
    :goto_3
    return-void

    .line 2248
    :cond_1
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 2249
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2250
    const/4 v1, 0x0

    .line 2251
    const/4 v0, 0x0

    :goto_4
    array-length v2, v7

    if-ge v0, v2, :cond_3

    .line 2252
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2253
    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    move v1, v0

    .line 2251
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2259
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2260
    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2262
    :goto_5
    array-length v0, v6

    if-eqz v0, :cond_4

    array-length v0, v7

    if-nez v0, :cond_6

    .line 2263
    :cond_4
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-wide v2, v4

    goto/16 :goto_0

    .line 2260
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_5

    .line 2266
    :cond_6
    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    cmp-long v0, v2, p1

    if-gez v0, :cond_7

    .line 2267
    const-string v0, "AccessibilitySettings"

    const-string v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2269
    goto/16 :goto_0

    .line 2271
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_9

    cmp-long v0, p1, v2

    if-ltz v0, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 2272
    :cond_8
    const v0, 0x7f0905a1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v6, v1

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object v1, v0

    goto/16 :goto_0

    .line 2275
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    .line 2276
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-wide v2, p1

    .line 2277
    goto/16 :goto_0

    .line 2279
    :cond_a
    const v0, 0x7f0905a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2280
    goto/16 :goto_0

    .line 2289
    :cond_b
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    :cond_c
    move-wide v4, v6

    .line 2292
    goto/16 :goto_2

    .line 2299
    :cond_d
    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_e
    move-wide v4, v6

    goto/16 :goto_2
.end method

.method private updateVisionPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2131
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2136
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 2138
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 2144
    :goto_1
    if-eqz v0, :cond_5

    .line 2145
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2151
    :goto_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2153
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSpokenServiceAvailble:Z

    if-nez v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 2161
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2164
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2168
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 2170
    :goto_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 2171
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2172
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 2136
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2142
    goto :goto_1

    .line 2147
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 2151
    goto :goto_3

    :cond_7
    move v0, v2

    .line 2161
    goto :goto_4

    :cond_8
    move v1, v2

    .line 2168
    goto :goto_5
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1951
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1952
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1953
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1954
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1955
    add-int/lit8 v0, v1, -0x1

    .line 1959
    :goto_2
    return v0

    .line 1945
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1948
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1952
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 1959
    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 554
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1071
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1072
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b5

    if-ne p1, v0, :cond_0

    .line 1073
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1074
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_COLORBLIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->finish()V

    .line 1079
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 527
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 532
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 535
    const-string v2, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_secured_lock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isSecuredLock:Z

    .line 539
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 540
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 542
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 545
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 547
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    .line 550
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 536
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v9, 0x104

    const v8, 0x104000a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2686
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 3180
    :goto_0
    return-object v0

    .line 2689
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2690
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2691
    const v1, 0x7f04013e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2692
    const v1, 0x7f04013d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2693
    const v0, 0x7f0b0147

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2694
    const v1, 0x7f0b0354

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2695
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2697
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 3180
    goto :goto_0

    .line 2699
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$16;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 2728
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$17;

    invoke-direct {v2, p0, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettings$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2741
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$20;

    invoke-direct {v2, p0, v5, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$18;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2772
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090918

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090919

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$23;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$22;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$21;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$21;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2808
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09091a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09091b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$26;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$26;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$25;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$25;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$24;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$24;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2863
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$28;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$28;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$27;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2892
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2893
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$30;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$30;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$29;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$29;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2925
    :pswitch_7
    const-string v1, ""

    .line 2926
    const-string v0, ""

    .line 2927
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2928
    const v0, 0x7f0908ae

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2929
    const v0, 0x7f0908b1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2937
    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$33;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$33;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$32;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$32;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$31;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$31;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2930
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 2931
    const v0, 0x7f0908b0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2932
    const v0, 0x7f0908b3

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2933
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2934
    const v0, 0x7f0908af

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2935
    const v0, 0x7f0908b2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2987
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$36;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$36;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$35;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$35;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$34;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$34;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3021
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090bf9

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$37;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$37;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3029
    :pswitch_a
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3039
    const v0, 0x7f0908be

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3042
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0908bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$40;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$40;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$39;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$39;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$38;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$38;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3031
    :cond_4
    const v0, 0x7f090899

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0908bf

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090fa1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090deb

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3105
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3106
    new-array v1, v2, [Z

    .line 3107
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    :goto_3
    aput-boolean v0, v1, v3

    .line 3108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090d7b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0a00e2

    new-array v2, v2, [Z

    aget-boolean v5, v1, v3

    aput-boolean v5, v2, v3

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$44;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$44;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f091426

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$43;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$43;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$42;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$42;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$41;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$41;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 3107
    goto :goto_3

    .line 3141
    :cond_6
    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 3142
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    :goto_4
    aput-boolean v0, v1, v3

    .line 3143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "talkback_power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    :goto_5
    aput-boolean v0, v1, v2

    .line 3144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090d7b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0a00e1

    const/4 v5, 0x2

    new-array v5, v5, [Z

    aget-boolean v6, v1, v3

    aput-boolean v6, v5, v3

    aget-boolean v3, v1, v2

    aput-boolean v3, v5, v2

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$48;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$48;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f091426

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$47;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$47;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$46;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$46;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$45;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$45;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 3142
    goto :goto_4

    :cond_8
    move v0, v3

    .line 3143
    goto :goto_5

    .line 2697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 746
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 758
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 762
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 763
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0908ca

    const v4, 0x7f0908c9

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    check-cast p2, Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1065
    :goto_0
    return v1

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 790
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->floatToIndex(F)I

    move-result v0

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 792
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_1

    .line 793
    add-int/lit8 v0, v0, 0x1

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ge v2, v3, :cond_4

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_4

    .line 797
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    const-string v2, "AccessibilitySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 810
    const-string v3, "pref_font_noti"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 812
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 813
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    .line 815
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 801
    :cond_4
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ge v0, v2, :cond_2

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 805
    const-string v2, "AccessibilitySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 820
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 821
    const-string v0, "AccessibilitySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_SCREEN_TIMEOUT / value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    const-string v0, "AccessibilitySettings"

    const-string v1, "isInDefaultScreenTimeoutList = true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_rollback"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 834
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 835
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 839
    :goto_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 842
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_8

    .line 843
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 844
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 850
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setupLockAfterPreference()V

    .line 851
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 854
    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 855
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 856
    cmp-long v8, v0, v2

    if-eqz v8, :cond_30

    .line 857
    cmp-long v8, v0, v4

    if-gez v8, :cond_a

    .line 860
    :goto_6
    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v4, :cond_7

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    int-to-long v2, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showScreenTimeDialog()V

    :cond_7
    :goto_7
    move v1, v6

    .line 1065
    goto/16 :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    const-string v1, "AccessibilitySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 836
    :catch_1
    move-exception v0

    .line 837
    const-string v1, "AccessibilitySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 846
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 847
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_9
    move-wide v0, v2

    .line 854
    goto :goto_5

    :cond_a
    move-wide v0, v4

    .line 857
    goto :goto_6

    .line 864
    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 865
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 867
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 871
    :goto_8
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->setupLockAfterPreference()V

    .line 872
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 875
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v0, :cond_7

    .line 876
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 877
    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 878
    if-eqz v1, :cond_7

    int-to-long v0, v1

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDeviceLockDialog()V

    goto :goto_7

    .line 868
    :catch_2
    move-exception v0

    .line 869
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 882
    :cond_c
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 884
    check-cast p2, Ljava/lang/Boolean;

    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 889
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 892
    const-string v0, "AccessibilitySettings"

    const-string v2, "AssistantMenu Service Start!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 895
    :cond_d
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 897
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 898
    const-string v0, "AccessibilitySettings"

    const-string v2, "AssistantMenu Service Stop!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 902
    :cond_f
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 904
    check-cast p2, Ljava/lang/Boolean;

    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.NotificationReminder"

    const-string v4, "com.samsung.android.app.notificationreminder.settings.NotificationReminderService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    .line 919
    const-string v2, "notification reminder"

    const-string v3, "Time interval value has not been set yet"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    const/16 v4, 0x12c

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 925
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 927
    const-string v0, "Notification Reminder"

    const-string v2, "NotificationReminder Service Start!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_b
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 922
    :cond_10
    const-string v2, "notification reminder"

    const-string v3, "Time interval value has already been set and written to DB"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 930
    :cond_11
    const-string v0, "AccessibilitySettings"

    const-string v2, "Notification Reminder service could not start"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 934
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 936
    const-string v0, "NotificationReminder"

    const-string v2, "NotificationReminder Service Stop!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    move v0, v6

    .line 939
    goto :goto_b

    .line 942
    :cond_14
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 943
    check-cast p2, Ljava/lang/Boolean;

    .line 945
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 946
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 947
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 951
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind_test"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    .line 952
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.colorblind"

    const-string v4, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 954
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v2, v1, :cond_16

    .line 955
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    :cond_16
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 958
    const-string v2, "fromAccessibility"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 959
    const/16 v2, 0x6b5

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 961
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 965
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 968
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_0

    .line 972
    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ACTION_COLORBLIND_SWITCH_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 979
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1c

    .line 980
    check-cast p2, Ljava/lang/Boolean;

    .line 982
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 983
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 985
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 989
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 990
    check-cast p2, Ljava/lang/Boolean;

    .line 992
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 993
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "air_view_master_onoff"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    .line 999
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1006
    :cond_1d
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1f

    :cond_1e
    move v0, v1

    .line 1011
    :cond_1f
    if-ne v0, v1, :cond_20

    .line 1012
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    .line 1014
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21

    move v6, v1

    :cond_21
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1015
    const-string v0, "AccessibilitySettings"

    const-string v2, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED Use : 1"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 996
    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "finger_air_view"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    .line 997
    goto :goto_c

    .line 1000
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_writing_buddy"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    .line 1001
    goto :goto_d

    .line 1017
    :cond_24
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1018
    check-cast p2, Ljava/lang/Boolean;

    .line 1019
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_accessibility_global_gesture_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    move v6, v1

    :cond_25
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1022
    :cond_26
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_2b

    .line 1023
    check-cast p2, Ljava/lang/Boolean;

    .line 1025
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_27

    .line 1027
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1028
    :cond_27
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1029
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1031
    :cond_28
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    const-string v0, "AccessibilitySettings"

    const-string v2, "Access Control Use : 1"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1036
    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 1037
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1039
    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1040
    const-string v0, "AccessibilitySettings"

    const-string v2, "Access Control Use : 0"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1044
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1045
    check-cast p2, Ljava/lang/Boolean;

    .line 1046
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1047
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_captioning_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1048
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 1050
    :cond_2c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_captioning_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1051
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 1054
    :cond_2d
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1055
    check-cast p2, Ljava/lang/Boolean;

    .line 1056
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_sec_captioning_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 1060
    :cond_2e
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_sec_captioning_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_2f
    move v0, v6

    goto/16 :goto_c

    :cond_30
    move-wide v0, v4

    goto/16 :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 767
    const-string v0, "AccessibilitySettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v0, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    .line 771
    const/4 v0, 0x1

    .line 776
    :goto_0
    return v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 776
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1219
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 1221
    sget v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1222
    sget v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 1223
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1224
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1225
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1233
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1240
    if-ne v0, v2, :cond_3

    .line 1242
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1245
    if-nez v0, :cond_2

    .line 1247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 1248
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0910be

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$14;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907a0

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1475
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 1222
    goto :goto_0

    .line 1278
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1281
    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 1282
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1285
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1288
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 1289
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1292
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_1

    .line 1295
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1296
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleAutoRotateScreen2ndPreferenceClick()V

    goto :goto_1

    .line 1298
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1299
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_1

    .line 1301
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1302
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleEasyInteractionPreferenceClick()V

    goto :goto_1

    .line 1304
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 1307
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1308
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 1310
    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1311
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 1313
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    .line 1446
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1447
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1448
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_25

    .line 1449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1450
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 1451
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1452
    const-string v4, "extra_from_search"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1453
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1457
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1458
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1459
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1460
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    .line 1471
    :cond_c
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    .line 1475
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1

    .line 1315
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1316
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 1318
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1319
    :catch_0
    move-exception v0

    .line 1321
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1325
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 1328
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1329
    :catch_1
    move-exception v0

    .line 1331
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1334
    :cond_10
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mono_audio_db"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1338
    const-string v1, "mono"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1345
    const-string v0, "AccessibilitySettings"

    const-string v1, "Mono Audio broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1340
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mono_audio_db"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1341
    const-string v1, "mono"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 1346
    :cond_12
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1349
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "all_sound_off"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    const-string v1, "mute"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1365
    const-string v0, "AccessibilitySettings"

    const-string v1, "All sound off broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1360
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "all_sound_off"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1361
    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 1366
    :cond_14
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1367
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1368
    const-string v1, "pref_flash_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1370
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "flash_notification"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1371
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1373
    :cond_15
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1374
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1378
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1394
    :cond_17
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1395
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    move v1, v2

    .line 1396
    :goto_6
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hearing_aid"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1398
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v0, "ON"

    :goto_7
    invoke-virtual {v4, v5, v0}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_18
    move v1, v3

    .line 1395
    goto :goto_6

    .line 1398
    :cond_19
    const-string v0, "OFF"

    goto :goto_7

    .line 1399
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v4, "com.android.phone.callsettings.AnsweringCall"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1405
    const-string v1, "FROM_ACCESSIBILITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1408
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1409
    goto/16 :goto_1

    .line 1410
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 1413
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1414
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-nez v0, :cond_1d

    .line 1415
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const-string v1, "com.android.settings.colorblind.ColorChipReport"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1417
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.colorblind"

    const-string v5, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1419
    const-string v1, "toStartActivity"

    const-string v4, "fromSetting"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v1, v2, :cond_1e

    .line 1421
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1423
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1425
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1426
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1427
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1429
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1431
    :cond_21
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1432
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const-class v1, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1433
    :cond_22
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1434
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1435
    :cond_23
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1436
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    const-string v1, "com.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1437
    :cond_24
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1439
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.videoplayer.ACTION_START_CC_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.videoplayer"

    const-string v5, "com.sec.android.app.videoplayer.activity.SubtitleSetting"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1462
    :cond_25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1463
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1464
    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1467
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1468
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 581
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    iget-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    if-eqz v7, :cond_0

    .line 583
    iget-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 586
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 587
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 590
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 592
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v7, v10, v11, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 593
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v7, v10}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "flash_notification"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 602
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateExclusiveTalkback()V

    .line 604
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSettingsScreen()V

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_display_magnification_enabled"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "color_blind"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "high_contrast"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_display_magnification_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v3, v8

    .line 614
    .local v3, magnificationEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "high_contrast"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v4, v8

    .line 616
    .local v4, negativeColorEnabled:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "color_blind"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v8

    .line 618
    .local v0, colorBlindEnabled:Z
    :goto_3
    if-eqz v3, :cond_a

    .line 619
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 623
    :goto_4
    if-eqz v4, :cond_b

    .line 624
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 628
    :goto_5
    if-eqz v0, :cond_c

    .line 629
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 634
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0c0004

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 635
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "high_contrast"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 637
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "lcd_curtain"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_e

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 639
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "haptic_feedback_enabled"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 641
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "mono_audio_db"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_10

    move v7, v8

    :goto_a
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "all_sound_off"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_11

    move v7, v8

    :goto_b
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 645
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "flash_notification"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_12

    move v7, v8

    :goto_c
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 647
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "hearing_aid"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_13

    move v7, v8

    :goto_d
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 651
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "accessibility_display_magnification_enabled"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_14

    move v7, v8

    :goto_e
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 654
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "assistant_menu"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_15

    move v7, v8

    :goto_f
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 658
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "notification_reminder"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_16

    move v7, v8

    :goto_10
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "color_blind"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "color_blind_test"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_17

    move v7, v8

    :goto_11
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 665
    .local v1, colorBlind_switch_check:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 667
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "access_control_use"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_18

    move v7, v8

    :goto_12
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 669
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSamsungCaptionSwitch()V

    .line 672
    .end local v1           #colorBlind_switch_check:Ljava/lang/Boolean;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateGoogleCaptionSwitch()V

    .line 674
    iget-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v7, :cond_3

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accelerometer_rotation_second"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 681
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateManageAccessibilityMenu()V

    .line 685
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 686
    iget-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    if-eqz v7, :cond_5

    .line 687
    iget-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 688
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 689
    iput-boolean v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mStartFromSearch:Z

    .line 690
    sget v7, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    if-eq v7, v12, :cond_5

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 692
    .local v2, extra_bundle:Landroid/os/Bundle;
    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 694
    .local v5, targetKey:Ljava/lang/String;
    sget v7, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    if-ne v7, v8, :cond_19

    move v6, v8

    .line 695
    .local v6, value:Z
    :goto_13
    sget-object v7, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 696
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 697
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 698
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 736
    :cond_4
    :goto_14
    sput v12, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    .line 741
    .end local v2           #extra_bundle:Landroid/os/Bundle;
    .end local v5           #targetKey:Ljava/lang/String;
    .end local v6           #value:Z
    :cond_5
    return-void

    .end local v0           #colorBlindEnabled:Z
    .end local v3           #magnificationEnabled:Z
    .end local v4           #negativeColorEnabled:Z
    :cond_6
    move v7, v9

    .line 583
    goto/16 :goto_0

    :cond_7
    move v3, v9

    .line 612
    goto/16 :goto_1

    .restart local v3       #magnificationEnabled:Z
    :cond_8
    move v4, v9

    .line 614
    goto/16 :goto_2

    .restart local v4       #negativeColorEnabled:Z
    :cond_9
    move v0, v9

    .line 616
    goto/16 :goto_3

    .line 621
    .restart local v0       #colorBlindEnabled:Z
    :cond_a
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_4

    .line 626
    :cond_b
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 631
    :cond_c
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_6

    :cond_d
    move v7, v9

    .line 635
    goto/16 :goto_7

    :cond_e
    move v7, v9

    .line 637
    goto/16 :goto_8

    :cond_f
    move v7, v9

    .line 639
    goto/16 :goto_9

    :cond_10
    move v7, v9

    .line 641
    goto/16 :goto_a

    :cond_11
    move v7, v9

    .line 643
    goto/16 :goto_b

    :cond_12
    move v7, v9

    .line 645
    goto/16 :goto_c

    :cond_13
    move v7, v9

    .line 647
    goto/16 :goto_d

    :cond_14
    move v7, v9

    .line 651
    goto/16 :goto_e

    :cond_15
    move v7, v9

    .line 654
    goto/16 :goto_f

    :cond_16
    move v7, v9

    .line 658
    goto/16 :goto_10

    :cond_17
    move v7, v9

    .line 662
    goto/16 :goto_11

    .restart local v1       #colorBlind_switch_check:Ljava/lang/Boolean;
    :cond_18
    move v7, v9

    .line 667
    goto/16 :goto_12

    .end local v1           #colorBlind_switch_check:Ljava/lang/Boolean;
    .restart local v2       #extra_bundle:Landroid/os/Bundle;
    .restart local v5       #targetKey:Ljava/lang/String;
    :cond_19
    move v6, v9

    .line 694
    goto :goto_13

    .line 700
    .restart local v6       #value:Z
    :cond_1a
    const-string v7, "color_blind"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 701
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 702
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 703
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_14

    .line 705
    :cond_1b
    const-string v7, "access_control_key"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 706
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 707
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 708
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 710
    :cond_1c
    sget-object v7, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 711
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 712
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 713
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 715
    :cond_1d
    const-string v7, "screen_magnification_preference_screen"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 716
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 717
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 718
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 720
    :cond_1e
    const-string v7, "enable_global_gesture_preference_screen"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 721
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 722
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 723
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 725
    :cond_1f
    const-string v7, "samsung_captioning_preference_screen"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 726
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 727
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 728
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSamsungCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 730
    :cond_20
    const-string v7, "google_captioning_preference_screen"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 731
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 732
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 733
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_14
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->floatToIndex(F)I

    move-result v0

    .line 1972
    const-string v1, "AccessibilitySettings"

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

    .line 1973
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1974
    const-string v2, "AccessibilitySettings"

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

    .line 1975
    sget v2, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    .line 1976
    sget v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HUGE_FONT_INDEX:I

    .line 1977
    const-string v1, "AccessibilitySettings"

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

    .line 1980
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1982
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_1

    .line 1983
    add-int/lit8 v0, v0, 0x1

    .line 1987
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1989
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1990
    const v1, 0x7f0a0024

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1993
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

    .line 1995
    return-void

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    const-string v0, "AccessibilitySettings"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1992
    :cond_2
    const v1, 0x7f0a0022

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public showDeviceLockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2662
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2664
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2666
    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2669
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2670
    const v2, 0x7f040139

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2671
    const v0, 0x7f0b033e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2672
    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2674
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2675
    const v0, 0x7f0905a0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2676
    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2678
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2679
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2680
    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 2632
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2633
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2634
    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2635
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 2636
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 2637
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    move-wide v2, v0

    .line 2639
    :goto_1
    const-string v4, "AccessibilitySettings"

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

    .line 2640
    const-string v0, "AccessibilitySettings"

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

    .line 2642
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2644
    iput-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2647
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2648
    const v1, 0x7f040139

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2649
    const v0, 0x7f0b033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2650
    const v4, 0x7f09006e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2652
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2653
    const v0, 0x7f0905a0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2654
    const v0, 0x104000a

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2656
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2657
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2658
    return-void

    :cond_1
    move-wide v0, v2

    .line 2634
    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    .line 2637
    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 2000
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2001
    const-string v1, "AccessibilitySettings"

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

    .line 2002
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2003
    sget v0, Lcom/android/settings/accessibility/AccessibilitySettings;->LARGE_FONT_SCALE:F

    .line 2004
    const-string v1, "AccessibilitySettings"

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

    .line 2006
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2009
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :goto_0
    return-void

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    const-string v0, "AccessibilitySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
