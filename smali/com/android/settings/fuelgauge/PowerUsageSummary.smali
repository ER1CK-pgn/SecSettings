.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mSearchStartMenu:Z

.field private mSearchTargetKey:Ljava/lang/String;

.field private mSearchTargetValue:I

.field private mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 83
    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetKey:Ljava/lang/String;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetValue:I

    .line 96
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f090937

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    .line 296
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 297
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 299
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 300
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 303
    .local v1, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 304
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 306
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v10

    const-string v11, "screen.full"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4024

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->refreshStats(Z)V

    .line 312
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v9

    .line 313
    .local v9, usageList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .line 314
    .local v0, flag:Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 315
    .local v8, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4014

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_2

    .line 316
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    mul-double v5, v10, v12

    .line 318
    .local v5, percentOfTotal:D
    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v5, v10

    if-ltz v10, :cond_2

    .line 319
    new-instance v7, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v7, v10, v11, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 321
    .local v7, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v12

    div-double v3, v10, v12

    .line 323
    .local v3, percentOfMax:D
    iput-wide v5, v8, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 324
    iget-object v10, v8, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    const v10, 0x7fffffff

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v11

    double-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 326
    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 327
    iget-object v10, v8, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v10, :cond_3

    .line 328
    iget-object v10, v8, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 330
    :cond_3
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 332
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, -0x4

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 333
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 338
    :goto_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    const/4 v0, 0x1

    .line 343
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    const/16 v11, 0xb

    if-le v10, v11, :cond_2

    .line 348
    .end local v3           #percentOfMax:D
    .end local v5           #percentOfTotal:D
    .end local v7           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v8           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_4
    if-nez v0, :cond_0

    .line 349
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 350
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 336
    .restart local v3       #percentOfMax:D
    .restart local v5       #percentOfTotal:D
    .restart local v7       #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .restart local v8       #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    const v11, 0x7fffffff

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v12

    double-to-int v12, v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v2, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 125
    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 126
    const-string v2, "app_list"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 127
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "battery_status"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 128
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "display_battery_level"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "power_saving_mode"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    new-instance v2, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 132
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 137
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_from_search"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    .line 144
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "extra_second_fragment_bundle_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 147
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetKey:Ljava/lang/String;

    .line 148
    const-string v2, "extra_setting_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetValue:I

    .line 153
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 142
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 256
    const/4 v3, 0x2

    const v4, 0x7f09097a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0201dd

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 259
    .local v2, refresh:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c12

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, helpUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const/4 v3, 0x3

    const v4, 0x7f090c0b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 265
    .local v0, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 267
    .end local v0           #help:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->destroy()V

    .line 207
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 285
    :goto_0
    return v0

    .line 273
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 274
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 278
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 276
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 281
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->pause()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 201
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 212
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 214
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetValue:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 215
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 216
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    :cond_1
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_3

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 228
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 229
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090948

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 231
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 246
    :goto_1
    return v2

    :cond_2
    move v1, v6

    .line 214
    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_battery_percentage"

    if-eqz v0, :cond_4

    move v6, v2

    :cond_4
    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 240
    :cond_6
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_7

    move v2, v6

    .line 241
    goto :goto_1

    :cond_7
    move-object v0, p2

    .line 243
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 244
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v1

    .line 245
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V

    .line 246
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 162
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 163
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "display_battery_percentage"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v4}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 171
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 174
    .local v3, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 175
    .local v1, list:Landroid/widget/ListView;
    const/4 v2, 0x0

    .line 176
    .local v2, position:I
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 177
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 178
    .local v0, check_item:Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetKey:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    iget v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchTargetValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 181
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 183
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSearchStartMenu:Z

    .line 176
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #check_item:Landroid/preference/Preference;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v2           #position:I
    .end local v3           #ps:Landroid/preference/PreferenceScreen;
    :cond_5
    move v4, v6

    .line 163
    goto :goto_0

    .line 189
    :cond_6
    return-void
.end method
