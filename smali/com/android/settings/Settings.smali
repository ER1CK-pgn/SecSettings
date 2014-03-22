.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$FestivalEffectSettingsActivity;,
        Lcom/android/settings/Settings$ContextualContentsSettingsActivity;,
        Lcom/android/settings/Settings$SMotionGuideHub2014Activity;,
        Lcom/android/settings/Settings$RecommendedAppsListActivity;,
        Lcom/android/settings/Settings$AirplaneModeSettingsActivity;,
        Lcom/android/settings/Settings$SafetyCareHelpActivity;,
        Lcom/android/settings/Settings$SafetyCareSettingsActivity;,
        Lcom/android/settings/Settings$HandwritingLanguageActivity;,
        Lcom/android/settings/Settings$AccountMenuActivity;,
        Lcom/android/settings/Settings$GeneralSettingsTab;,
        Lcom/android/settings/Settings$InputAndControlSettingsTab;,
        Lcom/android/settings/Settings$DisplaySettingsTab;,
        Lcom/android/settings/Settings$EasyModeAppActivity;,
        Lcom/android/settings/Settings$EasyModeActivity;,
        Lcom/android/settings/Settings$VoiceInputControlSettingsActivity;,
        Lcom/android/settings/Settings$ReadingModeSettingsActivity;,
        Lcom/android/settings/Settings$PenAirViewSettingsMenuActivity;,
        Lcom/android/settings/Settings$PenDetachmentOptionActivity;,
        Lcom/android/settings/Settings$NotificationPanelMenuActivity;,
        Lcom/android/settings/Settings$MultiWindowSettingsActivity;,
        Lcom/android/settings/Settings$ClockWidgetActivity;,
        Lcom/android/settings/Settings$TorchlightSettingsActivity;,
        Lcom/android/settings/Settings$MouseHoveringSettingsActivity;,
        Lcom/android/settings/Settings$AirViewSettingActivity;,
        Lcom/android/settings/Settings$FingerAirViewSettingActivity;,
        Lcom/android/settings/Settings$AirMotionSettingActivity;,
        Lcom/android/settings/Settings$SmartScrollAdvancedSettingsActivity;,
        Lcom/android/settings/Settings$SmartScreenSettingsActivity;,
        Lcom/android/settings/Settings$CloudSettingActivity;,
        Lcom/android/settings/Settings$DirectAccessActivity;,
        Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;,
        Lcom/android/settings/Settings$HomeSyncBackupAndRestoreActivity;,
        Lcom/android/settings/Settings$CloudVideoSyncSettingActivity;,
        Lcom/android/settings/Settings$CloudPictureSyncSettingActivity;,
        Lcom/android/settings/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity2;,
        Lcom/android/settings/Settings$DrivingModeSettingsActivity;,
        Lcom/android/settings/Settings$ContextualPageHelpActivity;,
        Lcom/android/settings/Settings$CustomizableKeySettingsActivity;,
        Lcom/android/settings/Settings$HomeSettingsActivity;,
        Lcom/android/settings/Settings$TRoamingSettingsActivity;,
        Lcom/android/settings/Settings$GlobalRoamingSettingsActivity;,
        Lcom/android/settings/Settings$PlaceSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceProfileSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceSettingsActivity;,
        Lcom/android/settings/Settings$NfcPaymentSettingsActivity;,
        Lcom/android/settings/Settings$NfcSettingsActivity;,
        Lcom/android/settings/Settings$PowerSettingsActivity;,
        Lcom/android/settings/Settings$PersonalPageSettingsActivity;,
        Lcom/android/settings/Settings$GlanceSettingsActivity;,
        Lcom/android/settings/Settings$DormantmodeSettingsActivity;,
        Lcom/android/settings/Settings$EasyModeSettingsActivity;,
        Lcom/android/settings/Settings$PenHelpFragmentActivity;,
        Lcom/android/settings/Settings$PenSettingsMenuActivity;,
        Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/settings/Settings$AllShareCastSettingsActivity;,
        Lcom/android/settings/Settings$DualClockSettingActivity;,
        Lcom/android/settings/Settings$SBeamSettingsActivity;,
        Lcom/android/settings/Settings$NearbySettingsActivity;,
        Lcom/android/settings/Settings$MotionSettingsActivity;,
        Lcom/android/settings/Settings$PrintJobSettingsActivity;,
        Lcom/android/settings/Settings$PrintSettingsActivity;,
        Lcom/android/settings/Settings$PaymentSettingsActivity;,
        Lcom/android/settings/Settings$TrustedCredentialsSettingsActivity;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$NotificationAccessSettingsActivity;,
        Lcom/android/settings/Settings$UserSettingsActivity;,
        Lcom/android/settings/Settings$NotificationStationActivity;,
        Lcom/android/settings/Settings$DreamSettingsActivity;,
        Lcom/android/settings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$DockSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$ColorChipReportActivity;,
        Lcom/android/settings/Settings$CaptioningSettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/settings/Settings$LockScreenSettingsActivity;,
        Lcom/android/settings/Settings$LockscreenMenuActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$SoundSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiApSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$EthernetSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$ToddlerModeObserver;,
        Lcom/android/settings/Settings$HeaderAdapter;,
        Lcom/android/settings/Settings$NoHomeDialogFragment;,
        Lcom/android/settings/Settings$SettingsTabListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceProvisioned:I

.field private static mDirectSettingEnabler:Z

