.class public Lcom/android/settings/GridSettings;
.super Landroid/preference/PreferenceActivity;
.source "GridSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/DrawerManager$OnDrawerCallback;
.implements Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$NoHomeDialogFragment;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

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

.field private static sShowNoHomeNotice:Z


# instance fields
.field private DRAWER_GROUP_BY_CATEGORY_ID:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field drawer:Lcom/android/settings/DrawerManager;

.field private isGridView:Z

.field private listUI:Landroid/view/View;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

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

.field mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

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

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field mOnGlanceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOpenSearchHierarchy:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mTopLevelHeaderId:I

.field private prevScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    sput-boolean v2, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 221
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 222
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 224
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 228
    sput-boolean v2, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 704
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.android.settings.safetycare.SafetyCareHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/glance/GlanceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/AccountMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/DockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 223
    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 225
    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 226
    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 227
    iput v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 232
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 280
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    .line 281
    new-instance v0, Lcom/android/settings/GridSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$1;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 304
    new-instance v0, Lcom/android/settings/GridSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$2;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1499
    new-instance v0, Lcom/android/settings/GridSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$6;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mOnGlanceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void

    .line 232
    nop

    :array_0
    .array-data 0x4
        0xdet 0x5t 0xbt 0x7ft
        0xe0t 0x5t 0xbt 0x7ft
        0xe2t 0x5t 0xbt 0x7ft
        0xe8t 0x5t 0xbt 0x7ft
        0xeet 0x5t 0xbt 0x7ft
        0x5at 0x6t 0xbt 0x7ft
        0xfet 0x5t 0xbt 0x7ft
        0xfbt 0x5t 0xbt 0x7ft
        0x2et 0x6t 0xbt 0x7ft
        0x28t 0x6t 0xbt 0x7ft
        0x2ct 0x6t 0xbt 0x7ft
        0x5et 0x6t 0xbt 0x7ft
        0xe9t 0x5t 0xbt 0x7ft
        0x2ft 0x6t 0xbt 0x7ft
        0xet 0x6t 0xbt 0x7ft
        0x2bt 0x6t 0xbt 0x7ft
        0xd9t 0x5t 0xbt 0x7ft
        0xdat 0x5t 0xbt 0x7ft
        0x44t 0x6t 0xbt 0x7ft
        0x25t 0x6t 0xbt 0x7ft
        0x33t 0x6t 0xbt 0x7ft
        0xat 0x6t 0xbt 0x7ft
        0x66t 0x6t 0xbt 0x7ft
        0x5ct 0x6t 0xbt 0x7ft
        0x27t 0x6t 0xbt 0x7ft
        0xf9t 0x5t 0xbt 0x7ft
    .end array-data

    .line 262
    :array_1
    .array-data 0x4
        0xdet 0x5t 0xbt 0x7ft
        0x3et 0x6t 0xbt 0x7ft
        0x3ft 0x6t 0xbt 0x7ft
        0x44t 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/GridSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GridSettings;)Lcom/android/settings/glance/GlanceCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GridSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 515
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 520
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .prologue
    .line 1330
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    .line 1334
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 1337
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1338
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    if-eqz v0, :cond_0

    .line 1340
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1341
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1342
    if-eqz v1, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 873
    if-eqz p1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 875
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 877
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 882
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

    .line 1229
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1230
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1231
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    .line 1232
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1233
    if-nez v8, :cond_0

    .line 1231
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1237
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1238
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1240
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1241
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1242
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    .line 1243
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1245
    :cond_1
    if-eqz v0, :cond_4

    .line 1246
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1247
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1248
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1251
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1253
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1268
    :cond_2
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1238
    goto :goto_2

    .line 1256
    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1257
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1258
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1260
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1264
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1273
    :cond_5
    new-instance v0, Lcom/android/settings/GridSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$5;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1280
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1281
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 1283
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_7

    .line 1284
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1285
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    .line 1287
    :cond_7
    return p2
.end method

.method private makeFavoriteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 971
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 975
    const v2, 0x7f07005a

    invoke-virtual {p0, v2, v0}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 976
    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;)V

    .line 984
    const-string v2, "favoriteList"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 986
    return-object v1
