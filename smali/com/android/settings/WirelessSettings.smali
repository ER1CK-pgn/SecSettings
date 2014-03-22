.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private bTabStyle:Z

.field private defaultSms:Z

.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mKiesCategory:Landroid/preference/PreferenceCategory;

.field private mLastNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mMediaShareCategory:Landroid/preference/PreferenceCategory;

.field private mNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mNetworkCategory:Landroid/preference/PreferenceCategory;

.field private mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcWallet:Landroid/preference/PreferenceScreen;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

.field private mSmartNetworkObserver:Landroid/database/ContentObserver;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTetheredData:I

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/WirelessSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 156
    iput v1, p0, Lcom/android/settings/WirelessSettings;->MHS_REQUEST:I

    .line 157
    iput v1, p0, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    .line 169
    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    .line 188
    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 214
    iput-boolean v2, p0, Lcom/android/settings/WirelessSettings;->defaultSms:Z

    .line 651
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    .line 660
    new-instance v0, Lcom/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$3;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    .line 668
    new-instance v0, Lcom/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$4;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    .line 676
    new-instance v0, Lcom/android/settings/WirelessSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$5;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/WirelessSettings;)Lcom/android/settings/SmartNetworkPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/WirelessSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/settings/WirelessSettings;->defaultSms:Z

    return p1
.end method

