.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;,
        Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static KEY_ASSISTANT_MENU:Ljava/lang/String;

.field private static KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

.field private static KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

.field private static KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

.field private static final LARGE_FONT_SCALE:F

.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


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

.field private mColorBlind:Landroid/preference/SwitchPreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mFlashNotification:Landroid/database/ContentObserver;

.field private mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

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

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

.field private mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mPowerKeyHold:Landroid/preference/PreferenceScreen;

.field private mRotation2ndObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

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

.field private mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

.field private mVisionCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "notification_preference"

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/AccessibilitySettings;->LARGE_FONT_SCALE:F

    .line 153
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    .line 200
    const-string v0, "assistant_menu_preference"

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    .line 203
    const-string v0, "share_acc_setting_menu"

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    .line 204
    const-string v0, "call_hearing_aid"

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 233
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mSpokenServiceAvailble:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mManageAccessibility:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 253
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 255
    new-instance v0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 257
    new-instance v0, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/android/settings/AccessibilitySettings$2;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    .line 276
    new-instance v0, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 316
    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 317
    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 324
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    .line 400
    new-instance v0, Lcom/android/settings/AccessibilitySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$4;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 414
    new-instance v0, Lcom/android/settings/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$5;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    .line 429
    new-instance v0, Lcom/android/settings/AccessibilitySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$6;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    .line 440
    new-instance v0, Lcom/android/settings/AccessibilitySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$7;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    .line 3928
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/AccessibilitySettings;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateSettingsScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateFlashNotificationSettingsScreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/AccessibilitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return p1
.end method