.end method

.method private showGlanceView()V
    .locals 4

    .prologue
    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    .line 1536
    invoke-static {}, Lcom/samsung/android/glanceview/GlanceView;->getGlanceView()Landroid/view/View;

    move-result-object v0

    .line 1537
    check-cast v0, Lcom/samsung/android/glanceview/GlanceView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    .line 1539
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1540
    const v1, 0x7f0400a3

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1542
    const v0, 0x7f0b01d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    .line 1544
    const v0, 0x7f0b01da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    .line 1546
    invoke-static {}, Lcom/android/settings/Utils;->getRoamingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    .line 1549
    const v0, 0x7f070057

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1550
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1552
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->getBatteryLowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    .line 1555
    const v0, 0x7f070055

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1556
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1558
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getLowMemoryState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    .line 1561
    const v0, 0x7f070056

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1562
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1565
    :cond_2
    new-instance v0, Lcom/android/settings/glance/GlancePreviewAdapter;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/glance/GlancePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    .line 1566
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1567
    new-instance v0, Lcom/android/settings/glance/GlanceCardAdapter;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sget-object v3, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/glance/GlanceCardAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    .line 1568
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1569
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mOnGlanceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1571
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/GridSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/GridSettings$7;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1591
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 786
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 788
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 833
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 835
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 836
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 841
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 842
    iput-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 843
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 844
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 846
    invoke-direct {p0, v3}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 847
    iget v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 849
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 850
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 852
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    const-string v0, "GridSettings"

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

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .local v0, detailData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1470
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1472
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v5, :cond_0

    .line 1473
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1475
    :cond_0
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v5, :cond_1

    .line 1476
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 1478
    :cond_1
    if-nez v2, :cond_2

    .line 1480
    new-instance v4, Lcom/samsung/android/card/Card;

    invoke-direct {v4}, Lcom/samsung/android/card/Card;-><init>()V

    .line 1481
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

    .line 1485
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    .end local v4           #previewCard:Lcom/samsung/android/card/Card;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1488
    :cond_2
    new-instance v3, Lcom/samsung/android/card/Card;

    invoke-direct {v3}, Lcom/samsung/android/card/Card;-><init>()V

    .line 1489
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

    .line 1493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1496
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #mItemcard:Lcom/samsung/android/card/Card;
    :cond_3
    sget-object v5, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    return-void
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 7
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
    .line 1119
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1122
    const/4 v1, 0x0

    .line 1124
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1125
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move v2, v1

    .line 1126
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_13

    .line 1127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1129
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    .line 1130
    const v5, 0x7f0b0657

    if-eq v4, v5, :cond_0

    const v5, 0x7f0b065d

    if-ne v4, v5, :cond_4

    .line 1131
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 1209
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1212
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1216
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_14

    .line 1218
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_3

    invoke-static {v1}, Lcom/android/settings/HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1220
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1222
    :cond_3
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_2
    move v2, v1

    .line 1225
    goto :goto_0

    .line 1132
    :cond_4
    const v5, 0x7f0b05e0

    if-ne v4, v5, :cond_5

    .line 1134
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1135
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1137
    :cond_5
    const v5, 0x7f0b05e2

    if-ne v4, v5, :cond_6

    .line 1139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1140
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1142
    :cond_6
    const v5, 0x7f0b05e8

    if-ne v4, v5, :cond_7

    .line 1144
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 1147
    :try_start_0
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1148
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1150
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 1153
    :cond_7
    const v5, 0x7f0b062c

    if-ne v4, v5, :cond_8

    .line 1156
    iget-boolean v5, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    if-nez v5, :cond_1

    .line 1157
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1159
    :cond_8
    const v5, 0x7f0b05d9

    if-ne v4, v5, :cond_9

    .line 1160
    add-int/lit8 v2, v2, 0x1

    .line 1161
    invoke-direct {p0, p1, v2}, Lcom/android/settings/GridSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_1

    .line 1162
    :cond_9
    const v5, 0x7f0b05f9

    if-ne v4, v5, :cond_a

    .line 1163
    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1164
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1166
    :cond_a
    const v5, 0x7f0b062b

    if-ne v4, v5, :cond_c

    .line 1167
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1170
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1178
    :cond_c
    const v5, 0x7f0b065c

    if-ne v4, v5, :cond_f

    .line 1179
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1180
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1183
    :cond_d
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    .line 1184
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc.hce"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1186
    :cond_e
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1189
    :cond_f
    const v5, 0x7f0b0627

    if-ne v4, v5, :cond_10

    .line 1192
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1195
    :cond_10
    const v5, 0x7f0b0630

    if-ne v4, v5, :cond_11

    .line 1196
    if-nez v3, :cond_1

    .line 1197
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1199
    :cond_11
    const v5, 0x7f0b05da

    if-ne v4, v5, :cond_12

    .line 1200
    const-string v5, "no_modify_accounts"

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1201
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1203
    :cond_12
    const v5, 0x7f0b0617

    if-ne v4, v5, :cond_1

    .line 1204
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1205
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1226
    :cond_13
    return-void

    :cond_14
    move v1, v2

    goto/16 :goto_2