.method private initSmsApplicationSetting()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 564
    const-string v10, "initSmsApplicationSetting:"

    invoke-direct {p0, v10}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 569
    .local v9, smsApplications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    .line 570
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 571
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 572
    .local v4, entryValues:[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 574
    .local v3, entryImages:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 576
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 578
    .local v5, i:I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 579
    .local v8, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 580
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v12

    .line 581
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v12

    .line 583
    const/4 v10, 0x0

    :try_start_0
    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v3, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 592
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 593
    .restart local v8       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 596
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    .line 597
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 599
    :try_start_1
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v12

    goto :goto_0

    .line 600
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 601
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_2

    .line 605
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 606
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 607
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 608
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 609
    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 637
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v1

    .line 641
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 633
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 547
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 549
    .local v0, appName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 553
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 554
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    .line 556
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 553
    .restart local v1       #i:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1394
    const v0, 0x7f090c0f

    return v0
.end method

.method getNearbyEnabler(Landroid/app/Activity;)Lcom/android/settings/nearby/NearbyEnabler;
    .locals 2
    .parameter "activity"

    .prologue
    .line 1387
    const-string v1, "nearby_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 1389
    .local v0, nearby:Landroid/preference/SwitchPreferenceScreen;
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    return-object v1
.end method

.method getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings/nfc/NfcEnabler;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1342
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    .line 1343
    const-string v0, "s_beam_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    .line 1346
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1347
    if-nez v0, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "transfer_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1383
    :goto_0
    return-object v4

    .line 1353
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings.nfcsummary"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_2

    .line 1355
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :goto_1
    if-eqz p2, :cond_1

    .line 1369
    const-string v0, "toggle_airplane"

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 1377
    :cond_1
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    move-object v5, v4

    check-cast v5, Landroid/preference/PreferenceScreen;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object v4, v0

    .line 1383
    goto :goto_0

    .line 1357
    :cond_2
    const v0, 0x7f0902d5

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    const-string v0, "CSCAppRes"

    const-string v1, "No data for CSCAppResourceUri"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v0, "toggle_nfc"

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1315
    if-ne p1, v1, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1323
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 1338
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1325
    :cond_3
    if-nez p1, :cond_2

    .line 1327
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1328
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_1

    .line 1332
    :cond_4
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 736
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 737
    if-eqz p1, :cond_0

    .line 738
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mManageMobilePlanMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 742
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 743
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 745
    const v0, 0x7f0700ec

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 747
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_20

    move v3, v4

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 774
    const-string v0, "network_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNetworkCategory:Landroid/preference/PreferenceCategory;

    .line 775
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNetworkCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 779
    :cond_1
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0915aa

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 783
    :cond_2
    const-string v0, "toggle_nsd"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 784
    const-string v1, "enable_switch_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 786
    const-string v1, "button_smart_network_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SmartNetworkPreference;

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 788
    const-string v2, "jjh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportedSmartNetwork: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v2, :cond_21

    .line 790
    const-string v2, "jjh"

    const-string v7, "mButtonSmartNetworkEnabled != null"

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v1, :cond_3

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    :cond_3
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 800
    const-string v1, "rcs_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v8, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v8, "auto_power_on_off_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 807
    :cond_4
    new-instance v2, Lcom/android/settings/AirplaneModeEnabler;

    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, v6, v8}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 809
    const-string v2, "sms_application"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SmsListPreference;

    iput-object v2, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 810
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 811
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 817
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 826
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 842
    const-string v0, "wimax_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 845
    if-eqz v2, :cond_5

    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 846
    :cond_5
    const-string v0, "vpn_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v8, "toggle_airplane"

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 848
    :cond_6
    if-eqz v3, :cond_7

    .line 849
    const-string v0, "vpn_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 850
    const-string v0, "vpn_settings_for_att"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 852
    :cond_7
    const-string v0, "vpn_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 854
    if-eqz v2, :cond_8

    const-string v0, "bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 859
    :cond_8
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 861
    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 862
    :cond_9
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 863
    const-string v0, "roaming_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 866
    :cond_a
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 868
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 869
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 872
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isSmsSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 873
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 877
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.type.television"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 878
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 882
    :cond_c
    const-string v0, "ALL"

    const-string v8, "ALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 883
    const-string v0, "media_share_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 884
    const-string v8, "nearby_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 887
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/settings/WirelessSettings;->getNearbyEnabler(Landroid/app/Activity;)Lcom/android/settings/nearby/NearbyEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 890
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 891
    const-string v0, "device_policy"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 895
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v4

    :goto_2
    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 898
    const-string v0, "connectivity"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 914
    if-nez v3, :cond_23

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "ATT"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 917
    :cond_e
    const-string v8, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 927
    :goto_3
    const-string v0, "tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "settings_listui"

    invoke-static {v0, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 932
    const-string v0, "tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 937
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "wifi_calling_holder_key"

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "wfc_settings_holder_key"

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 959
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0700da

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 961
    const-string v9, "wfc_settings_key"

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    .line 962
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v9, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 973
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 974
    const-string v0, "persist.sys.roaming_menu"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_10

    .line 975
    const-string v0, "roaming_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 994
    :cond_10
    :goto_5
    if-nez v3, :cond_11

    .line 995
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 996
    const-string v3, "cell_broadcast_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 997
    if-eqz v3, :cond_12

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 999
    :cond_12
    const-string v0, "cell_broadcast_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "com.ipsec.vpnclient"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1004
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_13
    if-eqz v0, :cond_26

    .line 1005
    const-string v0, "vpn_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 1011
    :goto_6
    const-string v0, "media_share_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    .line 1012
    const-string v0, "kies_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "allshare_cast_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1033
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.kieswifi"

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1039
    :goto_7
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1040
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "usb_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1045
    :cond_14
    if-eqz v2, :cond_15

    const-string v0, "nfc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_15
    move v2, v4

    .line 1049
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "settings_listui"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_27

    move v0, v4

    :goto_9
    iput-boolean v0, p0, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    .line 1050
    const-string v0, "nfc_wallet_manager"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    .line 1055
    const-string v0, "transfer_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1056
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1059
    const-string v0, "nfc_default_transaction"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 1064
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_16

    .line 1065
    const-string v0, "transfer_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1066
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1068
    :cond_16
    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/WirelessSettings;->getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings/nfc/NfcEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 1074
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 1075
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RCS availability: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    if-eqz v0, :cond_28

    .line 1078
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1079
    new-instance v1, Lcom/android/settings/rcs/RcsSettings;

    invoke-direct {v1, v6, v0}, Lcom/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 1086
    :cond_17
    :goto_a
    const-string v0, "MTR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vpn_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1091
    :cond_18
    const-string v0, "ethernet_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ethernet_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1101
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1102
    const-string v0, "transfer_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1103
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1108
    :cond_1a
    iget-boolean v0, p0, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    if-eqz v0, :cond_1d

    .line 1109
    const-string v0, "transfer_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "transfer_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1111
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1c

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1113
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1d

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1119
    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1120
    :cond_1e
    iget-boolean v0, p0, Lcom/android/settings/WirelessSettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1f

    .line 1121
    sget v0, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 1122
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1123
    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    sget v0, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    if-ne v0, v4, :cond_29

    move v0, v4

    .line 1125
    :goto_b
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1126
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_2a

    :goto_c
    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1127
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1133
    :cond_1f
    return-void

    :cond_20
    move v3, v5

    .line 747
    goto/16 :goto_0

    .line 792
    :cond_21
    const-string v2, "jjh"

    const-string v7, "mButtonSmartNetworkEnabled == null"

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_22
    move v0, v5

    .line 895
    goto/16 :goto_2

    .line 916
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 920
    :cond_24
    const-string v8, "tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 922
    const v9, 0x7f0906d1

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 925
    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 964
    :catch_0
    move-exception v0

    .line 965
    const-string v9, "WirelessSettings"

    const-string v10, "cannot add WfcSwitchPreference"

    invoke-static {v9, v10, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 977
    :cond_25
    const-string v0, "SPR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "VMU"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "BST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "XAS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 978
    const-string v0, "roaming_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1007
    :cond_26
    const-string v0, "vpn_settings_for_att"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    :cond_27
    move v0, v5

    .line 1049
    goto/16 :goto_9

    .line 1081
    :cond_28
    if-eqz v1, :cond_17

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_29
    move v0, v5

    .line 1124
    goto/16 :goto_b

    :cond_2a
    move v4, v5

    .line 1126
    goto/16 :goto_c

    :cond_2b
    move v2, v5

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 614
    packed-switch p1, :pswitch_data_0

    .line 629
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 616
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 730
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 731
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->destroy()V

    .line 732
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0906ee

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 500
    const-string v6, "onManageMobilePlanClick:"

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 501
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 504
    .local v4, resources:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 505
    .local v2, ni:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 507
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, url:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 509
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "EXTRA_URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 512
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 540
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onManageMobilePlanClick: message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->showDialog(I)V

    .line 544
    :cond_0
    return-void

    .line 516
    .restart local v5       #url:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, operatorName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 520
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 522
    const v6, 0x7f0906ed

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 525
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 529
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 533
    .end local v3           #operatorName:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 535
    const v6, 0x7f0906ef

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 538
    :cond_5
    const v6, 0x7f0906f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1259
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 1261
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 1262
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 1272
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 1286
    :cond_3
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v0, :cond_4

    .line 1287
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onPause()V

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v0, :cond_5

    .line 1298
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1311
    :cond_5
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1399
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1402
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v1}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    move v1, v2

    .line 1403
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 1404
    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1405
    const v3, 0x7f0917b2

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/WirelessSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1406
    const v4, 0x7f0917b3

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v6}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v1, v6, v1

    aput-object v1, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/WirelessSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    :goto_1
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v4, :cond_0

    if-eqz p2, :cond_0

    .line 1412
    iget-boolean v4, p0, Lcom/android/settings/WirelessSettings;->defaultSms:Z

    if-eqz v4, :cond_2

    const-string v4, "com.android.mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1413
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/WirelessSettings$8;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/settings/WirelessSettings$8;-><init>(Lcom/android/settings/WirelessSettings;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v3, Lcom/android/settings/WirelessSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/WirelessSettings$7;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/WirelessSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/WirelessSettings$6;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1447
    :cond_0
    :goto_2
    return v2

    .line 1403
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1438
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 1439
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 1440
    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    iput-boolean v7, p0, Lcom/android/settings/WirelessSettings;->defaultSms:Z

    goto :goto_2

    .line 1443
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/WirelessSettings;->defaultSms:Z

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 227
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 228
    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/WirelessSettings;->mOpenDetailMenu:Z

    if-eqz v10, :cond_1

    sget v10, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 229
    sget v10, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v9, 0x1

    .line 230
    .local v9, value:Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_6

    .line 231
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/settings/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 243
    .end local v9           #value:Z
    :cond_1
    :goto_1
    const-string v10, "mobile_network_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_b

    .line 378
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 379
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    .line 381
    .local v7, simState:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    if-eqz v7, :cond_2

    const/4 v10, 0x1

    if-ne v7, v10, :cond_7

    .line 384
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v3, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090b72

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090b73

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 390
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 391
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/WirelessSettings;->mOpenDetailMenu:Z

    if-eqz v10, :cond_4

    .line 392
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->initArrayLinkKey()V

    .line 396
    :cond_4
    const/4 v10, 0x1

    .line 493
    .end local v3           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v7           #simState:I
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_2
    return v10

    .line 229
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .restart local v9       #value:Z
    :cond_6
    move-object v2, p2

    .line 233
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 234
    .local v2, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 235
    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 400
    .end local v2           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v9           #value:Z
    .restart local v7       #simState:I
    .restart local v8       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v10, "KDI"

    const-string v11, "TMO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 401
    .local v5, isKDI:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 402
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v4, intent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 405
    const/4 v10, 0x1

    goto :goto_2

    .line 410
    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 411
    :cond_9
    const-string v10, "mobile_network_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_b

    .line 412
    iget-boolean v10, p0, Lcom/android/settings/WirelessSettings;->mOpenDetailMenu:Z

    if-eqz v10, :cond_a

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, args:Landroid/os/Bundle;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v1

    .line 415
    .local v1, arrayLinkKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 416
    .local v6, openDetailMenuKey:Ljava/lang/String;
    const-string v10, "extra_from_search"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    const-string v10, "extra_parent_preference_key"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v10, "extra_link_key_array"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 421
    const-string v10, "extra_setting_value"

    iget v11, p0, Lcom/android/settings/WirelessSettings;->mSecondSettingValue:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 424
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v10, "extra_fragment_bundle_key"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 426
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->initArrayLinkKey()V

    .line 427
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/WirelessSettings;->mOpenDetailMenu:Z

    .line 428
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 430
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #arrayLinkKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #openDetailMenuKey:Ljava/lang/String;
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v10, "extra_from_search"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    const-string v10, "extra_parent_preference_key"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v10, "extra_link_key_array"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    const-string v10, "extra_setting_value"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 437
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 438
    const-string v10, "extra_fragment_bundle_key"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 446
    .end local v0           #args:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isKDI:Ljava/lang/Boolean;
    .end local v7           #simState:I
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/settings/WirelessSettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 447
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 449
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick: preference="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 450
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_d

    const-string v10, "ril.cdma.inecmmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 453
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 456
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 457
    :cond_d
    const-string v10, "manage_mobile_plan"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_e

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 487
    :cond_e
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-ne p2, v10, :cond_10

    .line 488
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v10, :cond_f

    .line 489
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SmartNetworkPreference;->checkSmartNetwork(Landroid/content/Context;)V

    .line 491
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 493
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1148
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 1150
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 1151
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 1166
    :cond_3
    :try_start_0
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.ipsec.vpnclient"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1169
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    if-eqz v1, :cond_c

    .line 1194
    :goto_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v0, :cond_5

    .line 1195
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    .line 1201
    :cond_5
    const-string v0, "rcs_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1203
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    .line 1204
    if-eqz v1, :cond_d

    .line 1205
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility(Z)V

    .line 1213
    :cond_6
    :goto_1
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1214
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1216
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1217
    if-eqz v0, :cond_9

    .line 1218
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 1220
    :cond_9
    const-string v0, "roaming_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1221
    if-eqz v0, :cond_a

    .line 1222
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 1227
    :cond_a
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v0, :cond_b

    .line 1228
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_network"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1246
    :cond_b
    return-void

    .line 1175
    :cond_c
    :try_start_1
    const-string v1, "vpn_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1207
    :cond_d
    if-eqz v0, :cond_6

    .line 1208
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0, v4}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1250
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1252
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1137
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 1139
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 1143
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 1144
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 701
    .local v0, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 725
    :cond_0
    return-void
.end method
