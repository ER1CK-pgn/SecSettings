.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private e911:Landroid/preference/Preference;

.field private isMsapInstalled:Z

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/CheckBoxPreference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mMsap:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mTagCamera:Landroid/preference/CheckBoxPreference;

.field private mTagCurrentLocation:Landroid/preference/PreferenceCategory;

.field private mTagScrapbook:Landroid/preference/CheckBoxPreference;

.field private mTagSnote:Landroid/preference/CheckBoxPreference;

.field private mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/location/LocationSettings;ILjava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    return-void
.end method

.method private addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "context"
    .parameter "root"

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, isCameraInstalled:Z
    const/4 v2, 0x0

    .line 598
    .local v2, isSnoteInstalled:Z
    const/4 v1, 0x0

    .line 599
    .local v1, isScrapbookInstalled:Z
    const/4 v3, 0x0

    .line 601
    .local v3, isVoicerecorderInstalled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 602
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.android.snote"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 603
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.android.app.pinboard"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 604
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.voicenote"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 606
    const-string v4, "tag_current_location"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    .line 607
    const-string v4, "tag_camera"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    .line 608
    const-string v4, "tag_snote"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    .line 609
    const-string v4, "tag_scrapbook"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    .line 610
    const-string v4, "tag_voice_recorder"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    .line 614
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_5

    .line 615
    :cond_0
    const-string v4, "LocationSettings"

    const-string v5, "TagCurrentLocation has a elements"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    if-nez v0, :cond_1

    .line 620
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    :cond_1
    if-nez v2, :cond_2

    .line 622
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 623
    :cond_2
    if-nez v1, :cond_3

    .line 624
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    :cond_3
    if-nez v3, :cond_4

    .line 626
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 635
    :cond_4
    return-void

    .line 617
    :cond_5
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "context"
    .parameter "root"

    .prologue
    .line 340
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 343
    .local v0, categoryLocationServices:Landroid/preference/PreferenceCategory;
    const-string v4, "location_e911"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->e911:Landroid/preference/Preference;

    .line 346
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->e911:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->e911:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_0
    new-instance v2, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 352
    .local v2, injector:Lcom/android/settings/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 354
    .local v3, locationServices:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/location/LocationSettings$4;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 370
    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 182
    .local v0, entry:Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 184
    .end local v0           #entry:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/4 v13, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 188
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 189
    .local v7, root:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    :cond_0
    const v8, 0x7f070067

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 195
    const-string v8, "msap_service"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v8, "clock_sync"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    .line 199
    const-string v8, "assisted_gps_function_switch"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 200
    const-string v8, "satellite_view"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 201
    const-string v8, "cmcc_agpsmenu"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 203
    const-string v8, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "CMCC"

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_1
    const/4 v2, 0x1

    .line 214
    .local v2, defaultValue:I
    const-string v8, "com.android.smsaplocationservice"

    invoke-virtual {p0, v8}, Lcom/android/settings/location/LocationSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    .line 222
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    .line 223
    iget-boolean v8, p0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    if-nez v8, :cond_6

    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :goto_0
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.settings.MSAP_START"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, i:Landroid/content/Intent;
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    new-instance v11, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    :cond_3
    const-string v8, "location_mode"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 260
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v11, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v11, p0, v0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    const-string v8, "recent_location_requests"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 279
    new-instance v5, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v5, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 280
    .local v5, recentApps:Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v5}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v6

    .line 281
    .local v6, recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 282
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 304
    :goto_1
    invoke-direct {p0, v0, v7}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 307
    invoke-direct {p0, v0, v7}, Lcom/android/settings/location/LocationSettings;->addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 311
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_5

    .line 312
    :cond_4
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0f0034

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 314
    .local v4, padding:I
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v10, v10, v4, v10}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 315
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v14, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 317
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const v12, 0x800015

    invoke-direct {v11, v13, v13, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 323
    .end local v4           #padding:I
    :cond_5
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 326
    return-object v7

    .line 226
    .end local v5           #recentApps:Lcom/android/settings/location/RecentLocationApps;
    .end local v6           #recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_6
    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "wifi_msap_saved_state"

    invoke-static {v8, v12, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_7

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v8, v10

    goto :goto_2

    .line 285
    .restart local v5       #recentApps:Lcom/android/settings/location/RecentLocationApps;
    .restart local v6       #recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_8
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, banner:Landroid/preference/Preference;
    const v8, 0x7f0400e8

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 287
    const v8, 0x7f0906f8

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 288
    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 289
    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private setTagCurrentLocation(ILjava/lang/Boolean;)V
    .locals 3
    .parameter "selectedId"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 550
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 552
    .local v0, nEnable:I
    :goto_0
    if-nez p1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 567
    :goto_1
    return-void

    .line 550
    .end local v0           #nEnable:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    .restart local v0       #nEnable:I
    :cond_1
    if-ne p1, v1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_snote"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 558
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_scrapbook"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 561
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_voicerecorder"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 565
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    goto :goto_1
.end method

.method private updateTagCurrentLocation()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_camera"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 572
    .local v0, tagCameraDB:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_snote"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 574
    .local v2, tagSnoteDB:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_scrapbook"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 576
    .local v1, tagScrapbookDB:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_voicerecorder"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 579
    .local v3, tagVoicerecorderDB:I
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 580
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 581
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 582
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 584
    const-string v4, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CMCC"

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    :cond_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 587
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "clock_sync_enabled"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_6

    :goto_4
    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 591
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 579
    goto :goto_0

    :cond_3
    move v4, v6

    .line 580
    goto :goto_1

    :cond_4
    move v4, v6

    .line 581
    goto :goto_2

    :cond_5
    move v4, v6

    .line 582
    goto :goto_3

    :cond_6
    move v6, v5

    .line 587
    goto :goto_4
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 379
    const v0, 0x7f090c19

    return v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 443
    const-string v5, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " inside isPackageExists and targetPackage is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 447
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v4

    .line 449
    :cond_1
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 451
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 426
    if-eqz p2, :cond_1

    .line 429
    const-string v0, "USC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->showUSCLocationConsentDialog(Landroid/content/Context;I)V

    .line 437
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, nTitle:I
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09168e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091616

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090195

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 539
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/location/LocationSettings$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 546
    return-object v0

    .line 509
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v1, 0x7f09120e

    .line 510
    goto :goto_0

    .line 512
    :pswitch_1
    const v1, 0x7f090f57

    .line 513
    goto :goto_0

    .line 515
    :pswitch_2
    const v1, 0x7f09168c

    .line 516
    goto :goto_0

    .line 518
    :pswitch_3
    const v1, 0x7f09168d

    .line 519
    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .parameter "mode"
    .parameter "restricted"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    packed-switch p1, :pswitch_data_0

    .line 404
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 405
    .local v0, enabled:Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 406
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 411
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 415
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    :cond_1
    return-void

    .line 386
    .end local v0           #enabled:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0906f6

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0906f5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0906f4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0906f3

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 404
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_3
    move v3, v2

    .line 405
    goto :goto_2

    :cond_4
    move v1, v2

    .line 406
    goto :goto_3

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 460
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 493
    :goto_0
    return v1

    .line 464
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 468
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 473
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_4

    .line 474
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 476
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 478
    :cond_5
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 479
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_6

    .line 480
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 482
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 484
    :cond_7
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_sync_enabled"

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 490
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 154
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 155
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 157
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 158
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    .line 159
    return-void
.end method
