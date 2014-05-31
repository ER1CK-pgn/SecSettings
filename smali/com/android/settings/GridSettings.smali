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

    .line 192
    sput-boolean v2, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 224
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 225
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 227
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 231
    sput-boolean v2, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 713
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

    .line 161
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 228
    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 229
    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 230
    iput v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 235
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 283
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    .line 284
    new-instance v0, Lcom/android/settings/GridSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$1;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 307
    new-instance v0, Lcom/android/settings/GridSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$2;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1508
    new-instance v0, Lcom/android/settings/GridSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$6;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mOnGlanceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void

    .line 235
    nop

    :array_0
    .array-data 0x4
        0xedt 0x5t 0xbt 0x7ft
        0xeft 0x5t 0xbt 0x7ft
        0xf1t 0x5t 0xbt 0x7ft
        0xf7t 0x5t 0xbt 0x7ft
        0xfdt 0x5t 0xbt 0x7ft
        0x69t 0x6t 0xbt 0x7ft
        0xdt 0x6t 0xbt 0x7ft
        0xat 0x6t 0xbt 0x7ft
        0x3dt 0x6t 0xbt 0x7ft
        0x38t 0x6t 0xbt 0x7ft
        0x3bt 0x6t 0xbt 0x7ft
        0x6dt 0x6t 0xbt 0x7ft
        0xf8t 0x5t 0xbt 0x7ft
        0x3et 0x6t 0xbt 0x7ft
        0x1dt 0x6t 0xbt 0x7ft
        0x3at 0x6t 0xbt 0x7ft
        0xe8t 0x5t 0xbt 0x7ft
        0xe9t 0x5t 0xbt 0x7ft
        0x53t 0x6t 0xbt 0x7ft
        0x35t 0x6t 0xbt 0x7ft
        0x42t 0x6t 0xbt 0x7ft
        0x19t 0x6t 0xbt 0x7ft
        0x75t 0x6t 0xbt 0x7ft
        0x6bt 0x6t 0xbt 0x7ft
        0x37t 0x6t 0xbt 0x7ft
        0x8t 0x6t 0xbt 0x7ft
    .end array-data

    .line 265
    :array_1
    .array-data 0x4
        0xedt 0x5t 0xbt 0x7ft
        0x4dt 0x6t 0xbt 0x7ft
        0x4et 0x6t 0xbt 0x7ft
        0x53t 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/GridSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GridSettings;)Lcom/android/settings/glance/GlanceCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GridSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 518
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 523
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .prologue
    .line 1339
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1341
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    .line 1343
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 1346
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1347
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_0

    .line 1349
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1350
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1351
    if-eqz v1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 884
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 891
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
    const v12, 0x7f090a7a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1239
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1240
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    .line 1241
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1242
    if-nez v8, :cond_0

    .line 1240
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1246
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1247
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1249
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1250
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1251
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    .line 1252
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1254
    :cond_1
    if-eqz v0, :cond_4

    .line 1255
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1256
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1257
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1260
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1262
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1277
    :cond_2
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1247
    goto :goto_2

    .line 1265
    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1266
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1267
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1269
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1273
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1282
    :cond_5
    new-instance v0, Lcom/android/settings/GridSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$5;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1289
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1290
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 1292
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_7

    .line 1293
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1294
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    .line 1296
    :cond_7
    return p2
.end method

.method private makeFavoriteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 980
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 984
    const v2, 0x7f07005a

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 985
    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;)V

    .line 993
    const-string v2, "favoriteList"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 995
    return-object v1
.end method