.field private static mGlanceCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private SettingsInAccountTab:[Ljava/lang/String;

.field private SettingsInConnectionTab:[Ljava/lang/String;

.field private SettingsInConnectionTab_2013:[Ljava/lang/String;

.field private SettingsInDeviceTab:[Ljava/lang/String;

.field private SettingsInDisplay:[Ljava/lang/String;

.field private SettingsInGeneralTab:[Ljava/lang/String;

.field private SettingsInInputandControlTab:[Ljava/lang/String;

.field private SettingsInMoreTab:[Ljava/lang/String;

.field filter:Landroid/content/IntentFilter;

.field mAccountTabView:Landroid/view/View;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field mConnectionTabView:Landroid/view/View;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field mDisplayTabView:Landroid/view/View;

.field private mDualFoldertype:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGeneralTabView:Landroid/view/View;

.field private mGlanceBatteryLowHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

.field private mGlanceListView:Landroid/widget/ListView;

.field private mGlanceLowMemoryHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

.field private mGlancePreviewItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field private mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

.field private mGlanceRoamingHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field mInputTabView:Landroid/view/View;

.field private mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

.field private mInternationalRoamingBlocked:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mMSADialog:Landroid/app/AlertDialog$Builder;

.field mMoreTabView:Landroid/view/View;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field mPhoneTabStyle:Z

.field mPrevSelectedActionBarIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    .line 326
    sput-boolean v1, Lcom/android/settings/Settings;->sShowNoHomeNotice:Z

    .line 343
    sput v2, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 523
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 524
    sput-boolean v1, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 526
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 530
    sput-boolean v1, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 1542
    const/16 v0, 0x7f

    new-array v0, v0, [Ljava/lang/String;

    const-class v3, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-class v1, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.ethernet.EthernetSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/DrivingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/myplace/MyPlaceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/android/settings/glance/GlanceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/settings/AccountMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/android/settings/FontMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-class v2, Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-class v2, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-class v2, Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-class v2, Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-class v2, Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-class v2, Lcom/android/settings/DockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-class v2, Lcom/android/settings/MasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-class v2, Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-class v2, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-class v2, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-class v2, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-class v2, Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-class v2, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-class v2, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-class v2, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-class v2, Lcom/android/settings/LedIndicatorSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-class v2, Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-class v2, Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-class v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-class v2, Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "com.android.settings.AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "com.android.settings.colorblind.ColorChipReport"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-class v2, Lcom/android/settings/SmartcardCredentialSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-class v2, Lcom/android/settings/ReadingMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "com.android.settings.safetycare.SafetyCareHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-class v2, Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-class v2, Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-class v2, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-class v2, Lcom/android/settings/placesettings/PlaceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-class v2, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-class v2, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-class v2, Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-class v2, Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "com.android.settings.TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-class v2, Lcom/android/settings/BlockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-class v2, Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "com.android.settings.myprofile.ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "com.android.settings.dualclock.DualClockSetting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 303
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 322
    iput v3, p0, Lcom/android/settings/Settings;->MHS_REQUEST:I

    .line 336
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mInternationalRoamingBlocked:Z

    .line 344
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 370
    const/16 v0, 0x61

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 481
    iput v3, p0, Lcom/android/settings/Settings;->mTetheredData:I

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 492
    iput-boolean v4, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    .line 493
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 508
    new-instance v0, Lcom/android/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    .line 525
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 529
    iput v3, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;

    .line 550
    new-array v0, v5, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    .line 556
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v6

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v7

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    .line 575
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DateTimeSettings"

    aput-object v1, v0, v3

    const-string v1, "LocalePicker"

    aput-object v1, v0, v4

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v6

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v7

    const-string v1, "SpellCheckersSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "UserDictionarySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LockScreenSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LockscreenMenuSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LedIndicatorSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ContextualPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ContextualPageHelp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "InformationTicker"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FingerAirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MouseHoveringSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PenHovering"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PenHelpFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PersonalVibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ReadingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CustomizableKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "DormantmodeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "TorchlightSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ContextualContentsSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    .line 620
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v3

    const-string v1, "BackupAssistantPlusSettings"

    aput-object v1, v0, v4

    const-string v1, "CloudPhotosSyncFragment"

    aput-object v1, v0, v6

    const-string v1, "CloudVideosSyncFragment"

    aput-object v1, v0, v7

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "VoiceInputControlSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    .line 630
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DeviceInfoSettings"

    aput-object v1, v0, v3

    const-string v1, "ManageApplications"

    aput-object v1, v0, v4

    const-string v1, "LocationSettings"

    aput-object v1, v0, v6

    const-string v1, "SecuritySettings"

    aput-object v1, v0, v7

    const-string v1, "SoundSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    .line 651
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v6

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v7

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LocationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    .line 672
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SoundSettings"

    aput-object v1, v0, v3

    const-string v1, "DisplaySettings"

    aput-object v1, v0, v4

    const-string v1, "ReadingMode"

    aput-object v1, v0, v6

    const-string v1, "LedIndicatorSettings"

    aput-object v1, v0, v7

    const-string v1, "LockscreenMenuSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "WallpaperSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FontMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RecommendedAppsList"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ToggleCaptioningPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CallFeaturesSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DormantmodeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GlanceSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ContextualContentsSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    .line 694
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v3

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v4

    const-string v1, "VoiceInputControlSettings"

    aput-object v1, v0, v6

    const-string v1, "HandwritingSearch"

    aput-object v1, v0, v7

    const-string v1, "FingerprintSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SPenSettingsMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "OneHandSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HandMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HandwritingLanguagePreference"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    .line 712
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HomeSettings"

    aput-object v1, v0, v3

    const-string v1, "AccountMenu"

    aput-object v1, v0, v4

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v6

    const-string v1, "CloudSetting"

    aput-object v1, v0, v7

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SafetyAssuranceSetting"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ManageApplications"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "NotificationAccessSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    .line 2109
    new-instance v0, Lcom/android/settings/Settings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$6;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 4650
    new-instance v0, Lcom/android/settings/Settings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$10;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4962
    new-instance v0, Lcom/android/settings/Settings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$11;-><init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    return-void

    .line 370
    :array_0
    .array-data 0x4
        0xdet 0x5t 0xbt 0x7ft
        0xe0t 0x5t 0xbt 0x7ft
        0xdft 0x5t 0xbt 0x7ft
        0xe7t 0x5t 0xbt 0x7ft
        0xe2t 0x5t 0xbt 0x7ft
        0xe8t 0x5t 0xbt 0x7ft
        0xeet 0x5t 0xbt 0x7ft
        0xe5t 0x5t 0xbt 0x7ft
        0x19t 0x6t 0xbt 0x7ft
        0x1ct 0x6t 0xbt 0x7ft
        0x1dt 0x6t 0xbt 0x7ft
        0x1bt 0x6t 0xbt 0x7ft
        0x1et 0x6t 0xbt 0x7ft
        0x1at 0x6t 0xbt 0x7ft
        0xfdt 0x5t 0xbt 0x7ft
        0x46t 0x6t 0xbt 0x7ft
        0x47t 0x6t 0xbt 0x7ft
        0x42t 0x6t 0xbt 0x7ft
        0x48t 0x6t 0xbt 0x7ft
        0x4at 0x6t 0xbt 0x7ft
        0x4bt 0x6t 0xbt 0x7ft
        0x12t 0x6t 0xbt 0x7ft
        0x23t 0x6t 0xbt 0x7ft
        0xdbt 0x5t 0xbt 0x7ft
        0x24t 0x6t 0xbt 0x7ft
        0x5at 0x6t 0xbt 0x7ft
        0xfet 0x5t 0xbt 0x7ft
        0xfbt 0x5t 0xbt 0x7ft
        0x2et 0x6t 0xbt 0x7ft
        0x28t 0x6t 0xbt 0x7ft
        0x2at 0x6t 0xbt 0x7ft
        0x2ct 0x6t 0xbt 0x7ft
        0x5et 0x6t 0xbt 0x7ft
        0xe9t 0x5t 0xbt 0x7ft
        0x2ft 0x6t 0xbt 0x7ft
        0xet 0x6t 0xbt 0x7ft
        0x2bt 0x6t 0xbt 0x7ft
        0xbt 0x6t 0xbt 0x7ft
        0xd9t 0x5t 0xbt 0x7ft
        0xdat 0x5t 0xbt 0x7ft
        0x44t 0x6t 0xbt 0x7ft
        0x25t 0x6t 0xbt 0x7ft
        0x33t 0x6t 0xbt 0x7ft
        0xat 0x6t 0xbt 0x7ft
        0x66t 0x6t 0xbt 0x7ft
        0x5ct 0x6t 0xbt 0x7ft
        0xf9t 0x5t 0xbt 0x7ft
        0xf9t 0x5t 0xbt 0x7ft
        0xe4t 0x5t 0xbt 0x7ft
        0x55t 0x6t 0xbt 0x7ft
        0xe1t 0x5t 0xbt 0x7ft
        0x56t 0x6t 0xbt 0x7ft
        0xebt 0x5t 0xbt 0x7ft
        0xedt 0x5t 0xbt 0x7ft
        0xeft 0x5t 0xbt 0x7ft
        0x58t 0x6t 0xbt 0x7ft
        0xf3t 0x5t 0xbt 0x7ft
        0xf5t 0x5t 0xbt 0x7ft
        0xf4t 0x5t 0xbt 0x7ft
        0x59t 0x6t 0xbt 0x7ft
        0x20t 0x6t 0xbt 0x7ft
        0x21t 0x6t 0xbt 0x7ft
        0xfft 0x5t 0xbt 0x7ft
        0x2t 0x6t 0xbt 0x7ft
        0x26t 0x6t 0xbt 0x7ft
        0x1t 0x6t 0xbt 0x7ft
        0x4t 0x6t 0xbt 0x7ft
        0x5t 0x6t 0xbt 0x7ft
        0x5bt 0x6t 0xbt 0x7ft
        0x8t 0x6t 0xbt 0x7ft
        0x2dt 0x6t 0xbt 0x7ft
        0xf8t 0x5t 0xbt 0x7ft
        0x6t 0x6t 0xbt 0x7ft
        0x27t 0x6t 0xbt 0x7ft
        0x9t 0x6t 0xbt 0x7ft
        0xfat 0x5t 0xbt 0x7ft
        0x60t 0x6t 0xbt 0x7ft
        0xdt 0x6t 0xbt 0x7ft
        0xdct 0x5t 0xbt 0x7ft
        0xd7t 0x5t 0xbt 0x7ft
        0x5ft 0x6t 0xbt 0x7ft
        0x10t 0x6t 0xbt 0x7ft
        0x11t 0x6t 0xbt 0x7ft
        0x13t 0x6t 0xbt 0x7ft
        0x62t 0x6t 0xbt 0x7ft
        0x15t 0x6t 0xbt 0x7ft
        0x63t 0x6t 0xbt 0x7ft
        0xeat 0x5t 0xbt 0x7ft
        0x16t 0x6t 0xbt 0x7ft
        0x7t 0x6t 0xbt 0x7ft
        0x65t 0x6t 0xbt 0x7ft
        0x3t 0x6t 0xbt 0x7ft
        0x14t 0x6t 0xbt 0x7ft
        0x49t 0x6t 0xbt 0x7ft
        0xf0t 0x5t 0xbt 0x7ft
        0xf2t 0x5t 0xbt 0x7ft
        0xe6t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceRoamingHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/Settings;)Lcom/android/settings/glance/GlanceCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/Settings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    sput-boolean p0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$2500()J
    .locals 2

    .prologue
    .line 300
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 300
    sget v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 300
    sget v0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    sput p0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method public static callSearchMenu()V
    .locals 4

    .prologue
    const v3, 0x10008000

    .line 4762
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4763
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/SearchMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4764
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4765
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4771
    :cond_0
    :goto_0
    return-void

    .line 4766
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4767
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4768
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4769
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 3081
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3083
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 3104
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3084
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3085
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3086
    iget v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchTopLevelHeaderId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3088
    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3089
    iget-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3092
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3093
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3094
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3095
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3096
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3097
    if-eqz v2, :cond_0

    .line 3098
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3101
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getSelectedTabFromFragmentClass()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4503
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSelectedTabFromFragmentClass() mFragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 4508
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4509
    :cond_1
    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :cond_2
    :goto_1
    return v1

    .line 4507
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4514
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_8

    .line 4515
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4516
    :cond_6
    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 4517
    goto :goto_1

    .line 4514
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4521
    :cond_8
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 4522
    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4523
    :cond_a
    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 4524
    goto :goto_1

    .line 4521
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4528
    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4529
    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4530
    :cond_e
    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 4531
    goto/16 :goto_1

    .line 4528
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4536
    .end local v0           #i:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_14

    .line 4537
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4538
    :cond_12
    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4536
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4543
    :cond_14
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_18

    .line 4544
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 4545
    :cond_16
    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 4546
    goto/16 :goto_1

    .line 4543
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4550
    :cond_18
    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 4551
    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4552
    :cond_1a
    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 4553
    goto/16 :goto_1

    .line 4550
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4557
    :cond_1c
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4558
    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4559
    :cond_1e
    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 4560
    goto/16 :goto_1

    .line 4557
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter "mHeader"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4482
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 4483
    .local v2, voice_control_intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 4484
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4485
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4486
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 4490
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1823
    if-eqz p1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1825
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1827
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1828
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1832
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f090a44

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2938
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 2939
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2940
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_d

    aget-object v8, v5, v4

    .line 2941
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2944
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2945
    const-string v0, "com.android.tmo_myphonebook"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2946
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2951
    :cond_0
    if-nez v3, :cond_2

    .line 2940
    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 2955
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 2956
    array-length v0, v9

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 2960
    :goto_2
    array-length v10, v9

    if-lez v10, :cond_4

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 2961
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2962
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2963
    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_3
    move v0, v2

    .line 2974
    :cond_4
    :goto_3
    array-length v10, v9

    if-lez v10, :cond_6

    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 2975
    sget-object v10, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2976
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2977
    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_5
    move v0, v2

    .line 2987
    :cond_6
    :goto_4
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2988
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2989
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_7

    .line 2990
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 2992
    :cond_7
    if-eqz v0, :cond_c

    .line 2993
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 2994
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 2995
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2996
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2998
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3000
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3015
    :cond_8
    :goto_5
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3016
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 2956
    goto/16 :goto_2

    .line 2968
    :cond_a
    const-string v10, "com.sec.android.app.sns3.facebook"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2969
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    goto :goto_3

    .line 2982
    :cond_b
    const-string v10, "com.sec.android.app.sns3.twitter"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2983
    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    goto :goto_4

    .line 3003
    :cond_c
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 3004
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 3005
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3006
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3007
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3011
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3020
    :cond_d
    new-instance v0, Lcom/android/settings/Settings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$8;-><init>(Lcom/android/settings/Settings;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3027
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3028
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_6

    .line 3030
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_f

    .line 3031
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 3032
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    .line 3034
    :cond_f
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 4615
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4617
    .local v1, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 4618
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4620
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 4622
    :cond_0
    const-string v3, "Settings"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4629
    :goto_0
    return v2

    .line 4626
    :catch_0
    move-exception v0

    .line 4627
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOrangeCustomer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4472
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4478
    :cond_0
    :goto_0
    return v0

    .line 4475
    :cond_1
    const-string v1, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 4494
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 4495
    .local v0, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 4496
    const/4 v1, 0x1

    .line 4498
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 3076
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 4410
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Settings;->sShowNoHomeNotice:Z

    .line 4411
    return-void
.end method

.method private setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 4570
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 4571
    .local v0, actionBar:Lcom/android/internal/app/ActionBarImpl;
    const/4 v1, 0x0

    .line 4573
    .local v1, setHasEmbeddedTabs:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4574
    if-eqz v1, :cond_0

    .line 4575
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4576
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4583
    :cond_0
    :goto_0
    return-void

    .line 4581
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4580
    :catch_1
    move-exception v2

    goto :goto_0

    .line 4579
    :catch_2
    move-exception v2

    goto :goto_0

    .line 4578
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private showGlanceView()V
    .locals 4

    .prologue
    .line 2144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    .line 2145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/Settings;->mGlanceCardList:Ljava/util/ArrayList;

    .line 2147
    invoke-static {}, Lcom/samsung/android/glanceview/GlanceView;->getGlanceView()Landroid/view/View;

    move-result-object v0

    .line 2148
    check-cast v0, Lcom/samsung/android/glanceview/GlanceView;

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    .line 2150
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2151
    const v1, 0x7f0400a3

    iget-object v2, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2153
    const v0, 0x7f0b01d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    .line 2155
    const v0, 0x7f0b01da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    .line 2157
    invoke-static {}, Lcom/android/settings/Utils;->getRoamingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceRoamingHeaders:Ljava/util/List;

    .line 2160
    const v0, 0x7f070057

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2161
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 2163
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->getBatteryLowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    .line 2166
    const v0, 0x7f070055

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2167
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 2169
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getLowMemoryState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    .line 2172
    const v0, 0x7f070056

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2173
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 2176
    :cond_2
    new-instance v0, Lcom/android/settings/glance/GlancePreviewAdapter;

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/glance/GlancePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    .line 2177
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2178
    new-instance v0, Lcom/android/settings/glance/GlanceCardAdapter;

    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sget-object v3, Lcom/android/settings/Settings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/glance/GlanceCardAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    .line 2179
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/Settings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2180
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/Settings;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2182
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/Settings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$7;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2202
    return-void
.end method

.method private switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fc"

    .prologue
    .line 3120
    move-object v0, p1

    .line 3121
    .local v0, switchId:Ljava/lang/String;
    const-string v1, "com.android.settings.SPenSettingsMenu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3122
    const-string v0, "com.android.settings.PenSettingsMenu"

    .line 3124
    :cond_0
    return-object v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 1695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1696
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1698
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1775
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1777
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1778
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1780
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1781
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1782
    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1783
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1784
    iput-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1785
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1786
    iput-object v3, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1788
    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1789
    iget v1, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 1791
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1792
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1794
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find parent activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchTopLevelHeaderId(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 3107
    const/4 v0, -0x1

    .line 3108
    .local v0, switchId:I
    packed-switch p1, :pswitch_data_0

    .line 3113
    move v0, p1

    .line 3116
    :goto_0
    return v0

    .line 3110
    :pswitch_0
    const v0, 0x7f0b0623

    .line 3111
    goto :goto_0

    .line 3108
    :pswitch_data_0
    .packed-switch 0x7f0b05d9
        :pswitch_0
    .end packed-switch
.end method

.method private updateGlanceHeaderList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, glanceHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 2210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2212
    .local v0, detailData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2214
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 2216
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v5, :cond_0

    .line 2217
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2219
    :cond_0
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v5, :cond_1

    .line 2220
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 2222
    :cond_1
    if-nez v2, :cond_2

    .line 2224
    new-instance v4, Lcom/samsung/android/card/Card;

    invoke-direct {v4}, Lcom/samsung/android/card/Card;-><init>()V

    .line 2225
    .local v4, previewCard:Lcom/samsung/android/card/Card;
    invoke-virtual {v4, v8}, Lcom/samsung/android/card/Card;->setType(I)Lcom/samsung/android/card/Card;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/card/Card;->setThumbNail(I)Lcom/samsung/android/card/Card;

    move-result-object v6

    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/samsung/android/card/Card;->setName(Ljava/lang/String;)Lcom/samsung/android/card/Card;

    move-result-object v6

    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/samsung/android/card/Card;->setSummaryInfo(Ljava/lang/String;)Lcom/samsung/android/card/Card;

    .line 2229
    iget-object v5, p0, Lcom/android/settings/Settings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    .end local v4           #previewCard:Lcom/samsung/android/card/Card;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2232
    :cond_2
    new-instance v3, Lcom/samsung/android/card/Card;

    invoke-direct {v3}, Lcom/samsung/android/card/Card;-><init>()V

    .line 2233
    .local v3, mItemcard:Lcom/samsung/android/card/Card;
    invoke-virtual {v3, v8}, Lcom/samsung/android/card/Card;->setType(I)Lcom/samsung/android/card/Card;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/card/Card;->setThumbNail(I)Lcom/samsung/android/card/Card;

    move-result-object v6

    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/samsung/android/card/Card;->setName(Ljava/lang/String;)Lcom/samsung/android/card/Card;

    move-result-object v5

    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/card/Card;->setMoreInfo(Ljava/lang/String;)Lcom/samsung/android/card/Card;

    .line 2237
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2240
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #mItemcard:Lcom/samsung/android/card/Card;
    :cond_3
    sget-object v5, Lcom/android/settings/Settings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    return-void
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2247
    const/4 v1, 0x0

    .line 2249
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2250
    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move v3, v1

    .line 2251
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7f

    .line 2252
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 2254
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 2256
    const v2, 0x7f0b05fa

    if-ne v6, v2, :cond_4

    .line 2257
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "shopdemo"

    const/4 v7, 0x0

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2260
    const/4 v4, 0x1

    .line 2261
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2262
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_81

    .line 2263
    const/4 v2, 0x0

    .line 2265
    :goto_1
    const-string v4, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/4 v4, 0x1

    if-eq v7, v4, :cond_0

    if-nez v2, :cond_1

    .line 2268
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2917
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b05d8

    cmp-long v2, v7, v9

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2920
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2924
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_80

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_80

    .line 2926
    iget-object v2, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b05d8

    cmp-long v2, v7, v9

    if-eqz v2, :cond_3

    .line 2929
    iput-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2931
    :cond_3
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2932
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    :goto_3
    move v3, v1

    .line 2934
    goto/16 :goto_0

    .line 2269
    :cond_4
    const v2, 0x7f0b0642

    if-ne v6, v2, :cond_5

    .line 2274
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2276
    :cond_5
    const v2, 0x7f0b0648

    if-eq v6, v2, :cond_1

    .line 2282
    const v2, 0x7f0b064a

    if-eq v6, v2, :cond_1

    .line 2288
    const v2, 0x7f0b064b

    if-eq v6, v2, :cond_1

    .line 2294
    const v2, 0x7f0b061a

    if-ne v6, v2, :cond_7

    .line 2295
    const-string v2, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2299
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2301
    :cond_7
    const v2, 0x7f0b0640

    if-eq v6, v2, :cond_1

    .line 2305
    const v2, 0x7f0b05d8

    if-ne v6, v2, :cond_a

    .line 2306
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2307
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2309
    :cond_a
    const v2, 0x7f0b0656

    if-ne v6, v2, :cond_b

    .line 2311
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2313
    :cond_b
    const v2, 0x7f0b0609

    if-ne v6, v2, :cond_c

    .line 2314
    invoke-direct {p0}, Lcom/android/settings/Settings;->needsDockSettings()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2315
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2316
    :cond_c
    const v2, 0x7f0b0657

    if-eq v6, v2, :cond_d

    const v2, 0x7f0b065d

    if-ne v6, v2, :cond_e

    .line 2317
    :cond_d
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_2

    .line 2318
    :cond_e
    const v2, 0x7f0b05e0

    if-ne v6, v2, :cond_f

    .line 2320
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2321
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2332
    :cond_f
    const v2, 0x7f0b05df

    if-ne v6, v2, :cond_10

    .line 2334
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2347
    :cond_10
    const v2, 0x7f0b0655

    if-ne v6, v2, :cond_11

    .line 2350
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2352
    :cond_11
    const v2, 0x7f0b05e1

    if-ne v6, v2, :cond_12

    .line 2366
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2368
    :cond_12
    const v2, 0x7f0b05eb

    if-ne v6, v2, :cond_14

    .line 2370
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2372
    :cond_13
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2374
    :cond_14
    const v2, 0x7f0b05ed

    if-ne v6, v2, :cond_15

    .line 2375
    iput-object v1, p0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    .line 2376
    const-string v2, "CTC"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2377
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2383
    :cond_15
    const v2, 0x7f0b05e2

    if-ne v6, v2, :cond_16

    .line 2385
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.bluetooth"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2386
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2388
    :cond_16
    const v2, 0x7f0b0605

    if-ne v6, v2, :cond_17

    .line 2389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2391
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2393
    :cond_17
    const v2, 0x7f0b05e8

    if-ne v6, v2, :cond_1a

    .line 2395
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 2397
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    .line 2399
    :goto_4
    :try_start_0
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v2, :cond_1

    .line 2400
    :cond_18
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2402
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 2397
    :cond_19
    const/4 v2, 0x0

    goto :goto_4

    .line 2405
    :cond_1a
    const v2, 0x7f0b062c

    if-ne v6, v2, :cond_1b

    .line 2408
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    if-nez v2, :cond_1

    .line 2409
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2411
    :cond_1b
    const v2, 0x7f0b05eb

    if-ne v6, v2, :cond_1d

    .line 2413
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2415
    :cond_1c
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2417
    :cond_1d
    const v2, 0x7f0b05ec

    if-ne v6, v2, :cond_1f

    .line 2419
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2421
    :cond_1e
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2423
    :cond_1f
    const v2, 0x7f0b05ed

    if-ne v6, v2, :cond_20

    .line 2424
    const-string v2, "CTC"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2425
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2427
    :cond_20
    const v2, 0x7f0b05e7

    if-ne v6, v2, :cond_21

    .line 2429
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2431
    :cond_21
    const v2, 0x7f0b0610

    if-ne v6, v2, :cond_22

    .line 2433
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2437
    :cond_22
    const v2, 0x7f0b0611

    if-eq v6, v2, :cond_1

    .line 2446
    const v2, 0x7f0b064b

    if-eq v6, v2, :cond_1

    .line 2452
    const v2, 0x7f0b0613

    if-ne v6, v2, :cond_23

    .line 2454
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2456
    :cond_23
    const v2, 0x7f0b0614

    if-ne v6, v2, :cond_24

    .line 2457
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2460
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2462
    :cond_24
    const v2, 0x7f0b0649

    if-ne v6, v2, :cond_26

    .line 2463
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2464
    :cond_25
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2466
    :cond_26
    const v2, 0x7f0b0612

    if-eq v6, v2, :cond_1

    .line 2473
    const v2, 0x7f0b05fd

    if-ne v6, v2, :cond_27

    .line 2474
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2475
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2477
    :cond_27
    const v2, 0x7f0b0662

    if-ne v6, v2, :cond_28

    .line 2479
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2481
    :cond_28
    const v2, 0x7f0b0620

    if-ne v6, v2, :cond_29

    .line 2482
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2484
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2486
    :cond_29
    const v2, 0x7f0b0621

    if-ne v6, v2, :cond_2b

    .line 2487
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2489
    :cond_2a
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2491
    :cond_2b
    const v2, 0x7f0b05ff

    if-ne v6, v2, :cond_2c

    .line 2492
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2494
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2496
    :cond_2c
    const v2, 0x7f0b0608

    if-eq v6, v2, :cond_1

    .line 2500
    const v2, 0x7f0b05d7

    if-ne v6, v2, :cond_2d

    .line 2507
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2527
    :cond_2d
    const v2, 0x7f0b062d

    if-ne v6, v2, :cond_2e

    .line 2529
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2531
    :cond_2e
    const v2, 0x7f0b05d9

    if-ne v6, v2, :cond_2f

    .line 2533
    add-int/lit8 v2, v3, 0x1

    .line 2534
    invoke-direct {p0, p1, v2}, Lcom/android/settings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    goto/16 :goto_2

    .line 2536
    :cond_2f
    const v2, 0x7f0b0616

    if-eq v6, v2, :cond_1

    .line 2540
    const v2, 0x7f0b060d

    if-eq v6, v2, :cond_1

    .line 2544
    const v2, 0x7f0b0663

    if-ne v6, v2, :cond_30

    .line 2547
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2549
    :cond_30
    const v2, 0x7f0b05ea

    if-ne v6, v2, :cond_31

    .line 2552
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2554
    :cond_31
    const v2, 0x7f0b05f9

    if-ne v6, v2, :cond_32

    .line 2556
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2558
    :cond_32
    const v2, 0x7f0b062b

    if-ne v6, v2, :cond_35

    .line 2560
    const/4 v2, 0x1

    .line 2561
    sget-object v4, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_33

    .line 2562
    const/4 v2, 0x0

    .line 2565
    :cond_33
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_34

    if-nez v2, :cond_1

    .line 2568
    :cond_34
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2577
    :cond_35
    const v2, 0x7f0b05dc

    if-ne v6, v2, :cond_37

    .line 2578
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2579
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2582
    :cond_36
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.android.cloudagent"

    const/4 v7, 0x5

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2583
    :catch_1
    move-exception v2

    .line 2584
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2587
    :cond_37
    const v2, 0x7f0b0632

    if-ne v6, v2, :cond_39

    .line 2588
    const-string v2, "SPR"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "BST"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2590
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2595
    :cond_38
    const-string v2, "Settings"

    const-string v4, "Samsung non-FOTA devices"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2597
    const-string v4, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2598
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2599
    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 2601
    :cond_39
    const v2, 0x7f0b0631

    if-ne v6, v2, :cond_3a

    .line 2602
    const/4 v2, 0x1

    .line 2604
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2610
    :goto_5
    if-nez v2, :cond_1

    .line 2611
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2605
    :catch_2
    move-exception v2

    .line 2606
    const/4 v2, 0x0

    goto :goto_5

    .line 2613
    :cond_3a
    const v2, 0x7f0b065b

    if-ne v6, v2, :cond_3b

    .line 2615
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2617
    :cond_3b
    const v2, 0x7f0b0600

    if-ne v6, v2, :cond_3c

    .line 2619
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2621
    :cond_3c
    const v2, 0x7f0b05f0

    if-ne v6, v2, :cond_44

    .line 2624
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.nfc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2626
    :cond_3d
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2630
    :cond_3e
    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.android.settings.nfcsummary"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2631
    if-eqz v2, :cond_3f

    .line 2632
    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 2633
    const/4 v2, 0x0

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2638
    :cond_3f
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2639
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 2640
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_40

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_41

    .line 2641
    :cond_40
    const v2, 0x7f0902d9

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 2635
    :catch_3
    move-exception v2

    .line 2636
    const-string v2, "CSCAppRes"

    const-string v4, "No data for CSCAppResourceUri"

    invoke-static {v2, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2642
    :cond_41
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_42

    .line 2643
    const v2, 0x7f0902d7

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 2644
    :cond_42
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_43

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 2645
    :cond_43
    const v2, 0x7f0902d8

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 2649
    :cond_44
    const v2, 0x7f0b05f2

    if-ne v6, v2, :cond_46

    .line 2651
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.nfc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2655
    :cond_45
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2657
    :cond_46
    const v2, 0x7f0b05f4

    if-ne v6, v2, :cond_47

    .line 2659
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2661
    :cond_47
    const v2, 0x7f0b05f5

    if-eq v6, v2, :cond_1

    .line 2666
    const v2, 0x7f0b05f6

    if-ne v6, v2, :cond_48

    .line 2668
    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.android.app.kieswifi"

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 2669
    :catch_4
    move-exception v2

    .line 2670
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2673
    :cond_48
    const v2, 0x7f0b05f8

    if-ne v6, v2, :cond_4b

    .line 2674
    const-string v2, "DCM"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-direct {p0}, Lcom/android/settings/Settings;->isDocomoSettingsDisabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2675
    :cond_49
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2679
    :cond_4a
    :try_start_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.nttdocomo.android.docomoset"

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    .line 2680
    :catch_5
    move-exception v2

    .line 2681
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2684
    :cond_4b
    const v2, 0x7f0b065c

    if-ne v6, v2, :cond_4c

    .line 2697
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2699
    :cond_4c
    const v2, 0x7f0b0630

    if-ne v6, v2, :cond_4e

    .line 2701
    if-eqz v5, :cond_4d

    invoke-direct {p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2702
    :cond_4d
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2704
    :cond_4e
    const v2, 0x7f0b05da

    if-ne v6, v2, :cond_4f

    .line 2705
    const-string v2, "no_modify_accounts"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2706
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2708
    :cond_4f
    const v2, 0x7f0b0667

    if-ne v6, v2, :cond_51

    .line 2710
    if-eqz v5, :cond_50

    invoke-direct {p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2711
    :cond_50
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2713
    :cond_51
    const v2, 0x7f0b0604

    if-ne v6, v2, :cond_52

    .line 2714
    const-string v2, "ro.multisim.simslotcount"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 2717
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2723
    :cond_52
    const v2, 0x7f0b0660

    if-ne v6, v2, :cond_54

    .line 2724
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_53

    .line 2725
    :cond_53
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2729
    :cond_54
    const v2, 0x7f0b05e4

    if-ne v6, v2, :cond_55

    .line 2730
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2731
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2735
    :cond_55
    const v2, 0x7f0b05e5

    if-ne v6, v2, :cond_57

    .line 2736
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2737
    :cond_56
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2740
    :cond_57
    const v2, 0x7f0b05e6

    if-ne v6, v2, :cond_58

    .line 2741
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2742
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2745
    :cond_58
    const v2, 0x7f0b05e3

    if-ne v6, v2, :cond_5c

    .line 2746
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-nez v2, :cond_59

    .line 2747
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2749
    :cond_59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    move v4, v2

    .line 2752
    :goto_7
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2755
    if-nez v4, :cond_5a

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5a

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ATT"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2757
    :cond_5a
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2749
    :cond_5b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_7

    .line 2761
    :cond_5c
    const v2, 0x7f0b05f9

    if-ne v6, v2, :cond_5d

    .line 2764
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2766
    :cond_5d
    const v2, 0x7f0b0654

    if-ne v6, v2, :cond_5e

    .line 2769
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2771
    :cond_5e
    const v2, 0x7f0b062c

    if-eq v6, v2, :cond_1

    .line 2775
    const v2, 0x7f0b0629

    if-ne v6, v2, :cond_60

    .line 2776
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2777
    if-eqz v2, :cond_5f

    const-string v4, "ChinaNalSecurity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2778
    :cond_5f
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2780
    :cond_60
    const v2, 0x7f0b0658

    if-ne v6, v2, :cond_61

    .line 2782
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2784
    :cond_61
    const v2, 0x7f0b05ee

    if-ne v6, v2, :cond_63

    .line 2788
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    .line 2789
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 2790
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2788
    :cond_62
    const/4 v2, 0x0

    goto :goto_8

    .line 2792
    :cond_63
    const v2, 0x7f0b0664

    if-ne v6, v2, :cond_64

    .line 2794
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2796
    :cond_64
    const v2, 0x7f0b0607

    if-ne v6, v2, :cond_65

    .line 2798
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2800
    :cond_65
    const v2, 0x7f0b0665

    if-ne v6, v2, :cond_66

    .line 2801
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2802
    :cond_66
    const v2, 0x7f0b0602

    if-eq v6, v2, :cond_1

    .line 2806
    const v2, 0x7f0b0626

    if-ne v6, v2, :cond_67

    .line 2808
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2810
    :cond_67
    const v2, 0x7f0b0603

    if-ne v6, v2, :cond_68

    .line 2820
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090b6b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 2821
    const/4 v2, 0x0

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 2823
    :cond_68
    const v2, 0x7f0b0601

    if-ne v6, v2, :cond_6b

    .line 2824
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    .line 2825
    :goto_9
    sget-object v4, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_69

    if-eqz v2, :cond_1

    .line 2826
    :cond_69
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2824
    :cond_6a
    const/4 v2, 0x0

    goto :goto_9

    .line 2828
    :cond_6b
    const v2, 0x7f0b0606

    if-ne v6, v2, :cond_6c

    .line 2833
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.android.app.safetyassurance"

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    .line 2834
    :catch_6
    move-exception v2

    .line 2835
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2838
    :cond_6c
    const v2, 0x7f0b0627

    if-ne v6, v2, :cond_6d

    .line 2840
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2842
    :cond_6d
    const v2, 0x7f0b0659

    if-ne v6, v2, :cond_6e

    .line 2844
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2846
    :cond_6e
    const v2, 0x7f0b0615

    if-ne v6, v2, :cond_70

    .line 2847
    invoke-direct {p0, v1}, Lcom/android/settings/Settings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-direct {p0}, Lcom/android/settings/Settings;->isVoiceControlEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2849
    :cond_6f
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2851
    :cond_70
    const v2, 0x7f0b065f

    if-ne v6, v2, :cond_71

    .line 2853
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2855
    :cond_71
    const v2, 0x7f0b0661

    if-ne v6, v2, :cond_72

    .line 2857
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2859
    :cond_72
    const v2, 0x7f0b05f3

    if-ne v6, v2, :cond_73

    .line 2860
    const-string v2, "ALL"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2861
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2863
    :cond_73
    const v2, 0x7f0b060f

    if-ne v6, v2, :cond_74

    .line 2864
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2865
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2867
    :cond_74
    const v2, 0x7f0b060b

    if-ne v6, v2, :cond_76

    .line 2869
    :try_start_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.skyfire.browser.toolbar.att"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2871
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_75

    if-eqz v2, :cond_75

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 2872
    :cond_75
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    .line 2874
    :catch_7
    move-exception v2

    .line 2875
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2876
    const-string v2, "Settings"

    const-string v4, "Browser Bar is not found"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2878
    :cond_76
    const v2, 0x7f0b05f1

    if-ne v6, v2, :cond_78

    .line 2880
    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sequent.controlpanel"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2881
    if-eqz v2, :cond_77

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_77

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 2882
    :cond_77
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 2884
    :catch_8
    move-exception v2

    .line 2885
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2886
    const-string v2, "Settings"

    const-string v4, "Sprint Touch is not found"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2889
    :cond_78
    const v2, 0x7f0b0623

    if-eq v6, v2, :cond_1

    .line 2893
    const v2, 0x7f0b05fc

    if-ne v6, v2, :cond_7a

    .line 2894
    const-string v2, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    iget-boolean v2, p0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    if-nez v2, :cond_1

    .line 2895
    :cond_79
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2897
    :cond_7a
    const v2, 0x7f0b05e9

    if-ne v6, v2, :cond_7b

    .line 2898
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-nez v2, :cond_1

    .line 2899
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2900
    :cond_7b
    const v2, 0x7f0b05e4

    if-ne v6, v2, :cond_7c

    .line 2901
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2902
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 2903
    :cond_7c
    const v2, 0x7f0b0622

    if-ne v6, v2, :cond_7d

    .line 2905
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2907
    :cond_7d
    const v2, 0x7f0b0617

    if-ne v6, v2, :cond_7e

    .line 2908
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2909
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2911
    :cond_7e
    const v2, 0x7f0b061f

    if-ne v6, v2, :cond_1

    .line 2913
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2935
    :cond_7f
    return-void

    :cond_80
    move v1, v3

    goto/16 :goto_3

    :cond_81
    move v2, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 4417
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4419
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 4422
    if-eqz v0, :cond_2

    .line 4424
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4428
    :goto_0
    return v0

    .line 4424
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4428
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1836
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1837
    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1842
    const-string v3, ":android:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1843
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1844
    if-eqz v3, :cond_0

    .line 1845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1849
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1850
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 1853
    :goto_1
    return-object v0

    .line 1847
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1853
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1861
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 1873
    :cond_0
    :goto_0
    return-object v0

    .line 1863
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1864
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1866
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .parameter "fragmentName"

    .prologue
    .line 1678
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1679
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1681
    :goto_1
    return v1

    .line 1678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1681
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 4405
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 4406
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 4407
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/16 v4, 0x1610

    const/4 v3, 0x0

    .line 3153
    if-nez p1, :cond_2

    .line 3154
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3155
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 3156
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 3157
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 3174
    :cond_0
    :goto_0
    return-void

    .line 3159
    .restart local v0       #listAdapter:Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 3164
    :cond_2
    const/16 v1, 0x160f

    if-ne p1, v1, :cond_0

    .line 3165
    if-ne p2, v4, :cond_0

    .line 3166
    const-string v1, "Settings"

    const-string v2, "Search direct back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 3168
    sput-boolean v3, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 3169
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 3170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 4450
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 4452
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 4453
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 4455
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3179
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 3180
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3182
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3183
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const v1, 0x7f07002c

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1952
    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v7, :cond_0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_b

    .line 1954
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 1956
    if-gez v0, :cond_1

    .line 1957
    invoke-direct {p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v0

    .line 1960
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1986
    invoke-virtual {p0, v1, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2008
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2009
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 2012
    :cond_2
    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v7, :cond_3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_3

    .line 2013
    iget-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2014
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2016
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    :goto_1
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 2022
    iget v0, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-lez v0, :cond_3

    .line 2023
    iput v2, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 2028
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_7

    move v1, v2

    .line 2029
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 2030
    sget-wide v3, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_16

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v5, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_16

    .line 2031
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 2032
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2033
    :cond_4
    sget-wide v3, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0601

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 2034
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2035
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2037
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 2038
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2044
    :cond_5
    :goto_3
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2045
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    const-string v3, "args_from_search"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2047
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v3, "extra_from_search"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2049
    const-string v3, "extra_depth_counter_key"

    iget v4, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2050
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2051
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2059
    :goto_4
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2104
    :cond_6
    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2107
    :cond_7
    return-void

    .line 1962
    :pswitch_0
    invoke-virtual {p0, v1, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1965
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1966
    const v0, 0x7f07003d

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1968
    :cond_8
    const v0, 0x7f070034

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1972
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1973
    const v0, 0x7f070060

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1975
    :cond_9
    const v0, 0x7f07000b

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1979
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1980
    const v0, 0x7f070054

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1982
    :cond_a
    const v0, 0x7f07006e

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2005
    :cond_b
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2017
    :catch_0
    move-exception v0

    .line 2019
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 2040
    :cond_c
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 2041
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 2053
    :cond_d
    const-string v1, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 2054
    const-string v1, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2055
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2056
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2057
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2060
    :cond_e
    sget-wide v3, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0606

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 2061
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2062
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2064
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_10

    .line 2065
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2071
    :cond_f
    :goto_6
    const-string v1, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 2072
    const-string v1, "com.sec.android.app.safetyassurance"

    const-string v3, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2073
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2074
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2075
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 2067
    :cond_10
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    .line 2068
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6

    .line 2077
    :cond_11
    sget v3, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v3, :cond_12

    .line 2078
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2079
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2080
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 2082
    :cond_12
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0640

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e6

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 2088
    :cond_13
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2089
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2090
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 2092
    :cond_14
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2093
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 2098
    :cond_15
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2099
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 2029
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 1960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    const/4 v5, 0x1

    .line 1898
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 1903
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/DreamSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1915
    :cond_0
    const-string v4, "settings:ui_options"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1919
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1921
    const-class v4, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1922
    .local v3, isWifiSettingsFragment:Z
    const-class v4, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1924
    .local v2, isBtSettingsFragment:Z
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 1925
    :cond_2
    const-string v4, "settings:guide_is_on"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1928
    :cond_3
    const/4 v0, 0x0

    .line 1930
    .local v0, guideExtra:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1931
    const-string v0, "wifi"

    .line 1939
    :cond_4
    :goto_0
    const-string v4, "settings:guide_mode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1943
    .end local v0           #guideExtra:Ljava/lang/String;
    .end local v2           #isBtSettingsFragment:Z
    .end local v3           #isWifiSettingsFragment:Z
    :cond_5
    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1944
    return-object v1

    .line 1933
    .restart local v0       #guideExtra:Ljava/lang/String;
    .restart local v2       #isBtSettingsFragment:Z
    .restart local v3       #isWifiSettingsFragment:Z
    :cond_6
    if-nez v2, :cond_7

    const-class v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1935
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x7f0b0021

    .line 1298
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1300
    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v3, :cond_0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_1

    .line 1302
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, -0x3

    .line 1305
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1307
    iget-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1308
    iget-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1317
    :goto_0
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    .line 1318
    invoke-direct {p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 1321
    :cond_1
    return-void

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1313
    iget-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f04000a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v8, 0x7f0b0021

    const/4 v3, 0x0

    .line 773
    const-string v0, "VerificationLog"

    const-string v4, "onCreate"

    invoke-static {v0, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sput-object p0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 775
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "settings:ui_options"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "settings:ui_options"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/Window;->setUiOptions(I)V

    .line 780
    :cond_0
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setMultiPane(Z)V

    .line 782
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 785
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    .line 786
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 787
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 788
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 790
    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 793
    const-string v0, "com.android.settings.Settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.Settings$DisplaySettingsTab"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.Settings$InputAndControlSettingsTab"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.Settings$GeneralSettingsTab"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "settings_listui"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    .line 800
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    new-instance v0, Lcom/android/settings/Settings$ToddlerModeObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$ToddlerModeObserver;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    .line 823
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 824
    const v0, 0x7f100062

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 826
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 827
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 828
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 829
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 831
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_5

    .line 856
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 857
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 858
    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 859
    sget-boolean v4, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v4, :cond_8

    .line 860
    sget-boolean v4, Lcom/android/settings/Settings;->mIsFromSearch:Z

    iput-boolean v4, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 861
    const-string v4, "extra_header_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 862
    const-string v4, "extra_setting_value"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 863
    const-string v4, "extra_fragment_bundle_key"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 864
    const-string v4, "extra_second_fragment_bundle_key"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 865
    iget-object v4, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 866
    const-string v4, "SettingsSearch"

    iget-object v5, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v6, "extra_parent_preference_key"

    const-string v7, "None"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_7
    const-string v4, "extra_depth_counter_key"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 869
    iget v0, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 870
    sget v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_14

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 876
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_9

    .line 877
    invoke-static {p0}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 881
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 883
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v0, :cond_15

    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v1, :cond_a

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1003
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1004
    iget v0, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 1007
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 1011
    :cond_b
    if-eqz p1, :cond_c

    .line 1012
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1013
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1017
    :cond_c
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_d

    .line 1019
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1022
    :cond_d
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_e

    .line 1023
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/settings/Settings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/Settings$4;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {p0, v0, v3, v4}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1032
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v4, 0x7f03

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1036
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1037
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1038
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1042
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1043
    :cond_10
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v0, :cond_11

    .line 1044
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1045
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v0, :cond_1d

    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v1, :cond_11

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1057
    :cond_11
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v0, :cond_1e

    sget v0, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v0, v1, :cond_12

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1092
    :cond_12
    :goto_4
    return-void

    :cond_13
    move v0, v2

    .line 793
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 870
    goto/16 :goto_1

    .line 885
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 887
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 888
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 889
    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 891
    :cond_16
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 893
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 894
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_17

    .line 895
    invoke-direct {p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 897
    :cond_17
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v5, v0, -0x3

    .line 900
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 901
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 902
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 903
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 904
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 905
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    .line 941
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 942
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f090ca4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 944
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0916d3

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 950
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0916d4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 956
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 960
    iget-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0916d5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 962
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v5, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 991
    :goto_6
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 992
    if-eqz p1, :cond_1c

    .line 993
    const-string v0, "com.android.settings.ACTION_BAR_INDEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 994
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 995
    iput v0, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 996
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore Tab index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 907
    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 908
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 909
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 910
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04000b

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 913
    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 915
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 916
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f020288

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 918
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 919
    iget-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f02028a

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 921
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 922
    iget-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f02028d

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 924
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    .line 925
    iget-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f02028c

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 927
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 928
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f020288

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 931
    iget-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f020289

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 933
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 934
    iget-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f020286

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    .line 937
    iget-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f02028e

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 967
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f090ca4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 969
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 973
    iget-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f09025e

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 974
    iget-object v0, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 975
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 979
    iget-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f090596

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 980
    iget-object v0, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 981
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v6, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 985
    iget-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f090358

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 986
    iget-object v0, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 987
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v5, Lcom/android/settings/Settings$SettingsTabListener;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 998
    :cond_1c
    invoke-direct {p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_2

    .line 1047
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_tab_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1048
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_3

    .line 1060
    :cond_1e
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_12

    .line 1065
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.SETTING_HEADER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_12

    .line 1068
    const-string v1, "display_headers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1069
    iget-object v0, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object v3, v0

    .line 1076
    :cond_1f
    :goto_7
    if-eqz v3, :cond_12

    .line 1077
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move v1, v2

    move v0, v2

    .line 1078
    :goto_8
    invoke-virtual {v4}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1079
    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v0, v1

    .line 1078
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1070
    :cond_21
    const-string v1, "input_headers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1071
    iget-object v0, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object v3, v0

    goto :goto_7

    .line 1072
    :cond_22
    const-string v1, "general_headers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1073
    iget-object v0, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object v3, v0

    goto :goto_7

    .line 1084
    :cond_23
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1088
    :catch_0
    move-exception v0

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020500

    const/16 v2, 0xcb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4714
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings.Settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4716
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_2

    .line 4717
    const v0, 0x7f090ca8

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4718
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4719
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4720
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 4729
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4730
    const/16 v0, 0xcc

    const v1, 0x7f090598

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4731
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4732
    const v1, 0x7f0201df

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4735
    :cond_1
    return v4

    .line 4722
    :cond_2
    const v0, 0x7f090ca9

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4723
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4724
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4725
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020500

    const/16 v4, 0xcb

    const/4 v3, 0x0

    .line 4693
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 4694
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4695
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_1

    .line 4696
    const v0, 0x7f090ca8

    invoke-interface {p2, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4697
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4698
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4699
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 4706
    :goto_0
    const/4 v0, 0x1

    .line 4708
    :cond_0
    return v0

    .line 4701
    :cond_1
    const v0, 0x7f090ca9

    invoke-interface {p2, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4702
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4703
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4704
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1531
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1532
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 1533
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1535
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 1882
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1883
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1884
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1885
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1886
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1887
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1888
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1892
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4302
    .line 4303
    iget-object v0, p0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v0, :cond_2

    .line 4304
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4305
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    .line 4306
    if-ne v0, v1, :cond_1

    .line 4307
    iget-object v0, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09155c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/Settings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/Settings$9;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4315
    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4316
    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 4364
    :cond_0
    :goto_0
    return-void

    .line 4319
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4320
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.InternationalRoamingSetting"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4321
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4322
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4323
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4326
    :cond_2
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05da

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    move v0, v1

    .line 4330
    :goto_1
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b061a

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 4331
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 4333
    :goto_2
    sget-object v4, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_6

    move v4, v1

    .line 4336
    :goto_3
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4340
    :cond_3
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 4341
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "toddler_mode_switch"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 4354
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 4358
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_7

    .line 4359
    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->highlightHeader(I)V

    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 4331
    goto :goto_2

    :cond_6
    move v4, v2

    .line 4333
    goto :goto_3

    .line 4361
    :cond_7
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1686
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 1687
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    :cond_0
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 1689
    :cond_1
    const/4 v0, 0x1

    .line 1691
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4434
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4437
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 4441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4442
    const/4 v0, 0x1

    .line 4445
    :cond_0
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1097
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05e5

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0640

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05e6

    if-ne v0, v1, :cond_1

    .line 1103
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1104
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    #calls: Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/settings/Settings$HeaderAdapter;->access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V

    .line 1108
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1803
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1806
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1810
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1814
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1816
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1817
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 1820
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 4740
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4742
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4753
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 4754
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 4757
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 4744
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v1, :cond_2

    .line 4745
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4748
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4747
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 4742
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 1482
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1484
    iget-object v4, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    .line 1486
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1493
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1494
    iget-object v4, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1495
    .local v3, mPagerlistAdapter:Landroid/widget/ListAdapter;
    instance-of v4, v3, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v4, :cond_1

    .line 1496
    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v3           #mPagerlistAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1493
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1487
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 1488
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1500
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1501
    .local v2, listAdapter:Landroid/widget/ListAdapter;
    instance-of v4, v2, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v4, :cond_3

    .line 1502
    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v2           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1505
    :cond_3
    iget-object v4, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1507
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1512
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1513
    iget-object v4, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1518
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1519
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1527
    :cond_5
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 4369
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 4370
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4371
    const v3, 0x7f0905a3

    .line 4380
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 4382
    const/4 v0, 0x1

    return v0

    .line 4372
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4374
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4375
    const v3, 0x7f0901cf

    goto :goto_0

    .line 4377
    :cond_2
    const v3, 0x7f0901cd

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const-wide/16 v2, -0x1

    .line 1347
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1348
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    :cond_0
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1350
    sput-wide v2, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 1353
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 1357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1358
    const-string v0, "VerificationLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    .line 1361
    :goto_0
    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1363
    instance-of v3, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v3, :cond_0

    .line 1364
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1361
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1377
    :cond_1
    new-instance v0, Lcom/android/settings/Settings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$5;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1383
    iget-object v0, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1386
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1387
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_2

    .line 1388
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1390
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1392
    iget-object v0, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1395
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_1
    invoke-static {p0, v0}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 1408
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1414
    :cond_4
    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1433
    :cond_5
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableGlance(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1434
    const-string v0, "com.android.settings.SubSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1436
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v0, :cond_6

    .line 1439
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    :cond_6
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_7

    .line 1443
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 1446
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    :cond_8
    :goto_2
    return-void

    .line 1396
    :cond_9
    iget-object v0, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_1

    .line 1449
    :cond_a
    const-string v0, "com.android.settings.Settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1451
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 1452
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v0, :cond_b

    .line 1453
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 1454
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/Settings;->showGlanceView()V

    .line 1459
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_c

    .line 1460
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    :cond_c
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 1463
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1466
    :cond_d
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 1467
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v0, :cond_e

    .line 1469
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 1470
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    :cond_e
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 1473
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :cond_f
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 1476
    iget-object v0, p0, Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 1325
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1328
    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1329
    const-string v1, "com.android.settings.CURRENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 1332
    const-string v1, "com.android.settings.PARENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1335
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1337
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1338
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 1339
    .local v0, savedIndex:I
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Tab index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v1, "com.android.settings.ACTION_BAR_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    .end local v0           #savedIndex:I
    :cond_2
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 4463
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 4465
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/Settings;)V

    .line 4467
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 4392
    if-nez p1, :cond_0

    .line 4393
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 4399
    :goto_0
    return-void

    .line 4395
    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4397
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setSearchHierarchyOpen(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 3186
    iput-boolean p1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 3187
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 4387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 5
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    const/4 v4, 0x1

    .line 1244
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 1245
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    if-nez p2, :cond_0

    .line 1257
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1259
    .restart local p2
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1261
    iget v1, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 1262
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1263
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1271
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1273
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1275
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1293
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1266
    :cond_2
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1289
    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7
    .parameter "header"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1702
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 1703
    iput-object v3, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1704
    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1707
    :cond_0
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1708
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_3

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1709
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1711
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    iget v2, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_5

    .line 1714
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 1715
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1723
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1724
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1725
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1729
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1730
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1731
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1734
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1737
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1738
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1739
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 1743
    :cond_4
    return-void

    .line 1718
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 1719
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