.method private disableUnusableLockTimeouts(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2285
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2286
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2290
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "screen_off_timeout"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    move v0, v1

    .line 2293
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 2294
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2295
    cmp-long v7, v7, p1

    if-gtz v7, :cond_0

    .line 2296
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2302
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

    .line 2303
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

    .line 2304
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

    .line 2305
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

    .line 2306
    const v0, 0x7f090ff9

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2313
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2315
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2316
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 2317
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2326
    :goto_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2328
    return-void

    .line 2319
    :cond_4
    const-string v0, "AccessibilitySettings"

    const-string v3, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

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
    .line 2062
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2065
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2066
    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2071
    const v2, 0x1b7740

    .line 2075
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2076
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_a

    .line 2077
    int-to-long v0, v2

    move-wide v2, v0

    .line 2081
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 2143
    :goto_2
    return-void

    .line 2065
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2085
    :cond_1
    const/4 v1, -0x1

    .line 2086
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2087
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 2088
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2089
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2090
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 2091
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2092
    cmp-long v10, v8, v2

    if-gtz v10, :cond_2

    .line 2093
    aget-object v10, v4, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    aget-object v10, v5, v0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2097
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

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

    .line 2099
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    move v1, v0

    .line 2090
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2105
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

    invoke-direct {p0, v8, v9}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2106
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2107
    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2108
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2112
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 2113
    :cond_5
    const v0, 0x7f090ff9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2128
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2130
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2131
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_8

    .line 2132
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2142
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 2116
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

    .line 2117
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

    .line 2118
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

    .line 2119
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

    .line 2120
    const v0, 0x7f090ff9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2134
    :cond_8
    const-string v0, "AccessibilitySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 2142
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_a
    move-wide v2, v0

    goto/16 :goto_1
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2864
    const/4 v0, 0x0

    .line 2865
    if-eqz p0, :cond_0

    .line 2866
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2870
    :cond_0
    if-nez v0, :cond_1

    .line 2871
    const-string v0, ""

    .line 2873
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2874
    sget-object v2, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2875
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2876
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2877
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 2878
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2880
    if-eqz v0, :cond_2

    .line 2881
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2884
    :cond_3
    return-object v1
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 942
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 943
    div-long v2, v0, v4

    .line 944
    rem-long v4, v0, v4

    .line 946
    const-string v0, ""

    .line 947
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110008

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

    .line 950
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110009

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

    .line 957
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

    .line 958
    return-object v0
.end method

.method private handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1327
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1328
    const-string v3, "title"

    const v4, 0x7f090835

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090837

    invoke-virtual {p0, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090838

    invoke-virtual {p0, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1334
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1335
    return-void

    :cond_0
    move v0, v1

    .line 1332
    goto :goto_0
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1315
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1316
    const-string v3, "title"

    const v4, 0x7f09081b

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09081c

    invoke-virtual {p0, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09081d

    invoke-virtual {p0, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1324
    return-void

    :cond_0
    move v0, v1

    .line 1320
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1268
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1270
    iget-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_4

    .line 1271
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1272
    if-nez v2, :cond_0

    .line 1273
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1279
    :goto_1
    return-void

    .line 1269
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

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

    .line 1275
    goto :goto_0

    .line 1277
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

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

.method private handleTogglEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1303
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1304
    const-string v3, "title"

    const v4, 0x7f09081e

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v3, "summary"

    const v4, 0x7f090821

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1312
    return-void

    :cond_0
    move v0, v1

    .line 1308
    goto :goto_0
.end method

.method private handleToggleAutoRotateScreen2ndPreferenceClick()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1282
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1283
    if-nez v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1287
    return-void
.end method

.method private handleToggleEasyInteractionPreferenceClick()V
    .locals 3

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_interaction"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1299
    return-void

    .line 1297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1293
    return-void

    .line 1290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0c0004

    const v6, 0x7f090056

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1338
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    .line 1340
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 1341
    const-string v0, "mobility_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->MobilityCategory:Landroid/preference/PreferenceCategory;

    .line 1342
    const-string v0, "Recognition_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    .line 1344
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 1345
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1348
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 1352
    :cond_0
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 1356
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 1360
    const-string v0, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    .line 1364
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 1368
    const-string v0, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    .line 1374
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1379
    :cond_1
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 1380
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1382
    iget-boolean v4, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_2

    .line 1383
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1384
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1387
    :cond_2
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1388
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1389
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 1390
    invoke-direct {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1393
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_after_timeout"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 1395
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1397
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1399
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1402
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 1403
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 1405
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1406
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1410
    :cond_4
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    .line 1413
    const-string v0, "old_select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 1415
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1416
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1417
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1419
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 1420
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0063

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1422
    array-length v5, v1

    move v0, v3

    .line 1423
    :goto_0
    if-ge v0, v5, :cond_5

    .line 1424
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v1, v0

    aget-object v8, v4, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1433
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 1437
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 1440
    const-string v0, "vision_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    .line 1441
    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1444
    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    .line 1449
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1453
    const-string v0, "lcd_curtain"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    .line 1455
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1459
    const-string v0, "ultrasonic_cane"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    .line 1461
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1466
    const-string v0, "haptic_feedback_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 1468
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1473
    const-string v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1474
    const-string v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    .line 1475
    const-string v0, "all_sound_off_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1476
    const-string v0, "flash_notification_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    .line 1477
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    .line 1482
    const-string v0, "audio_balance"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AudioBalancePreference;

    .line 1483
    const-string v1, "tts_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 1485
    const-string v1, "call_answering_ending"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    .line 1486
    const-string v1, "power_key_hold"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    .line 1489
    sget-object v1, Lcom/android/settings/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 1493
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1498
    sget-object v1, Lcom/android/settings/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    .line 1503
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1507
    const-string v1, "access_control_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 1508
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1511
    sget-object v1, Lcom/android/settings/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    .line 1516
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1517
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1518
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1519
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1520
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1521
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1522
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1523
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1524
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1525
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1526
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1527
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1529
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1530
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1532
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lcd_curtain"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1534
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ultrasonic_cane"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1536
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1538
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1540
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "all_sound_off"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1542
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "flash_notification"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1544
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hearing_aid"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1549
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_use"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1551
    const-string v0, "AccessibilitySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeAllPreferences : ACCESS_CONTROL_USE :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1571
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1572
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1629
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    .line 1630
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v0, v2, :cond_8

    .line 1631
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1633
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1634
    invoke-virtual {v0, v10, v10}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1642
    const/high16 v1, 0x1e4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1650
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_a
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    .line 1651
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_13

    .line 1652
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 1653
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f091256

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1657
    :goto_b
    return-void

    :cond_9
    move v0, v3

    .line 1530
    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 1532
    goto/16 :goto_2

    :cond_b
    move v0, v3

    .line 1534
    goto/16 :goto_3

    :cond_c
    move v0, v3

    .line 1536
    goto/16 :goto_4

    :cond_d
    move v0, v3

    .line 1538
    goto/16 :goto_5

    :cond_e
    move v0, v3

    .line 1540
    goto/16 :goto_6

    :cond_f
    move v0, v3

    .line 1542
    goto/16 :goto_7

    :cond_10
    move v0, v3

    .line 1544
    goto/16 :goto_8

    :cond_11
    move v0, v3

    .line 1549
    goto/16 :goto_9

    :cond_12
    move v2, v3

    .line 1650
    goto :goto_a

    .line 1655
    :cond_13
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b
.end method

.method private isAssistantmenuRunning()Z
    .locals 3

    .prologue
    .line 2339
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2342
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 2343
    if-eqz v0, :cond_1

    .line 2344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2346
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    const/4 v0, 0x1

    .line 2352
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInDefaultLockTimeoutList(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, values:[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 916
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 917
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 920
    :goto_2
    return v2

    .line 913
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 916
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 920
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private isInDefaultScreenTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 925
    .line 926
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 933
    :goto_0
    if-nez v2, :cond_2

    .line 938
    :cond_0
    :goto_1
    return v1

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 935
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 936
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 935
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isTalkbackAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1661
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1662
    :catch_0
    move-exception v1

    .line 1663
    const-string v1, "AccessibilitySettings"

    const-string v2, "Screen reader does not installed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 2840
    sget-object v4, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 2841
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 2843
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 2846
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 2861
    :cond_0
    return-void

    .line 2850
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2851
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2852
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 2853
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2857
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 2858
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/AccessibilitySettings;->mSpokenServiceAvailble:Z

    .line 2851
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2357
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v0, v3, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2360
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2361
    const-string v0, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2363
    :goto_1
    if-eqz v0, :cond_0

    .line 2364
    const-string v0, "ro.screenreader.market"

    const-string v4, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2367
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2368
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2370
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2375
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2379
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2361
    goto :goto_1
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 18
    .parameter "screenTimeoutPreference"

    .prologue
    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2150
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 2151
    .local v6, maxTimeout:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2153
    .local v1, currentTimeout:J
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2154
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 2155
    .local v13, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2156
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v13

    if-ge v5, v14, :cond_2

    .line 2158
    aget-object v14, v13, v5

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2160
    .local v10, timeout:J
    cmp-long v14, v10, v6

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v14

    if-nez v14, :cond_1

    cmp-long v14, v1, v10

    if-eqz v14, :cond_1

    .line 2157
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2150
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

    .line 2163
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

    .line 2164
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2167
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

    .line 2169
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2172
    .local v12, userPreference:I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2173
    return-void
.end method

.method private setTapAndHoldDelaySummary()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 1967
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1971
    .local v0, currentLongPressTimeout:I
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    .line 1972
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1992
    :goto_0
    return-void

    .line 1976
    :cond_0
    if-ne v0, v3, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1981
    :cond_1
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_2

    .line 1982
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1987
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

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

    .line 2215
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2217
    .local v2, currentLockTimeout:J
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2218
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2219
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2220
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 2222
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 2228
    iget-boolean v8, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0           #adminTimeout:J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/AccessibilitySettings;->disableUnusableLockTimeouts(J)V

    .line 2231
    :cond_0
    return-void

    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 2219
    goto :goto_0

    .line 2228
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
    .line 2905
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2907
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2908
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 2909
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2912
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2914
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 1748
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateDefaultPreferences()V

    .line 1749
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    .line 1750
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateVisionPreferences()V

    .line 1751
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateMobilityPreferences()V

    .line 1752
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateRecognitionPreferences()V

    .line 1753
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1757
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 1760
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1762
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1765
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1768
    :goto_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 1769
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1772
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_interaction"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1775
    :goto_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1779
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1781
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1782
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

    .line 1783
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 1784
    invoke-direct {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1787
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 1788
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 1789
    return-void

    :cond_2
    move v0, v2

    .line 1760
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1765
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1772
    goto :goto_2
.end method

.method private updateExclusiveTalkback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 988
    const-string v0, "AccessibilitySettings"

    const-string v1, "TalkbackOnChagne "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 991
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

    .line 992
    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 995
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 997
    :cond_0
    return-void
.end method

.method private updateFlashNotificationSettingsScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 980
    .local v0, flashSettingValue:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 981
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 985
    :goto_1
    return-void

    .end local v0           #flashSettingValue:Z
    :cond_0
    move v0, v2

    .line 978
    goto :goto_0

    .line 983
    .restart local v0       #flashSettingValue:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter

    .prologue
    .line 2888
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2889
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2892
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2893
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 2894
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2895
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2898
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2900
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2902
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 2237
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 2238
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2239
    const/4 v1, 0x0

    .line 2240
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 2241
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2242
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v1, v0

    .line 2240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2248
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v8, v0

    .line 2250
    const-wide/16 v10, 0x0

    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2254
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_4

    const v0, 0x7f090057

    .line 2255
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_5

    const v2, 0x7f090058

    .line 2258
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

    .line 2259
    const-string v3, "AccessibilitySettings"

    const-string v4, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_6

    cmp-long v3, v10, v8

    if-gez v3, :cond_6

    .line 2262
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2282
    :goto_5
    return-void

    .line 2247
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 2250
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 2254
    :cond_4
    const v0, 0x7f0901a2

    goto :goto_3

    .line 2255
    :cond_5
    const v2, 0x7f090ff8

    goto :goto_4

    .line 2264
    :cond_6
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2269
    :cond_7
    if-nez v1, :cond_8

    .line 2270
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2272
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/settings/AccessibilitySettings;->isInDefaultLockTimeoutList(J)Z

    move-result v2

    if-eqz v2, :cond_a

    cmp-long v2, v4, v10

    if-ltz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_a

    .line 2273
    :cond_9
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2275
    :cond_a
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2332
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2333
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2336
    :cond_0
    return-void

    .line 2333
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateManageAccessibilityMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1001
    const-string v0, "AccessibilitySettings"

    const-string v1, "updateManageAccessibilityMenu() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->mManageAccessibility:Z

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1004
    const-string v1, "importNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mManageAccessibility:Z

    .line 1006
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mManageAccessibility:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1011
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateMobilityPreferences()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1944
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setTapAndHoldDelaySummary()V

    .line 1946
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setTapAndHoldDelaySummary()V

    .line 1954
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->isAssistantmenuRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1957
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1958
    return-void

    :cond_1
    move v0, v1

    .line 1957
    goto :goto_0
.end method

.method private updateRecognitionPreferences()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1962
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1963
    return-void

    :cond_0
    move v0, v1

    .line 1962
    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1797
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1799
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1801
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 1803
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 1805
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 1808
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 1809
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1811
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 1813
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1815
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1816
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1822
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 1824
    :goto_2
    if-eqz v4, :cond_4

    .line 1825
    const v12, 0x7f09084a

    invoke-virtual {p0, v12}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1830
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 1831
    const-class v12, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 1834
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1835
    const-string v13, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v13, "checked"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1837
    const-string v4, "title"

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 1840
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1841
    const v4, 0x7f090863

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1843
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v12, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 1846
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1847
    const-string v10, "settings_title"

    const v13, 0x7f09082b

    invoke-virtual {p0, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
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

    .line 1854
    :cond_1
    const-string v0, "component_name"

    invoke-virtual {v12, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1856
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1808
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 1805
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 1822
    goto/16 :goto_2

    .line 1827
    :cond_4
    const v12, 0x7f09084b

    invoke-virtual {p0, v12}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1859
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1860
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 1861
    new-instance v0, Lcom/android/settings/AccessibilitySettings$12;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$12;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 1870
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1871
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f04017b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1875
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1877
    :cond_7
    return-void
.end method

.method private updateSettingsScreen()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 963
    const-string v0, "AccessibilitySettings"

    const-string v3, "onChange() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 966
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

    .line 967
    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 969
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 975
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 964
    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 11
    .parameter

    .prologue
    .line 1996
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 1997
    const-wide/16 v4, -0x1

    .line 1999
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2001
    const-string v0, ""

    move-object v1, v0

    move-wide v2, v4

    .line 2043
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2044
    if-eqz v0, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 2045
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "lock_screen_lock_after_timeout"

    const-wide/16 v9, 0x1388

    invoke-static {v0, v6, v9, v10}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2046
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_e

    .line 2047
    cmp-long v0, v4, v6

    if-gez v0, :cond_c

    .line 2049
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v0, :cond_d

    cmp-long v0, v2, v4

    if-lez v0, :cond_d

    .line 2050
    const v0, 0x7f090059

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2051
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2057
    :cond_0
    :goto_3
    return-void

    .line 2003
    :cond_1
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 2004
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2005
    const/4 v1, 0x0

    .line 2006
    const/4 v0, 0x0

    :goto_4
    array-length v2, v7

    if-ge v0, v2, :cond_3

    .line 2007
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2008
    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    move v1, v0

    .line 2006
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2014
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2015
    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2017
    :goto_5
    array-length v0, v6

    if-eqz v0, :cond_4

    array-length v0, v7

    if-nez v0, :cond_6

    .line 2018
    :cond_4
    const v0, 0x7f090572

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-wide v2, v4

    goto/16 :goto_0

    .line 2015
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_5

    .line 2021
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

    .line 2022
    const-string v0, "AccessibilitySettings"

    const-string v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const v0, 0x7f090572

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2024
    goto/16 :goto_0

    .line 2026
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_9

    cmp-long v0, p1, v2

    if-ltz v0, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 2027
    :cond_8
    const v0, 0x7f090572

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v6, v1

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object v1, v0

    goto/16 :goto_0

    .line 2030
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    .line 2031
    const v0, 0x7f090572

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-wide v2, p1

    .line 2032
    goto/16 :goto_0

    .line 2034
    :cond_a
    const v0, 0x7f090572

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2035
    goto/16 :goto_0

    .line 2044
    :cond_b
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    :cond_c
    move-wide v4, v6

    .line 2047
    goto/16 :goto_2

    .line 2054
    :cond_d
    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_e
    move-wide v4, v6

    goto/16 :goto_2
.end method

.method private updateVisionPreferences()V
    .locals 6

    .prologue
    const v5, 0x7f09081f

    const v4, 0x7f090820

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1882
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1887
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 1889
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1893
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1895
    :goto_1
    if-eqz v0, :cond_4

    .line 1896
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09084a

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1904
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 1906
    :goto_3
    if-eqz v0, :cond_6

    .line 1907
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1914
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1915
    iget-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->mSpokenServiceAvailble:Z

    if-eqz v3, :cond_8

    .line 1916
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1917
    if-eqz v0, :cond_7

    .line 1918
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1933
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1936
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1941
    return-void

    :cond_2
    move v0, v2

    .line 1887
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1893
    goto :goto_1

    .line 1899
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09084b

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1904
    goto :goto_3

    .line 1910
    :cond_6
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    .line 1921
    :cond_7
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    .line 1926
    :cond_8
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1927
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_9
    move v1, v2

    .line 1936
    goto :goto_6
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1681
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1682
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1683
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1684
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1685
    add-int/lit8 v0, v1, -0x1

    .line 1689
    :goto_2
    return v0

    .line 1675
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1682
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 1689
    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 483
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$8;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
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

    .line 460
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 461
    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 464
    const-string v2, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_secured_lock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isSecuredLock:Z

    .line 468
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 469
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 471
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->initializeAllPreferences()V

    .line 474
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 476
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    .line 479
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 465
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

    .line 2440
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 2835
    :goto_0
    return-object v0

    .line 2443
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2444
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2445
    const v1, 0x7f040115

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2446
    const v1, 0x7f040114

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2447
    const v0, 0x7f0b0138

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2448
    const v1, 0x7f0b0314

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2449
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2450
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 2835
    goto :goto_0

    .line 2452
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09085e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09085f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$13;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 2476
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/AccessibilitySettings$14;

    invoke-direct {v2, p0, v5, v0}, Lcom/android/settings/AccessibilitySettings$14;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2489
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090052

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/AccessibilitySettings$17;

    invoke-direct {v2, p0, v5, v1}, Lcom/android/settings/AccessibilitySettings$17;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$16;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$16;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$15;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2520
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090865

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090866

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$20;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$20;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$19;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$18;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$18;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2550
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090867

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090868

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$23;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$22;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$21;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$21;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2594
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090839

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09083a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$25;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$25;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$24;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$24;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2623
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09083b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09083c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$27;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$26;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$26;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2656
    :pswitch_7
    const-string v1, ""

    .line 2657
    const-string v0, ""

    .line 2658
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2659
    const v0, 0x7f09082f

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2660
    const v0, 0x7f090832

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2668
    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$30;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$30;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$29;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$29;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$28;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$28;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2661
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 2662
    const v0, 0x7f090831

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2663
    const v0, 0x7f090834

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2664
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2665
    const v0, 0x7f090830

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2666
    const v0, 0x7f090833

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2718
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09083b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09083d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$33;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$33;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$32;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$32;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$31;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$31;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2752
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090b0d

    new-instance v2, Lcom/android/settings/AccessibilitySettings$34;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessibilitySettings$34;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 2760
    :pswitch_a
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2761
    new-array v1, v2, [Z

    .line 2762
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    :goto_2
    aput-boolean v0, v1, v3

    .line 2763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090c67

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0a00c2

    new-array v2, v2, [Z

    aget-boolean v5, v1, v3

    aput-boolean v5, v2, v3

    new-instance v3, Lcom/android/settings/AccessibilitySettings$38;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/AccessibilitySettings$38;-><init>(Lcom/android/settings/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0912ba

    new-instance v3, Lcom/android/settings/AccessibilitySettings$37;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/AccessibilitySettings$37;-><init>(Lcom/android/settings/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    new-instance v2, Lcom/android/settings/AccessibilitySettings$36;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessibilitySettings$36;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$35;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$35;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 2762
    goto :goto_2

    .line 2796
    :cond_5
    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 2797
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_3
    aput-boolean v0, v1, v3

    .line 2798
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "talkback_power_key_hold"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    :goto_4
    aput-boolean v0, v1, v2

    .line 2799
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090c67

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0a00c1

    const/4 v5, 0x2

    new-array v5, v5, [Z

    aget-boolean v6, v1, v3

    aput-boolean v6, v5, v3

    aget-boolean v3, v1, v2

    aput-boolean v3, v5, v2

    new-instance v2, Lcom/android/settings/AccessibilitySettings$42;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/AccessibilitySettings$42;-><init>(Lcom/android/settings/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0912ba

    new-instance v3, Lcom/android/settings/AccessibilitySettings$41;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/AccessibilitySettings$41;-><init>(Lcom/android/settings/AccessibilitySettings;[Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    new-instance v2, Lcom/android/settings/AccessibilitySettings$40;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessibilitySettings$40;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$39;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$39;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 2797
    goto :goto_3

    :cond_7
    move v0, v3

    .line 2798
    goto :goto_4

    .line 2450
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
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 644
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 647
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 648
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 665
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    check-cast p2, Ljava/lang/String;

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 903
    :goto_0
    return v1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 674
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->floatToIndex(F)I

    move-result v0

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 676
    iget-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_1

    .line 677
    add-int/lit8 v0, v0, 0x1

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 680
    sget v3, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ge v2, v3, :cond_4

    sget v3, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_4

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    const-string v2, "AccessibilitySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 694
    const-string v3, "pref_font_noti"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 696
    sget v3, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 697
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 699
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/AccessibilitySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 685
    :cond_4
    sget v3, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ge v0, v2, :cond_2

    .line 686
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    const-string v2, "AccessibilitySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 704
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 705
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

    .line 707
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 708
    const-string v0, "AccessibilitySettings"

    const-string v1, "isInDefaultScreenTimeoutList = true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_rollback"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 719
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    :goto_3
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 726
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_8

    .line 727
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 735
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 739
    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 740
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 741
    cmp-long v8, v0, v2

    if-eqz v8, :cond_22

    .line 742
    cmp-long v8, v0, v4

    if-gez v8, :cond_a

    .line 744
    :goto_6
    iget-boolean v4, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v4, :cond_7

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    int-to-long v2, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->showScreenTimeDialog()V

    :cond_7
    :goto_7
    move v1, v6

    .line 903
    goto/16 :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    const-string v1, "AccessibilitySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 720
    :catch_1
    move-exception v0

    .line 721
    const-string v1, "AccessibilitySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 731
    :cond_8
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_9
    move-wide v0, v2

    .line 739
    goto :goto_5

    :cond_a
    move-wide v0, v4

    .line 742
    goto :goto_6

    .line 748
    :cond_b
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 749
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 751
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 756
    :goto_8
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 757
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 760
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->isSecuredLock:Z

    if-eqz v0, :cond_7

    .line 761
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 762
    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 763
    if-eqz v1, :cond_7

    int-to-long v0, v1

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->showDeviceLockDialog()V

    goto :goto_7

    .line 753
    :catch_2
    move-exception v0

    .line 754
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 766
    :cond_c
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 767
    check-cast p2, Ljava/lang/Boolean;

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 775
    const-string v0, "Accessibility"

    const-string v2, "AssistantMenu Service Start!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 778
    :cond_d
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 781
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 782
    const-string v0, "Accessibility"

    const-string v2, "AssistantMenu Service Stop!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 786
    :cond_f
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 788
    check-cast p2, Ljava/lang/Boolean;

    .line 790
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.NotificationReminder"

    const-string v4, "com.samsung.android.app.notificationreminder.settings.NotificationReminderService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 795
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    .line 802
    const-string v2, "notification reminder"

    const-string v3, "Time interval value has not been set yet"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    const/16 v4, 0x12c

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 809
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 811
    const-string v0, "Notification Reminder"

    const-string v2, "NotificationReminder Service Start!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_b
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 805
    :cond_10
    const-string v2, "notification reminder"

    const-string v3, "Time interval value has already been set and written to DB"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 814
    :cond_11
    const-string v0, "AccessibilitySettings"

    const-string v2, "Notification Reminder service could not start"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 818
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 820
    const-string v0, "NotificationReminder"

    const-string v2, "NotificationReminder Service Stop!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    move v0, v6

    .line 823
    goto :goto_b

    .line 827
    :cond_14
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 828
    check-cast p2, Ljava/lang/Boolean;

    .line 830
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 831
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 832
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 837
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind_test"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17

    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.colorblind"

    const-string v4, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 840
    iget-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v2, v1, :cond_16

    .line 841
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 843
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 845
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 848
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_0

    .line 852
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ACTION_COLORBLIND_SWITCH_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_blind"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 859
    :cond_19
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1b

    .line 860
    check-cast p2, Ljava/lang/Boolean;

    .line 862
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ultrasonic_cane"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 865
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ultrasonic_cane"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 869
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1d

    .line 870
    check-cast p2, Ljava/lang/Boolean;

    .line 872
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 875
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 879
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_7

    .line 880
    check-cast p2, Ljava/lang/Boolean;

    .line 882
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1e

    .line 884
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 885
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 886
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 888
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 889
    const-string v0, "AccessibilitySettings"

    const-string v2, "Access Control Use : 1"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 894
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_21

    .line 895
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_0

    .line 897
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    const-string v0, "AccessibilitySettings"

    const-string v2, "Access Control Use : 0"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_22
    move-wide v0, v4

    goto/16 :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 652
    const-string v0, "AccessibilitySettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v0, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 656
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 661
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

    .line 1015
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 1017
    sget v0, Lcom/android/settings/AccessibilitySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1018
    sget v0, Lcom/android/settings/AccessibilitySettings;->mSettingValue:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 1019
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1020
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1021
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1029
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1036
    if-ne v0, v2, :cond_3

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1041
    if-nez v0, :cond_2

    .line 1043
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 1044
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090f82

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074c

    new-instance v3, Lcom/android/settings/AccessibilitySettings$11;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$11;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v3, Lcom/android/settings/AccessibilitySettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$10;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$9;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1256
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 1018
    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    iput-boolean v2, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 1078
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1081
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1084
    iput-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 1085
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1088
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_5

    .line 1089
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_1

    .line 1091
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1092
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleAutoRotateScreen2ndPreferenceClick()V

    goto :goto_1

    .line 1094
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_7

    .line 1095
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_1

    .line 1098
    :cond_7
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_8

    .line 1099
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleEasyInteractionPreferenceClick()V

    goto :goto_1

    .line 1101
    :cond_8
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_9

    .line 1102
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick()V

    goto :goto_1

    .line 1104
    :cond_9
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_a

    .line 1105
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_1

    .line 1107
    :cond_a
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1108
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 1110
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 1204
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1205
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1206
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_22

    .line 1207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 1209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1210
    const-string v4, "extra_from_search"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1211
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1215
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1216
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1217
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1218
    iput-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    .line 1252
    :cond_c
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    .line 1256
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1

    .line 1113
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1114
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_2

    .line 1117
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1118
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_2

    .line 1120
    :cond_10
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mono_audio_db"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1124
    const-string v1, "mono"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1131
    const-string v0, "AccessibilitySettings"

    const-string v1, "Mono Audio broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1126
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mono_audio_db"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    const-string v1, "mono"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 1132
    :cond_12
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "all_sound_off"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    const-string v1, "mute"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1143
    const-string v0, "AccessibilitySettings"

    const-string v1, "All sound off broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1138
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "all_sound_off"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1139
    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 1144
    :cond_14
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1146
    const-string v1, "pref_flash_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "flash_notification"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1149
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1151
    :cond_15
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 1153
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1156
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1172
    :cond_17
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1173
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    move v1, v2

    .line 1174
    :goto_6
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hearing_aid"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/AccessibilitySettings;->KEY_HEARING_AID_PREFERENCE_SCREEN:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v0, "ON"

    :goto_7
    invoke-virtual {v4, v5, v0}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_18
    move v1, v3

    .line 1173
    goto :goto_6

    .line 1176
    :cond_19
    const-string v0, "OFF"

    goto :goto_7

    .line 1177
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v2, v3

    .line 1179
    goto/16 :goto_1

    .line 1180
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1181
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings;->handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 1183
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.colorblind"

    const-string v5, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1186
    const-string v1, "toStartActivity"

    const-string v4, "fromSetting"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    iget-boolean v1, p0, Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v1, v2, :cond_1d

    .line 1188
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1190
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1191
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1192
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1195
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1197
    :cond_20
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1198
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const-class v1, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1199
    :cond_21
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1200
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1220
    :cond_22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1221
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1222
    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1225
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1226
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1228
    :cond_23
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1229
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_24

    .line 1230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 1232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1233
    const-string v4, "extra_from_search"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1234
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1238
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1239
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1241
    iput-boolean v3, p0, Lcom/android/settings/AccessibilitySettings;->mOpenDetailMenu:Z

    goto/16 :goto_3

    .line 1243
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1244
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1245
    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1248
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1249
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 509
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 510
    iget-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    if-eqz v5, :cond_0

    .line 511
    iget-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 514
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v5, v8}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "access_control_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "flash_notification"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateAllPreferences()V

    .line 527
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 529
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 530
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 533
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateExclusiveTalkback()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateSettingsScreen()V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v2, v6

    .line 541
    .local v2, magnificationEnabled:Z
    :goto_1
    if-eqz v2, :cond_7

    .line 542
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f09084a

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 547
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 548
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "high_contrast"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 550
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "lcd_curtain"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 552
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mUltrasonicCane:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "ultrasonic_cane"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 554
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "haptic_feedback_enabled"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 556
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "mono_audio_db"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 558
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "all_sound_off"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 560
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "flash_notification"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 562
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleHearingAidPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "hearing_aid"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 567
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "assistant_menu"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_10

    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 571
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "notification_reminder"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v6

    :goto_c
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "color_blind"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "color_blind_test"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_12

    move v5, v6

    :goto_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 578
    .local v0, colorBlind_switch_check:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 580
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "access_control_use"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    :goto_e
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 584
    .end local v0           #colorBlind_switch_check:Ljava/lang/Boolean;
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v5, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accelerometer_rotation_second"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateManageAccessibilityMenu()V

    .line 595
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 596
    iget-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    if-eqz v5, :cond_4

    .line 597
    iget-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 598
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 599
    iput-boolean v7, p0, Lcom/android/settings/AccessibilitySettings;->mStartFromSearch:Z

    .line 600
    sget v5, Lcom/android/settings/AccessibilitySettings;->mSettingValue:I

    if-eq v5, v10, :cond_4

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 602
    .local v1, extra_bundle:Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, targetKey:Ljava/lang/String;
    sget v5, Lcom/android/settings/AccessibilitySettings;->mSettingValue:I

    if-ne v5, v6, :cond_14

    move v4, v6

    .line 605
    .local v4, value:Z
    :goto_f
    sget-object v5, Lcom/android/settings/AccessibilitySettings;->KEY_ASSISTANT_MENU:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 606
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 608
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 626
    :cond_3
    :goto_10
    sput v10, Lcom/android/settings/AccessibilitySettings;->mSettingValue:I

    .line 632
    .end local v1           #extra_bundle:Landroid/os/Bundle;
    .end local v3           #targetKey:Ljava/lang/String;
    .end local v4           #value:Z
    :cond_4
    return-void

    .end local v2           #magnificationEnabled:Z
    :cond_5
    move v5, v7

    .line 511
    goto/16 :goto_0

    :cond_6
    move v2, v7

    .line 539
    goto/16 :goto_1

    .line 544
    .restart local v2       #magnificationEnabled:Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f09084b

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    :cond_8
    move v5, v7

    .line 548
    goto/16 :goto_3

    :cond_9
    move v5, v7

    .line 550
    goto/16 :goto_4

    :cond_a
    move v5, v7

    .line 552
    goto/16 :goto_5

    :cond_b
    move v5, v7

    .line 554
    goto/16 :goto_6

    :cond_c
    move v5, v7

    .line 556
    goto/16 :goto_7

    :cond_d
    move v5, v7

    .line 558
    goto/16 :goto_8

    :cond_e
    move v5, v7

    .line 560
    goto/16 :goto_9

    :cond_f
    move v5, v7

    .line 562
    goto/16 :goto_a

    :cond_10
    move v5, v7

    .line 567
    goto/16 :goto_b

    :cond_11
    move v5, v7

    .line 571
    goto/16 :goto_c

    :cond_12
    move v5, v7

    .line 575
    goto/16 :goto_d

    .restart local v0       #colorBlind_switch_check:Ljava/lang/Boolean;
    :cond_13
    move v5, v7

    .line 580
    goto/16 :goto_e

    .end local v0           #colorBlind_switch_check:Ljava/lang/Boolean;
    .restart local v1       #extra_bundle:Landroid/os/Bundle;
    .restart local v3       #targetKey:Ljava/lang/String;
    :cond_14
    move v4, v7

    .line 604
    goto :goto_f

    .line 610
    .restart local v4       #value:Z
    :cond_15
    const-string v5, "color_blind"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 611
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 612
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 613
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_10

    .line 615
    :cond_16
    const-string v5, "access_control_key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 616
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 617
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 618
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_10

    .line 620
    :cond_17
    sget-object v5, Lcom/android/settings/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 621
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 622
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 623
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_10
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1694
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->floatToIndex(F)I

    move-result v0

    .line 1702
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

    .line 1703
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1704
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

    .line 1705
    sget v2, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    .line 1706
    sget v0, Lcom/android/settings/AccessibilitySettings;->HUGE_FONT_INDEX:I

    .line 1707
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

    .line 1710
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1712
    iget-boolean v1, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_1

    .line 1713
    add-int/lit8 v0, v0, 0x1

    .line 1717
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1719
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1720
    const v1, 0x7f0a001f

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1723
    :goto_1
    const v3, 0x7f090583

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v0, v1, v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1726
    return-void

    .line 1695
    :catch_0
    move-exception v0

    .line 1696
    const-string v0, "AccessibilitySettings"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1722
    :cond_2
    const v1, 0x7f0a001d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public showDeviceLockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2416
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2418
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2420
    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2423
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2424
    const v2, 0x7f040111

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2425
    const v0, 0x7f0b0300

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2426
    const v3, 0x7f090059

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2428
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2429
    const v0, 0x7f090571

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2430
    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2432
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 2433
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2434
    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 2386
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2387
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2388
    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2389
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 2390
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 2391
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    move-wide v2, v0

    .line 2393
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

    .line 2394
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

    .line 2396
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2398
    iput-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2401
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2402
    const v1, 0x7f040111

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2403
    const v0, 0x7f0b0300

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2404
    const v4, 0x7f09005a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2406
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2407
    const v0, 0x7f090571

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2408
    const v0, 0x104000a

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2410
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2411
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2412
    return-void

    :cond_1
    move-wide v0, v2

    .line 2388
    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    .line 2391
    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1731
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1732
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

    .line 1733
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1734
    sget v0, Lcom/android/settings/AccessibilitySettings;->LARGE_FONT_SCALE:F

    .line 1735
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

    .line 1737
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1740
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :goto_0
    return-void

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    const-string v0, "AccessibilitySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