.method private showGlanceView()V
    .locals 4

    .prologue
    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    .line 1545
    invoke-static {}, Lcom/samsung/android/glanceview/GlanceView;->getGlanceView()Landroid/view/View;

    move-result-object v0

    .line 1546
    check-cast v0, Lcom/samsung/android/glanceview/GlanceView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    .line 1548
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1549
    const v1, 0x7f0400a4

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1551
    const v0, 0x7f0b01dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    .line 1553
    const v0, 0x7f0b01de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    .line 1555
    invoke-static {}, Lcom/android/settings/Utils;->getRoamingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    .line 1558
    const v0, 0x7f070057

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1559
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1561
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->getBatteryLowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    .line 1564
    const v0, 0x7f070055

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1565
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1567
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getLowMemoryState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    .line 1570
    const v0, 0x7f070056

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1571
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->updateGlanceHeaderList(Ljava/util/List;)V

    .line 1574
    :cond_2
    new-instance v0, Lcom/android/settings/glance/GlancePreviewAdapter;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/glance/GlancePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    .line 1575
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlancePreviewAdapter:Lcom/android/settings/glance/GlancePreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1576
    new-instance v0, Lcom/android/settings/glance/GlanceCardAdapter;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sget-object v3, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/glance/GlanceCardAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    .line 1577
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1578
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mOnGlanceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1580
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/GridSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/GridSettings$7;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1600
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 797
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 842
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 845
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 848
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 850
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 851
    iput-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 852
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 853
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 855
    invoke-direct {p0, v3}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 856
    iget v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 858
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 859
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 861
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
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

    .line 1475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v0, detailData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/card/Card;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1479
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1481
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v5, :cond_0

    .line 1482
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1484
    :cond_0
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v5, :cond_1

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 1487
    :cond_1
    if-nez v2, :cond_2

    .line 1489
    new-instance v4, Lcom/samsung/android/card/Card;

    invoke-direct {v4}, Lcom/samsung/android/card/Card;-><init>()V

    .line 1490
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

    .line 1494
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mGlancePreviewItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    .end local v4           #previewCard:Lcom/samsung/android/card/Card;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    :cond_2
    new-instance v3, Lcom/samsung/android/card/Card;

    invoke-direct {v3}, Lcom/samsung/android/card/Card;-><init>()V

    .line 1498
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

    .line 1502
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1505
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #mItemcard:Lcom/samsung/android/card/Card;
    :cond_3
    sget-object v5, Lcom/android/settings/GridSettings;->mGlanceCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
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
    .line 1128
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1131
    const/4 v1, 0x0

    .line 1133
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1134
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move v2, v1

    .line 1135
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_13

    .line 1136
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1138
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    .line 1139
    const v5, 0x7f0b0666

    if-eq v4, v5, :cond_0

    const v5, 0x7f0b066c

    if-ne v4, v5, :cond_4

    .line 1140
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 1218
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

    .line 1221
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1225
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_14

    .line 1227
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_3

    invoke-static {v1}, Lcom/android/settings/HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1229
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1231
    :cond_3
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_2
    move v2, v1

    .line 1234
    goto :goto_0

    .line 1141
    :cond_4
    const v5, 0x7f0b05ef

    if-ne v4, v5, :cond_5

    .line 1143
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1144
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1146
    :cond_5
    const v5, 0x7f0b05f1

    if-ne v4, v5, :cond_6

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1149
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1151
    :cond_6
    const v5, 0x7f0b05f7

    if-ne v4, v5, :cond_7

    .line 1153
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 1156
    :try_start_0
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1157
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1159
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 1162
    :cond_7
    const v5, 0x7f0b063b

    if-ne v4, v5, :cond_8

    .line 1165
    iget-boolean v5, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    if-nez v5, :cond_1

    .line 1166
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1168
    :cond_8
    const v5, 0x7f0b05e8

    if-ne v4, v5, :cond_9

    .line 1169
    add-int/lit8 v2, v2, 0x1

    .line 1170
    invoke-direct {p0, p1, v2}, Lcom/android/settings/GridSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_1

    .line 1171
    :cond_9
    const v5, 0x7f0b0608

    if-ne v4, v5, :cond_a

    .line 1172
    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1173
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1175
    :cond_a
    const v5, 0x7f0b063a

    if-ne v4, v5, :cond_c

    .line 1176
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1179
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1187
    :cond_c
    const v5, 0x7f0b066b

    if-ne v4, v5, :cond_f

    .line 1188
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1189
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1192
    :cond_d
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    .line 1193
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc.hce"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1195
    :cond_e
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1198
    :cond_f
    const v5, 0x7f0b0637

    if-ne v4, v5, :cond_10

    .line 1201
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1204
    :cond_10
    const v5, 0x7f0b063f

    if-ne v4, v5, :cond_11

    .line 1205
    if-nez v3, :cond_1

    .line 1206
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1208
    :cond_11
    const v5, 0x7f0b05e9

    if-ne v4, v5, :cond_12

    .line 1209
    const-string v5, "no_modify_accounts"

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1210
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1212
    :cond_12
    const v5, 0x7f0b0626

    if-ne v4, v5, :cond_1

    .line 1213
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1214
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1235
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
    .line 1111
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    add-int/lit8 v8, p2, -0x1

    aget v0, v7, v8

    .line 1112
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

    .line 1114
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

    .line 1115
    .local v2, from:I
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1117
    .local v6, to:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .local v5, subList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/settings/GridSettings;->DRAWER_GROUP_BY_CATEGORY_ID:[I

    array-length v7, v7

    if-ne p2, v7, :cond_1

    add-int/lit8 v1, v6, 0x1

    .line 1119
    .local v1, dest:I
    :goto_1
    move v3, v2

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1120
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1112
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

    .line 1118
    goto :goto_1

    .line 1123
    .restart local v1       #dest:I
    .restart local v3       #i:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1124
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1125
    return-void
.end method

.method private updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1301
    const-string v2, "home_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1302
    const-string v3, "do_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    :goto_0
    return v0

    .line 1307
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1309
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1314
    sget-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    if-eqz v3, :cond_1

    .line 1315
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 1316
    invoke-static {p0}, Lcom/android/settings/GridSettings$NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v0, v1

    .line 1318
    goto :goto_0

    .line 1323
    :cond_2
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 1324
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1326
    :cond_3
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v1

    .line 1330
    const-string v3, "GridSettings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 895
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 896
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 901
    const-string v3, ":android:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 903
    if-eqz v3, :cond_0

    .line 904
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 908
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 909
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 912
    :goto_1
    return-object v0

    .line 906
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 912
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1367
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 932
    :cond_0
    :goto_0
    return-object v0

    .line 922
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 925
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

    .line 929
    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1362
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .parameter "fragmentName"

    .prologue
    .line 787
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 788
    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 790
    :goto_1
    return v1

    .line 787
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1462
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1463
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1464
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

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    const v0, 0x7f07005a

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-nez v0, :cond_5

    move v0, v2

    .line 1013
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1022
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    if-eq v1, v0, :cond_1

    .line 1023
    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1025
    new-instance v1, Lcom/android/settings/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/GridSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    .line 1026
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 1027
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b0023

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1031
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_4

    move v1, v2

    .line 1032
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1033
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

    .line 1034
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1035
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1036
    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0610

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 1037
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1038
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 1041
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1047
    :cond_2
    :goto_3
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    const-string v3, "args_from_search"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1050
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v3, "extra_from_search"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1052
    const-string v3, "extra_depth_counter_key"

    iget v4, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1054
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1062
    :goto_4
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1105
    :cond_3
    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1108
    :cond_4
    return-void

    .line 1012
    :cond_5
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0}, Lcom/android/settings/DrawerManager;->getCheckedItemPosition()I

    move-result v0

    goto/16 :goto_0

    .line 1015
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/GridSettings;->updateHeaderListByType(Ljava/util/List;I)V

    goto/16 :goto_1

    .line 1018
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->loadMySettings(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 1043
    :cond_6
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_3

    .line 1056
    :cond_7
    const-string v1, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1057
    const-string v1, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1063
    :cond_8
    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0615

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 1064
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1065
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1067
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 1068
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1074
    :cond_9
    :goto_6
    const-string v1, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1075
    const-string v1, "com.sec.android.app.safetyassurance"

    const-string v3, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1077
    const-string v1, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1070
    :cond_a
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 1071
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6

    .line 1080
    :cond_b
    sget v3, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v3, :cond_c

    .line 1081
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1084
    :cond_c
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05f4

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b064f

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b05f5

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 1090
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1093
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1094
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 1099
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1100
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_5

    .line 1032
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 1013
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
    .line 957
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 962
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

    .line 971
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 975
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/DrawerManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 576
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

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "settings:ui_options"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "settings:ui_options"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 346
    :cond_0
    sput-object p0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 348
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v2}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 349
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 350
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 352
    const-string v2, "development"

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 359
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 361
    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "settings_listui"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_a

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 370
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->getMetaData()V

    .line 371
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 372
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    iput-boolean v3, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 376
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    iget-object v2, p0, Lcom/android/settings/GridSettings;->listUI:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 380
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    new-instance v2, Lcom/android/settings/GridSettingsFragment;

    invoke-direct {v2}, Lcom/android/settings/GridSettingsFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    .line 381
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 382
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v5, 0x7f0b0023

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 386
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    iget v2, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v2}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 390
    const v2, 0x7f090199

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->setTitle(I)V

    .line 394
    :cond_2
    if-eqz p1, :cond_3

    .line 395
    const-string v2, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 396
    const-string v2, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 400
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_4

    .line 402
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v7}, Lcom/android/settings/GridSettings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 405
    :cond_4
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_5

    .line 406
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/settings/GridSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/GridSettings$3;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {p0, v2, v7, v5}, Lcom/android/settings/GridSettings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 415
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 421
    :cond_6
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v2, :cond_7

    .line 422
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2, v3}, Lcom/android/settings/DrawerManager;->selectItem(I)V

    .line 427
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 429
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 430
    sget-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v2, :cond_9

    .line 431
    sget-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 432
    const-string v2, "extra_header_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 433
    const-string v2, "extra_setting_value"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 434
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 435
    const-string v2, "extra_second_fragment_bundle_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 436
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    .line 437
    const-string v2, "SettingsSearch"

    iget-object v5, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v6, "extra_parent_preference_key"

    const-string v7, "None"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_8
    const-string v2, "extra_depth_counter_key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 440
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 441
    sget v2, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    if-eq v2, v8, :cond_b

    :goto_1
    sput-boolean v4, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 445
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    return-void

    :cond_a
    move v2, v4

    .line 361
    goto/16 :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_b
    move v4, v3

    .line 441
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 450
    const-string v0, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const/16 v0, 0xc8

    const v1, 0x7f0905c8

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 453
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 454
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 457
    :cond_0
    const/16 v0, 0xc9

    const v1, 0x7f090021

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/GridSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 460
    const/16 v0, 0xca

    const v1, 0x7f090025

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 461
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v1

    .line 462
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 465
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 703
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 706
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 941
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 943
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 944
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 947
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 951
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
    .line 1388
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1389
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1400
    const/4 v1, 0x0

    .line 1401
    .local v1, revert:Z
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b05e9

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1402
    const/4 v1, 0x1

    .line 1406
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

    .line 1407
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, key:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->saveFrequent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1412
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1414
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_2

    .line 1415
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v2, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 1419
    :goto_0
    return-void

    .line 1417
    :cond_2
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 873
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 879
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 492
    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2, p1}, Lcom/android/settings/DrawerManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    :goto_0
    return v0

    .line 496
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 514
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 498
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_listui"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    move v0, v1

    .line 504
    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "settings_listui"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 507
    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    goto :goto_1

    .line 511
    :pswitch_2
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_1

    .line 496
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
    .line 679
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 681
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ActivityName"

    const-string v3, "com.android.settings.GridSettings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 688
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 691
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/HeaderAdapter;

    if-eqz v2, :cond_0

    .line 692
    check-cast v1, Lcom/android/settings/HeaderAdapter;

    .end local v1           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/HeaderAdapter;->pause()V

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 697
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 698
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0}, Lcom/android/settings/DrawerManager;->syncState()V

    .line 567
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1424
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1425
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    const v3, 0x7f0905d3

    .line 1435
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

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/GridSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1437
    const/4 v0, 0x1

    return v0

    .line 1427
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

    .line 1429
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    const v3, 0x7f0901d2

    goto :goto_0

    .line 1432
    :cond_2
    const v3, 0x7f0901d0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v1}, Lcom/android/settings/DrawerManager;->isDrawerOpen()Z

    .line 476
    :cond_0
    const/16 v1, 0xc9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 478
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 485
    :goto_0
    return v1

    .line 480
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v1, :cond_2

    .line 481
    const v1, 0x7f090021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 485
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 483
    :cond_2
    const v1, 0x7f090020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 594
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 596
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    .line 597
    .local v2, knoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    .line 602
    :cond_0
    new-instance v4, Lcom/android/settings/GridSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/GridSettings$4;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v4, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 608
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 612
    .local v3, listAdapter:Landroid/widget/ListAdapter;
    instance-of v4, v3, Lcom/android/settings/HeaderAdapter;

    if-eqz v4, :cond_1

    .line 613
    check-cast v3, Lcom/android/settings/HeaderAdapter;

    .end local v3           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/HeaderAdapter;->resume()V

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 617
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 619
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 620
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "ActivityName"

    const-string v5, "com.android.settings.GridSettings"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v4, "IconName"

    const-string v5, "Add to favorite;Drawer;"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v4, "register"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 623
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 625
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.settings.Drawer"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v4, "com.android.settings.Favorite"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 630
    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnableGlance(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 631
    const-string v4, "com.android.settings.SubSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 633
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->setGlanceViewEnable(Z)V

    .line 634
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v4, :cond_2

    .line 636
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 637
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glanceview/GlanceView;->setVisibility(I)V

    .line 639
    :cond_2
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_3

    .line 640
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 642
    :cond_3
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 643
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 675
    :cond_4
    :goto_0
    return-void

    .line 646
    :cond_5
    const-string v4, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 648
    invoke-virtual {p0, v9}, Lcom/android/settings/GridSettings;->setGlanceViewEnable(Z)V

    .line 649
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v4, :cond_6

    .line 650
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 651
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glanceview/GlanceView;->setVisibility(I)V

    .line 654
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->showGlanceView()V

    .line 656
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_7

    .line 657
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v7}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 659
    :cond_7
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 660
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 663
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->setGlanceViewEnable(Z)V

    .line 664
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    if-eqz v4, :cond_9

    .line 666
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceViewHideState(Z)V

    .line 667
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceView:Lcom/samsung/android/glanceview/GlanceView;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glanceview/GlanceView;->setVisibility(I)V

    .line 669
    :cond_9
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_a

    .line 670
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 672
    :cond_a
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 673
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 588
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 590
    :cond_1
    return-void
.end method

.method public onSelectedItem(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1395
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .parameter "layoutResID"

    .prologue
    .line 324
    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, v:Landroid/view/View;
    const v2, 0x7f0b0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 327
    .local v1, vs:Landroid/view/ViewStub;
    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 328
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->listUI:Landroid/view/View;

    .line 330
    new-instance v2, Lcom/android/settings/DrawerManager;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/DrawerManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    .line 332
    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;)V

    .line 337
    .end local v0           #v:Landroid/view/View;
    .end local v1           #vs:Landroid/view/ViewStub;
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1456
    :goto_0
    return-void

    .line 1452
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1454
    new-instance v1, Lcom/android/settings/HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1443
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/GridSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

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

    .line 529
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 530
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

    .line 531
    if-nez p2, :cond_0

    .line 532
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 534
    .restart local p2
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    iget v1, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 537
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 546
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 547
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 556
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 553
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

    .line 801
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 802
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 803
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 806
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 808
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_3

    .line 813
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 814
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 822
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 823
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 824
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 828
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 829
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 830
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 834
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 835
    return-void

    .line 817
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 818
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