.end method

.method private updateHeaderListByType(Ljava/util/List;I)V
    .locals 9
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    add-int/lit8 v8, p2, -0x1

    aget v0, v7, v8

    .line 1103
    .local v0, currentCategory:I
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    array-length v7, v7

    if-ne p2, v7, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v7

    .line 1105
    .local v4, nextCategory:I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1106
    .local v2, from:I
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1108
    .local v6, to:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    .local v5, subList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    array-length v7, v7

    if-ne p2, v7, :cond_1

    add-int/lit8 v1, v6, 0x1

    .line 1110
    .local v1, dest:I
    :goto_1
    move v3, v2

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1103
    .end local v1           #dest:I
    .end local v2           #from:I
    .end local v3           #i:I
    .end local v4           #nextCategory:I
    .end local v5           #subList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .end local v6           #to:I
    :cond_0
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    aget v4, v7, p2

    goto :goto_0

    .restart local v2       #from:I
    .restart local v4       #nextCategory:I
    .restart local v5       #subList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v6       #to:I
    :cond_1
    move v1, v6

    .line 1109
    goto :goto_1

    .line 1114
    .restart local v1       #dest:I
    .restart local v3       #i:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1115
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    return-void
.end method

.method private updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1292
    const-string v2, "home_prefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1293
    const-string v3, "do_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1325
    :goto_0
    return v0

    .line 1298
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1300
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1305
    sget-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    if-eqz v3, :cond_1

    .line 1306
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 1307
    invoke-static {p0}, Lcom/android/settings/GridSettings$NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v0, v1

    .line 1309
    goto :goto_0

    .line 1314
    :cond_2
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 1315
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1317
    :cond_3
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1319
    :catch_0
    move-exception v1

    .line 1321
    const-string v3, "GridSettings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 886
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 887
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 892
    const-string v3, ":android:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 894
    if-eqz v3, :cond_0

    .line 895
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 899
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 900
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 903
    :goto_1
    return-object v0

    .line 897
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 903
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1358
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 923
    :cond_0
    :goto_0
    return-object v0

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 916
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

    .line 920
    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .parameter "fragmentName"

    .prologue
    .line 778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 779
    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 781
    :goto_1
    return v1

    .line 778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1453
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1454
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1455
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
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 995
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    const v0, 0x7f07005a

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 999
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;)V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-nez v0, :cond_5

    move v0, v2

    .line 1004
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1013
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    if-eq v1, v0, :cond_1

    .line 1014
    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 1015
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/android/settings/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/GridSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    .line 1017
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 1018
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b0023

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1022
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_4

    move v1, v2

    .line 1023
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1024
    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v5, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_10

    .line 1025
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1026
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1027
    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0601

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 1028
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1029
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 1032
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1038
    :cond_2
    :goto_3
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1039
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    const-string v3, "args_from_search"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1041
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string v3, "extra_from_search"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    const-string v3, "extra_depth_counter_key"

    iget v4, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1045
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1053
    :goto_4
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1096
    :cond_3
    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1099
    :cond_4
    return-void

    .line 1003
    :cond_5
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0}, Lcom/android/settings/DrawerManager;->getCheckedItemPosition()I

    move-result v0

    goto/16 :goto_0

    .line 1006
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/GridSettings;->updateHeaderListByType(Ljava/util/List;I)V

    goto/16 :goto_1

    .line 1009
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->loadMySettings(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 1034
    :cond_6
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1035
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_3

    .line 1047
    :cond_7
    const-string v1, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1048
    const-string v1, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1051
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1054
    :cond_8
    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0606

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 1055
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1056
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1058
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 1059
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1065
    :cond_9
    :goto_6
    const-string v1, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1066
    const-string v1, "com.sec.android.app.safetyassurance"

    const-string v3, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1068
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1061
    :cond_a
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 1062
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6

    .line 1071
    :cond_b
    sget v3, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v3, :cond_c

    .line 1072
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1073
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1075
    :cond_c
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0640

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05e6

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 1081
    :cond_d
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1082
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1084
    :cond_e
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1085
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 1090
    :cond_f
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1091
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 1023
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 948
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 953
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 966
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/DrawerManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "settings:ui_options"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "settings:ui_options"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 343
    :cond_0
    sput-object p0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 345
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v2}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 346
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 347
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 349
    const-string v2, "development"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 356
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 358
    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "settings_listui"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_a

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 367
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->getMetaData()V

    .line 368
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 369
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 370
    iput-boolean v3, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 373
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/GridSettings;->listUI:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 377
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    new-instance v2, Lcom/android/settings/GridSettingsFragment;

    invoke-direct {v2}, Lcom/android/settings/GridSettingsFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    .line 378
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 379
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v5, 0x7f0b0023

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 383
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget v2, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v2}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 387
    const v2, 0x7f090196

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 391
    :cond_2
    if-eqz p1, :cond_3

    .line 392
    const-string v2, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 393
    const-string v2, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 397
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_4

    .line 399
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v7}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_5

    .line 403
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/settings/GridSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/GridSettings$3;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {p0, v2, v7, v5}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 412
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 418
    :cond_6
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v2, :cond_7

    .line 419
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2, v3}, Lcom/android/settings/DrawerManager;->selectItem(I)V

    .line 424
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 426
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 427
    sget-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v2, :cond_9

    .line 428
    sget-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 429
    const-string v2, "extra_header_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 430
    const-string v2, "extra_setting_value"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 431
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 432
    const-string v2, "extra_second_fragment_bundle_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 433
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    .line 434
    const-string v2, "SettingsSearch"

    iget-object v5, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v6, "extra_parent_preference_key"

    const-string v7, "None"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_8
    const-string v2, "extra_depth_counter_key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 437
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 438
    sget v2, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    if-eq v2, v8, :cond_b

    :goto_1
    sput-boolean v4, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 442
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    return-void

    :cond_a
    move v2, v4

    .line 358
    goto/16 :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_b
    move v4, v3

    .line 438
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 447
    const-string v0, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/16 v0, 0xc8

    const v1, 0x7f090598

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 450
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 451
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 454
    :cond_0
    const/16 v0, 0xc9

    const v1, 0x7f09001f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 455
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/GridSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 457
    const/16 v0, 0xca

    const v1, 0x7f090023

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v1

    .line 459
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 462
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 693
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 694
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 695
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 697
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 932
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 934
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 935
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 938
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 942
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1379
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1380
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1391
    const/4 v1, 0x0

    .line 1392
    .local v1, revert:Z
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b05da

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1393
    const/4 v1, 0x1

    .line 1397
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2}, Lcom/android/settings/DrawerManager;->getCheckedItemPosition()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, -0x1

    if-le p2, v2, :cond_1

    .line 1398
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, key:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->saveFrequent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1403
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1405
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_2

    .line 1406
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v2, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_2
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 861
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 864
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 868
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 870
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2, p1}, Lcom/android/settings/DrawerManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    :goto_0
    return v0

    .line 493
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 511
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 495
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_listui"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 501
    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "settings_listui"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 504
    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    goto :goto_1

    .line 508
    :pswitch_2
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_1

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 670
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 672
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ActivityName"

    const-string v3, "com.android.settings.GridSettings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 677
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 679
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 681
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 682
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/HeaderAdapter;

    if-eqz v2, :cond_0

    .line 683
    check-cast v1, Lcom/android/settings/HeaderAdapter;

    .end local v1           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/HeaderAdapter;->pause()V

    .line 686
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 688
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 689
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0}, Lcom/android/settings/DrawerManager;->syncState()V

    .line 564
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1415
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1416
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    const v3, 0x7f0905a3

    .line 1426
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

    .line 1428
    const/4 v0, 0x1

    return v0

    .line 1418
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

    .line 1420
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1421
    const v3, 0x7f0901cf

    goto :goto_0

    .line 1423
    :cond_2
    const v3, 0x7f0901cd

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v1}, Lcom/android/settings/DrawerManager;->isDrawerOpen()Z

    .line 473
    :cond_0
    const/16 v1, 0xc9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 475
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 482
    :goto_0
    return v1

    .line 477
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v1, :cond_2

    .line 478
    const v1, 0x7f09001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 482
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 480
    :cond_2
    const v1, 0x7f09001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 591
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 593
    new-instance v3, Lcom/android/settings/GridSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/GridSettings$4;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 599
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 602
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 603
    .local v2, listAdapter:Landroid/widget/ListAdapter;
    instance-of v3, v2, Lcom/android/settings/HeaderAdapter;

    if-eqz v3, :cond_0

    .line 604
    check-cast v2, Lcom/android/settings/HeaderAdapter;

    .end local v2           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/android/settings/HeaderAdapter;->resume()V

    .line 606
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 608
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 611
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "ActivityName"

    const-string v4, "com.android.settings.GridSettings"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "IconName"

    const-string v4, "Add to favorite;Drawer;"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v3, "register"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 614
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 616
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 617
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.settings.Drawer"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v3, "com.android.settings.Favorite"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnableGlance(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 622
    const-string v3, "com.android.settings.SubSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 625
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v3, :cond_1

    .line 627
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 628
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 631
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_2
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 634
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :cond_3
    :goto_0
    return-void

    .line 637
    :cond_4
    const-string v3, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 639
    invoke-virtual {p0, v8}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 640
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v3, :cond_5

    .line 641
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 642
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->showGlanceView()V

    .line 647
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_6

    .line 648
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_6
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 651
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 654
    :cond_7
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setGlanceViewEnable(Z)V

    .line 655
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v3, :cond_8

    .line 657
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 658
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :cond_8
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_9

    .line 661
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 663
    :cond_9
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 664
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 587
    :cond_1
    return-void
.end method

.method public onSelectedItem(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1385
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1386
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .parameter "layoutResID"

    .prologue
    .line 321
    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, v:Landroid/view/View;
    const v2, 0x7f0b0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 324
    .local v1, vs:Landroid/view/ViewStub;
    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 325
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->listUI:Landroid/view/View;

    .line 327
    new-instance v2, Lcom/android/settings/DrawerManager;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/DrawerManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    .line 329
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 334
    .end local v0           #v:Landroid/view/View;
    .end local v1           #vs:Landroid/view/ViewStub;
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter

    .prologue
    .line 1440
    if-nez p1, :cond_0

    .line 1441
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1447
    :goto_0
    return-void

    .line 1443
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1445
    new-instance v1, Lcom/android/settings/HeaderAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1434
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/GridSettings;

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

    .line 526
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 527
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-nez p2, :cond_0

    .line 529
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 531
    .restart local p2
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    iget v1, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 534
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 543
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 544
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 547
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 553
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 538
    :cond_2
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 550
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

    .line 792
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 793
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 794
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 797
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 801
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_3

    .line 804
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 813
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 814
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 819
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 820
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 821
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 825
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 826
    return-void

    .line 808
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
