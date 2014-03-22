.class public Lcom/android/settings/search/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# static fields
.field private static mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->initMenuTable()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionalIncludeMenu()Z

    .line 140
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionaRemoveMenu()Z

    .line 141
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->loadMenufromCSCXml()V

    .line 142
    return-void
.end method

.method private additionaRemoveMenu()Z
    .locals 13

    .prologue
    const v12, 0x7f07002c

    const v11, 0x7f0700cc

    const/4 v4, 0x0

    const v10, 0x7f0b05e3

    const/4 v3, 0x1

    .line 1477
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1478
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1479
    array-length v1, v1

    if-eqz v1, :cond_5

    move v2, v3

    .line 1482
    :goto_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1483
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1484
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1486
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move v1, v4

    .line 1488
    :goto_1
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 1490
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :cond_0
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1507
    :cond_1
    :goto_3
    const-string v6, "jjh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bluetoothAvailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    if-nez v2, :cond_2

    .line 1509
    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1512
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1516
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ATT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1545
    :cond_3
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1546
    const-string v6, "unlock_set_signature"

    const v7, 0x7f0700b2

    const/4 v8, 0x2

    const-string v9, "unlock_set_or_change"

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1549
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1488
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 1479
    goto/16 :goto_0

    .line 1492
    :catch_0
    move-exception v6

    .line 1493
    const-string v6, "Safety assistance"

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v4, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1495
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1501
    :catch_1
    move-exception v6

    .line 1502
    const v6, 0x7f0b05f6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1504
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1518
    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1521
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1522
    :cond_7
    const-string v6, "enable_switch_wifi_ap"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1525
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1527
    :cond_8
    const-string v6, "usb_tether_settings"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1530
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1532
    :cond_9
    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1535
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1537
    :cond_a
    const-string v6, "tethering_help"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1540
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1554
    :cond_b
    return v3
.end method

.method private additionalIncludeMenu()Z
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x1

    return v0
.end method

.method public static callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x7f0b0606

    const-wide/32 v2, 0x7f0b0601

    const/4 v9, 0x1

    .line 1814
    .line 1816
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1820
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1821
    if-eqz v4, :cond_1

    .line 1822
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    :goto_0
    const v4, 0x10008000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1828
    invoke-static {p0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v4

    .line 1830
    if-nez v4, :cond_4

    .line 1831
    iget-object v6, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 1833
    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1841
    :goto_1
    const-string v2, "extra_from_search"

    invoke-virtual {v5, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1842
    const-string v2, "extra_parent_type"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1843
    const-string v2, "extra_tab_id"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1844
    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1845
    const-string v0, "extra_setting_value"

    iget v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1847
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1928
    :cond_0
    :goto_2
    return v9

    .line 1824
    :cond_1
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1835
    :cond_2
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v2

    .line 1836
    goto :goto_1

    .line 1838
    :cond_3
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 1848
    :cond_4
    if-ne v4, v9, :cond_9

    .line 1851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1852
    iget-object v7, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1862
    :goto_3
    new-instance v2, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1863
    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v2

    .line 1864
    iget-object v2, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v2

    .line 1866
    const-string v3, "extra_from_search"

    invoke-virtual {v5, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1867
    const-string v3, "extra_parent_type"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1868
    const-string v3, "extra_tab_id"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1869
    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1871
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1873
    const-string v3, "extra_parent_preference_key"

    iget-object v4, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v3, "extra_setting_value"

    iget v4, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1875
    const-string v3, "extra_link_key_array"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1876
    const-wide/32 v3, 0x7f0b0630

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    const-wide/32 v3, 0x7f0b062c

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    .line 1878
    :cond_5
    const-string v0, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1883
    :goto_4
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1856
    :cond_6
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v0, v2

    .line 1857
    goto :goto_3

    .line 1859
    :cond_7
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1880
    :cond_8
    const-string v0, "extra_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_4

    .line 1884
    :cond_9
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 1889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    new-instance v6, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v6, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1893
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    .line 1894
    :goto_5
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_a

    .line 1895
    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    goto :goto_5

    .line 1899
    :cond_a
    const-string v6, "Call settings"

    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1905
    :goto_6
    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 1907
    const-string v6, "extra_from_search"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1908
    const-string v6, "extra_parent_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1909
    const-string v4, "extra_tab_id"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1910
    const-string v0, "extra_header_id"

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1912
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1913
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1915
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1917
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1918
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v2, "extra_setting_value"

    iget v3, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1920
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1921
    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1923
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1924
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_TYPE_PREFERENCE, parent key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1902
    :cond_b
    new-instance v2, Ljava/lang/Long;

    iget-object v3, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_6
.end method

.method private compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z
    .locals 4
    .parameter "index"
    .parameter "menuItem"

    .prologue
    .line 1687
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    .line 1688
    .local v0, originMenuInfo:Lcom/android/settings/search/SearchItem$MenuInfoItem;
    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1692
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this menu is removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v1, 0x1

    .line 1696
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getHeadTabIndex(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1964
    .line 1965
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1966
    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return v0

    .line 1968
    :cond_1
    const-string v4, "Device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1969
    goto :goto_0

    .line 1970
    :cond_2
    const-string v1, "Controls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 1971
    goto :goto_0

    .line 1972
    :cond_3
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1973
    goto :goto_0

    .line 1976
    :cond_4
    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1978
    const-string v4, "My device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 1979
    goto :goto_0

    .line 1980
    :cond_5
    const-string v1, "Accounts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    .line 1981
    goto :goto_0

    .line 1982
    :cond_6
    const-string v1, "More"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1983
    goto :goto_0
.end method

.method private static getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1933
    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1935
    if-nez v1, :cond_1

    .line 1936
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentType()> parent key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_0
    :goto_0
    return v0

    .line 1939
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1940
    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "General"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1953
    :cond_2
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1955
    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    .line 1956
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1957
    const/4 v0, 0x1

    goto :goto_0

    .line 1946
    :cond_3
    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "My device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accounts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "More"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1959
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initMenuTable()V
    .locals 13

    .prologue
    const v12, 0x7f070033

    const v11, 0x7f0b0630

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v3, "com.ipsec.vpnclient"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 151
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_0
    move v0, v2

    .line 153
    :goto_0
    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "shopdemo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 158
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05e9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    const-string v5, "ALL"

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ec

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002c

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b061a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 191
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05fd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_4
    if-nez v4, :cond_5

    .line 194
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_5
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b061c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b061d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b061e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v5, "SKT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 201
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0620

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_6
    const-string v5, "SKT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 207
    :cond_7
    const-string v5, "SKT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 208
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ff

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_8
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 212
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "Call settings"

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_9
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003d

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0615

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0614

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 239
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0649

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_a
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b064b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0612

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0640

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070060

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0623

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05dc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "Safety assistance"

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.skyfire.browser.toolbar.att"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 261
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v2, :cond_b

    .line 262
    if-eqz v5, :cond_b

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne v5, v2, :cond_b

    .line 263
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b060b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const/4 v8, 0x0

    const-string v9, "General"

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_b
    :goto_1
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0628

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-nez v5, :cond_c

    .line 270
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b062b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_c
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b062a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b062c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b062e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 279
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_d
    if-ne v2, v0, :cond_e

    .line 283
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0631

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0632

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "update_prl"

    const v7, 0x7f0700c2

    const v8, 0x7f0b0632

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "update_profile"

    const v7, 0x7f0700c2

    const v8, 0x7f0b0632

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "uicc_unlock"

    const v7, 0x7f0700c2

    const v8, 0x7f0b0632

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_e
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 300
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05f9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_f
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070054

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_switch_wifi_ap"

    const v6, 0x7f0700cc

    const v7, 0x7f0b05e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "usb_tether_settings"

    const v6, 0x7f0700cc

    const v7, 0x7f0b05e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 317
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_bluetooth_tethering"

    const v6, 0x7f0700cc

    const v7, 0x7f0b05e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_10
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_toggle"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_gps"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_network"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 332
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "assisted_gps"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_11
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_mode"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "key_my_place"

    const v6, 0x7f070067

    const v7, 0x7f0b05e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 343
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "mobile_network_settings"

    const v6, 0x7f0700ec

    const v7, 0x7f0b05ee

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_12
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_13
    if-eqz v3, :cond_3e

    .line 346
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings_for_att"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_2
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sms_application"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "print_settings"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 355
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v5, 0x7f07007e

    const v6, 0x7f0b05f0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_14
    const-string v1, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 366
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_shared_contents"

    const v5, 0x7f070015

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_accept_device"

    const v5, 0x7f070015

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_reject_device"

    const v5, 0x7f070015

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_to"

    const v5, 0x7f070015

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_from"

    const v5, 0x7f070015

    const v6, 0x7f0b05f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_15
    if-nez v4, :cond_18

    .line 375
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 376
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_clock_settings"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 381
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_16
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_myprofile_settings"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "owner_info_settings"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblesignature"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "signature_verification_level"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ink_effect"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wakeup_settings"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 396
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_17
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v5, 0x7f0700a9

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_18
    :goto_3
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "homescreen_wallpaper"

    const v5, 0x7f0700d9

    const v6, 0x7f0b061c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lockscreen_wallpaper"

    const v5, 0x7f0700d9

    const v6, 0x7f0b061c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "both_wallpaper"

    const v5, 0x7f0700d9

    const v6, 0x7f0b061c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "MONOTYPE"

    const v5, 0x7f070053

    const v6, 0x7f0b061d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v5, 0x7f070053

    const v6, 0x7f0b061d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "touch_key_light"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_mode"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reading_mode"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 449
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_19
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 453
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1a
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const v5, 0x7f07003f

    const v6, 0x7f0b05fb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_panel_menu"

    const v5, 0x7f07007f

    const v6, 0x7f0b061e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness_adjustment"

    const v5, 0x7f07007f

    const v6, 0x7f0b061e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.pagebuddynotisvc"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 463
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 464
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "recommended_apps"

    const v5, 0x7f07007f

    const/4 v6, 0x1

    const v7, 0x7f0b061e

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 470
    :cond_1b
    :goto_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 471
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const v5, 0x7f070064

    const v6, 0x7f0b05fd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const v5, 0x7f070064

    const v6, 0x7f0b05fd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const v5, 0x7f070064

    const v6, 0x7f0b05fd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const v5, 0x7f070064

    const v6, 0x7f0b05fd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "open_multi_window_view"

    const v5, 0x7f070079

    const v6, 0x7f0b061a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_language"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_input_method"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "recognizer_settings"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_speed"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    if-le v1, v2, :cond_1d

    .line 487
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "handwriting_language"

    const v5, 0x7f070062

    const v6, 0x7f0b060e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 492
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_incomming_calls"

    const v5, 0x7f0700d6

    const v6, 0x7f0b0615

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1e
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_alarm"

    const v5, 0x7f0700d6

    const v6, 0x7f0b0615

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_camera"

    const v5, 0x7f0700d6

    const v6, 0x7f0b0615

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_music"

    const v5, 0x7f0700d6

    const v6, 0x7f0b0615

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const v5, 0x7f070044

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const v5, 0x7f070044

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 504
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const v5, 0x7f070044

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const v5, 0x7f070044

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const v5, 0x7f070044

    const v6, 0x7f0b0603

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_spen_pointer"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_hand_side"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "battery_saving"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_writing_buddy"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_detachment_option_list"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_deatachment_sound"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 520
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "loss_prevention_alert"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 533
    :goto_5
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "any_screen"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dialer"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "samsung_keypad"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "calculator"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pattern"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "onehand_help"

    const v5, 0x7f070082

    const v6, 0x7f0b060d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_motion_indicator"

    const v5, 0x7f07000e

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_glance"

    const v5, 0x7f07000e

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_scroll"

    const v5, 0x7f07000e

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_turn"

    const v5, 0x7f07000e

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_call_accept"

    const v5, 0x7f07000e

    const v6, 0x7f0b0648

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 561
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out"

    const v5, 0x7f070074

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_21
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 564
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pick_up"

    const v5, 0x7f070074

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_22
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tilt"

    const v5, 0x7f070074

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pan_to_browse_image"

    const v5, 0x7f070074

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 572
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "turn_over"

    const v5, 0x7f070074

    const v6, 0x7f0b064a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_23
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "palm_swipe"

    const v5, 0x7f07005b

    const v6, 0x7f0b064b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "palm_touch"

    const v5, 0x7f07005b

    const v6, 0x7f0b064b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_view_mode"

    const v5, 0x7f070013

    const v6, 0x7f0b0614

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_air_view_option"

    const v5, 0x7f070013

    const v6, 0x7f0b0614

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "finger_air_view_option"

    const v5, 0x7f070013

    const v6, 0x7f0b0614

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const v5, 0x7f0700c0

    const v6, 0x7f0b0612

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const v5, 0x7f0700c0

    const v6, 0x7f0b0612

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const v5, 0x7f0700c0

    const v6, 0x7f0b0612

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const v5, 0x7f0700c0

    const v6, 0x7f0b0612

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ring_volume"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback_intensity"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 601
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ringtone"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_24
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 604
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_vibration"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_25
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_sound"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 608
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_26
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 611
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_27
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "my_sound"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_deatachment_sound"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_sound"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_vibration"

    const v5, 0x7f0700c3

    const v6, 0x7f0b05fe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_account_add"

    const v5, 0x7f070009

    const v6, 0x7f0b0623

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 632
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_28
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 637
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_29
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "timezone"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date_format"

    const v5, 0x7f070032

    const v6, 0x7f0b0625

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 645
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_2a
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 650
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_2b
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "always"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 654
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_contacts"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_list"

    const v5, 0x7f070043

    const v6, 0x7f0b0602

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_2c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const v5, 0x7f07006f

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const v5, 0x7f07006f

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const v5, 0x7f07006f

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_tips"

    const v5, 0x7f07006f

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 664
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const v5, 0x7f07006f

    const v6, 0x7f0b0608

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_2d
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 673
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_answering_ending"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2e
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_easy_interaction_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "share_acc_setting_menu"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_script_injection_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_balance"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_hearing_aid"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_long_press_timeout_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v2, :cond_2f

    .line 702
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "samsung_captioning_preference_screen"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_2f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "google_captioning_preference_screen"

    const v5, 0x7f070001

    const v6, 0x7f0b060a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 710
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_30
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 723
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cover_note"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cover_note_weather_unit"

    const v5, 0x7f070042

    const v6, 0x7f0b0609

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_31
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-nez v1, :cond_32

    .line 730
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.cloudagent"

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 731
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pref_add_samsung_account"

    const v5, 0x7f070028

    const/4 v6, 0x1

    const v7, 0x7f0b05dc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 739
    :cond_32
    :goto_6
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    const v5, 0x7f070095

    const v6, 0x7f0b05dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "configure_account"

    const v5, 0x7f070095

    const v6, 0x7f0b05dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const v5, 0x7f070095

    const v6, 0x7f0b05dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "master_clear"

    const v5, 0x7f070095

    const v6, 0x7f0b05dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "home"

    const v5, 0x7f070063

    const v6, 0x7f0b062a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sms_application"

    const v5, 0x7f070063

    const v6, 0x7f0b062a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v5, 0x7f070090

    const v6, 0x7f0b062c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "encryption"

    const v5, 0x7f0700b6

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-nez v1, :cond_33

    .line 756
    new-instance v1, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 757
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 758
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sdEncpref"

    const v5, 0x7f0700b4

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_33
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 762
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_lock_settings"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_34
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_admin"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "selinux_security_level"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credential_storage_type"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "trusted_credentials"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credentials_install_key"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reset_credentials"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "use_wifi_only"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credentials_install"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartCardConfig"

    const v5, 0x7f0700af

    const v6, 0x7f0b062f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 780
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "local_backup_password"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_runtime"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "hdcp_checking"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bt_hci_snoop_log"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "proc_stats"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_app"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wifi_display_certification"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_hw_overdraw"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_rtl_layout_all_locales"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "window_animation_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "transition_animation_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "animator_duration_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "overlay_display_devices"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_opengl_traces"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_traces"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "immediately_destroy_activities"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "app_process_limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_all_anrs"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_non_rect_clip"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v12, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_35
    const-string v1, "ATT"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 824
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "system_update_settings_na_gsm"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :goto_7
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "status_info"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "container"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_name"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_model"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "firmware_version"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "baseband_version"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "kernel_version"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "build_number"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "selinux_status"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    if-nez v4, :cond_38

    .line 845
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_none"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_36

    .line 847
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_biometric_weak"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    :cond_36
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_37

    .line 850
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_biometric_weak_with_voice"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_37
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_signature"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_pattern"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_pin"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_password"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_smart"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_off"

    const v4, 0x7f0700b2

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 862
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const v4, 0x7f07006a

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_size"

    const v4, 0x7f07006a

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const v4, 0x7f07006a

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_weather"

    const v4, 0x7f07006a

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_profile"

    const v4, 0x7f07006a

    const-string v5, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_38
    :goto_8
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_default_rate"

    const v4, 0x7f0700d2

    const-string v5, "tts_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_play_example"

    const v4, 0x7f0700d2

    const-string v5, "tts_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time_and_date"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "missed_call"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unread_message"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "battery"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_music"

    const v4, 0x7f070097

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "single_photo_view"

    const v4, 0x7f070011

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "now_playing_on_music"

    const v4, 0x7f070011

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bgm_on_lock_screen"

    const v4, 0x7f070011

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "advanced_air_call_accept_auto_start_speaker"

    const v4, 0x7f07009a

    const-string v5, "air_call_accept"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_information_preview"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_progress_preview"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 920
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_speed_dial_preview"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_39
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_icon_label"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_list_scroll"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_pen_sound_and_haptic_feedback"

    const v4, 0x7f070084

    const-string v5, "pen_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "information_preview"

    const v4, 0x7f070052

    const-string v5, "finger_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "progress_bar_preview"

    const v4, 0x7f070052

    const-string v5, "finger_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "speed_dial_tip"

    const v4, 0x7f070052

    const-string v5, "finger_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "magnifier"

    const v4, 0x7f070052

    const-string v5, "finger_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_and_haptic_feedback"

    const v4, 0x7f070052

    const-string v5, "finger_air_view_option"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_sensitivity"

    const v4, 0x7f0700c1

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_visual_feedback_icon"

    const v4, 0x7f0700c1

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 956
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_toggle"

    const v4, 0x7f0700bc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_pin"

    const v4, 0x7f0700bc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_3a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 960
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "perso_toggle"

    const v4, 0x7f0700bc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_3b
    const-string v1, "ATT"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 976
    :cond_3c
    :goto_9
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_screen_help"

    const v3, 0x7f070081

    const-string v4, "onehand_help"

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "input_control_help"

    const v3, 0x7f070081

    const-string v4, "onehand_help"

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    :goto_a
    return-void

    :cond_3d
    move v0, v1

    .line 151
    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v5

    .line 266
    const-string v5, "SettingsSearchUtils"

    const-string v6, "Browser Bar not found"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 348
    :cond_3e
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 403
    :cond_3f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v5, 0x7f0700ae

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_widget_options"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 408
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_40
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "set_wakeup_command"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v5, 0x7f0700a5

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    const v5, 0x7f0700a5

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v5, 0x7f0700a5

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 418
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v5, 0x7f0700a5

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_41
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v5, 0x7f0700b1

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v5, 0x7f0700a8

    const v6, 0x7f0b05fa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 527
    :cond_42
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_hovering_sound"

    const v5, 0x7f07008b

    const v6, 0x7f0b0616

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 732
    :catch_1
    move-exception v1

    .line 733
    const-string v1, "SettingsSearchUtils"

    const-string v3, "Cloud package not found"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 825
    :cond_43
    if-eqz v0, :cond_44

    .line 827
    :cond_44
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 828
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "system_update_settings_vzw"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 830
    :cond_45
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "software_update_settings"

    const v5, 0x7f070036

    const v6, 0x7f0b0633

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 871
    :cond_46
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_short_or_camera_widget"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_clock_or_myprofile"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_size"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_profile"

    const v4, 0x7f070069

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 966
    :cond_47
    if-eqz v0, :cond_48

    .line 969
    :cond_48
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "update"

    const v3, 0x7f0700c2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v3, v10, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_update"

    const v3, 0x7f0700c2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v3, v10, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "wifi_only"

    const v3, 0x7f0700c2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v3, v10, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 983
    :cond_49
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05e0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05e2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05ee

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 988
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05f0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05f2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_4a
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05f5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05f6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1005
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05fd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_4b
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1010
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0620

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_4c
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1016
    :cond_4d
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1017
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05ff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_4e
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Call settings"

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0603

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Safety assistance"

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0611

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0612

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0614

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0615

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070034

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05da

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05dd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0628

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b062c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b062e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1048
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_4f
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0633

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07006e

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "toggle_airplane"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "mobile_network_settings"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "tether_settings"

    const v5, 0x7f0700ec

    const v6, 0x7f0b05ee

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_50
    if-eqz v3, :cond_5b

    .line 1060
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings_for_att"

    const v4, 0x7f0700ec

    const v5, 0x7f0b05ee

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    :goto_b
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sms_application"

    const v4, 0x7f0700ec

    const v5, 0x7f0b05ee

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "print_settings"

    const v4, 0x7f0700ec

    const v5, 0x7f0b05ee

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1071
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v4, 0x7f07007e

    const v5, 0x7f0b05f0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_51
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_onoff"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_shared_contents"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_accept_device"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_reject_device"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_to"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_from"

    const v4, 0x7f070015

    const v5, 0x7f0b05f3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v4, 0x7f0700ae

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_widget_options"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 1093
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_52
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "set_wakeup_command"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v4, 0x7f0700a5

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    const v4, 0x7f0700a5

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v4, 0x7f0700a5

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1103
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v4, 0x7f0700a5

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_53
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v4, 0x7f0700b1

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v4, 0x7f0700a8

    const v5, 0x7f0b05fa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wallpaper"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_panel_edit"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_multi_window"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_mode"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "MONOTYPE"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "touch_key_light"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_adjust_touch"

    const v4, 0x7f07003e

    const v5, 0x7f0b05fb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 1131
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const v4, 0x7f070064

    const v5, 0x7f0b05fd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const v4, 0x7f070064

    const v5, 0x7f0b05fd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const v4, 0x7f070064

    const v5, 0x7f0b05fd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const v4, 0x7f070064

    const v5, 0x7f0b05fd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_54
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ring_volume"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback_intensity"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ringtone"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_vibration"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_sound"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "my_sound"

    const v4, 0x7f0700c3

    const v5, 0x7f0b05fe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "always"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_contacts"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_list"

    const v4, 0x7f070043

    const v5, 0x7f0b0602

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const v4, 0x7f070044

    const v5, 0x7f0b0603

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const v4, 0x7f070044

    const v5, 0x7f0b0603

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const v4, 0x7f070044

    const v5, 0x7f0b0603

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const v4, 0x7f070044

    const v5, 0x7f0b0603

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const v4, 0x7f07006f

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const v4, 0x7f07006f

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const v4, 0x7f07006f

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_tips"

    const v4, 0x7f07006f

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1173
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const v4, 0x7f07006f

    const v5, 0x7f0b0608

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_55
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const v4, 0x7f070042

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const v4, 0x7f070042

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const v4, 0x7f070042

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const v4, 0x7f070042

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v4, 0x7f070042

    const v5, 0x7f0b0609

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_answering_ending"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "share_acc_setting_menu"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_script_injection_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_balance"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_long_press_timeout_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b060a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_time_interval"

    const v4, 0x7f070080

    const-string v5, "notification_preference"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_language"

    const v4, 0x7f070062

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_input_method"

    const v4, 0x7f070062

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "recognizer_settings"

    const v4, 0x7f070062

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings"

    const v4, 0x7f070062

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_speed"

    const v4, 0x7f070062

    const v5, 0x7f0b060e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_motion"

    const v4, 0x7f07009b

    const v5, 0x7f0b0611

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "motion"

    const v4, 0x7f07009b

    const v5, 0x7f0b0611

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "surface"

    const v4, 0x7f07009b

    const v5, 0x7f0b0611

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "g_sensor_cal"

    const v4, 0x7f07009b

    const v5, 0x7f0b0611

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const v4, 0x7f0700c0

    const v5, 0x7f0b0612

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const v4, 0x7f0700c0

    const v5, 0x7f0b0612

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const v4, 0x7f0700c0

    const v5, 0x7f0b0612

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const v4, 0x7f0700c0

    const v5, 0x7f0b0612

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_view_mode"

    const v4, 0x7f070013

    const v5, 0x7f0b0614

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_air_view_option"

    const v4, 0x7f070013

    const v5, 0x7f0b0614

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "finger_air_view_option"

    const v4, 0x7f070013

    const v5, 0x7f0b0614

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_air_button"

    const v4, 0x7f070013

    const v5, 0x7f0b0614

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1237
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1238
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pref_add_samsung_account"

    const v4, 0x7f070028

    const/4 v5, 0x1

    const v6, 0x7f0b05dc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1246
    :cond_56
    :goto_c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    const v4, 0x7f070095

    const v5, 0x7f0b05dd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "configure_account"

    const v4, 0x7f070095

    const v5, 0x7f0b05dd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const v4, 0x7f070095

    const v5, 0x7f0b05dd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "master_clear"

    const v4, 0x7f070095

    const v5, 0x7f0b05dd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_toggle"

    const v4, 0x7f070067

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_gps"

    const v4, 0x7f070067

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_network"

    const v4, 0x7f070067

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1263
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assisted_gps"

    const v4, 0x7f070067

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    :cond_57
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_my_place"

    const v4, 0x7f070067

    const v5, 0x7f0b05e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "encryption"

    const v4, 0x7f0700b6

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sdEncpref"

    const v4, 0x7f0700b4

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_card_lock"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_administrators"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "trusted_credentials"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credentials_install_key"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reset_credentials"

    const v4, 0x7f0700af

    const v5, 0x7f0b062f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "home"

    const v4, 0x7f070063

    const v5, 0x7f0b062a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sms_application"

    const v4, 0x7f070063

    const v5, 0x7f0b062a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "timezone"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date_format"

    const v4, 0x7f070032

    const v5, 0x7f0b0625

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1294
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "local_backup_password"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "hdcp_checking"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_app"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "window_animation_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "transition_animation_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "animator_duration_scale"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "overlay_display_devices"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_opengl_traces"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_traces"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "immediately_destroy_activities"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "app_process_limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_all_anrs"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v12, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_58
    const-string v1, "ATT"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1331
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "system_update_settings_na_gsm"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    :goto_d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "status_info"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "container"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_name"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_model"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "firmware_version"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1345
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "baseband_version"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_59
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "kernel_version"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "build_number"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "selinux_status"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_none"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_signature"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pattern"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pin"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_password"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_off"

    const v2, 0x7f0700b2

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_clock_or_myprofile"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "clock_size"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_date_and_year"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_profile"

    const v2, 0x7f070069

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification_panel_menu"

    const v2, 0x7f07007f

    const-string v3, "notification_panel_edit"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_motion_indicator"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const v2, 0x7f07000e

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const v2, 0x7f070074

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const v2, 0x7f070074

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const v2, 0x7f070074

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const v2, 0x7f070074

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const v2, 0x7f070074

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const v2, 0x7f07005b

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const v2, 0x7f07005b

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_0"

    const v2, 0x7f0700c1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_1"

    const v2, 0x7f0700c1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_sensitivity"

    const v2, 0x7f0700c1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const v2, 0x7f0700c1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_pointer"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_information_preview"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_progress_preview"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1412
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_speed_dial_preview"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    :cond_5a
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_webpage_magnifier"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_icon_label"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_list_scroll"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_sound_and_haptic_feedback"

    const v2, 0x7f070083

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const v2, 0x7f070052

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const v2, 0x7f070052

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const v2, 0x7f070052

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const v2, 0x7f070052

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const v2, 0x7f070052

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "time_and_date"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "missed_call"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unread_message"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "battery"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "current_music"

    const v2, 0x7f070097

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "single_photo_view"

    const v2, 0x7f070011

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "internet_window"

    const v2, 0x7f070011

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "now_playing_on_music"

    const v2, 0x7f070011

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "bgm_on_lock_screen"

    const v2, 0x7f070011

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "note_page_view"

    const v2, 0x7f070011

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "advanced_air_call_accept_auto_start_speaker"

    const v2, 0x7f07009a

    const-string v3, "air_call_accept"

    invoke-direct {p0, v1, v2, v10, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1064
    :cond_5b
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings"

    const v4, 0x7f0700ec

    const v5, 0x7f0b05ee

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1239
    :catch_2
    move-exception v1

    .line 1240
    const-string v1, "SettingsSearchUtils"

    const-string v3, "Cloud package not found"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1332
    :cond_5c
    if-eqz v0, :cond_5d

    .line 1334
    :cond_5d
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1335
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "system_update_settings_vzw"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1337
    :cond_5e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "software_update_settings"

    const v3, 0x7f070036

    const v4, 0x7f0b0633

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 466
    :catch_3
    move-exception v1

    goto/16 :goto_4
.end method

.method private loadMenufromCSCXml()V
    .locals 12

    .prologue
    .line 1559
    const/4 v1, 0x0

    .line 1561
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1562
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1563
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1566
    new-instance v2, Ljava/io/FileReader;

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1567
    :try_start_1
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1568
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1573
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1576
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1577
    const-string v1, "SearchMenuFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1578
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1665
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1667
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1675
    if-eqz v1, :cond_2

    .line 1677
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1683
    :cond_2
    :goto_1
    return-void

    .line 1583
    :cond_3
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1585
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v5, :cond_12

    .line 1586
    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 1590
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 1591
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1592
    const-string v1, "AddMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1593
    const-string v1, "SettingsSearchUtils"

    const-string v3, "node name : AddMenu"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1596
    :cond_6
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_b

    .line 1597
    :cond_7
    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_6

    .line 1601
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1602
    const-string v3, "menuInfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1604
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1605
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 1606
    iget-object v7, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1608
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1610
    const/4 v8, 0x3

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1611
    if-nez v7, :cond_8

    .line 1612
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v3, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1614
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1668
    :catch_1
    move-exception v0

    .line 1670
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1675
    if-eqz v2, :cond_2

    .line 1677
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 1678
    :catch_2
    move-exception v0

    .line 1679
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1616
    :cond_8
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    .line 1617
    :try_start_7
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1620
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 1671
    :catch_3
    move-exception v0

    .line 1673
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1675
    if-eqz v2, :cond_2

    .line 1677
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 1678
    :catch_4
    move-exception v0

    .line 1679
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1622
    :cond_9
    :try_start_a
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 1675
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_a

    .line 1677
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1680
    :cond_a
    :goto_6
    throw v0

    .line 1628
    :cond_b
    :try_start_c
    const-string v1, "RemoveMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1629
    const-string v0, "SettingsSearchUtils"

    const-string v1, "node name : RemoveMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1632
    :cond_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 1633
    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 1637
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1638
    const-string v1, "menuInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1639
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1640
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1641
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "xml"

    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1643
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1645
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1646
    if-nez v8, :cond_10

    .line 1647
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1655
    :cond_e
    :goto_7
    const/4 v3, 0x0

    :goto_8
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_c

    .line 1656
    invoke-direct {p0, v1, v7, v8, v0}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1658
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1655
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1649
    :cond_10
    const/4 v3, 0x1

    if-ne v8, v3, :cond_e

    .line 1650
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v2, v1

    .line 1675
    :cond_12
    if-eqz v2, :cond_2

    .line 1677
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 1678
    :catch_5
    move-exception v0

    .line 1679
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1678
    :catch_6
    move-exception v0

    .line 1679
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1678
    :catch_7
    move-exception v1

    .line 1679
    const-string v2, "SettingsSearchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cscFile IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1675
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 1671
    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 1668
    :catch_9
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    .line 1665
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method private menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;
    .locals 1
    .parameter "key"
    .parameter "fileId"
    .parameter "paretnType"
    .parameter "parentKey"

    .prologue
    .line 1448
    new-instance v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$MenuInfoItem;-><init>()V

    .line 1450
    .local v0, infoItem:Lcom/android/settings/search/SearchItem$MenuInfoItem;
    iput-object p1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    .line 1451
    iput p2, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    .line 1452
    iput p3, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    .line 1453
    iput-object p4, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    .line 1455
    return-object v0
.end method


# virtual methods
.method public getAddSearchMenuInCode()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x7f090f55

    const v5, 0x7f0b062f

    const/4 v4, 0x0

    .line 1705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1741
    const-string v2, "RemoteControls"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1742
    const-wide/32 v2, 0x7f090c4e

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1743
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1744
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1745
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_0
    const-string v0, "SettingsSearchUtils"

    const-string v2, "SecProductFeature_IMS.SEC_PRODUCT_FEATURE_IMS_TMUS_COMMONIMS_WFC: true"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1750
    const-string v2, "SettingsSearchUtils"

    const-string v3, "wifi calling"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const-string v2, "wfc_settings_key"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1752
    const-wide/32 v2, 0x7f091132

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1753
    const v2, 0x7f0b05ee

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1754
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1755
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1759
    const-string v2, "SettingsSearchUtils"

    const-string v3, "change password."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v2, "mPhonePasswordPreference"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1761
    const-wide/32 v2, 0x7f090075

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1762
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1763
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1764
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1767
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1768
    const-string v2, "SIMAlert"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1769
    const-wide/32 v2, 0x7f090c48

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1770
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1771
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1772
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1776
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1777
    const-string v2, "GoToSamsungDive"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1778
    const-wide/32 v2, 0x7f090c63

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1779
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1780
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1781
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    :cond_3
    new-instance v2, Lcom/android/settings/search/SearchItem;

    invoke-direct {v2}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1787
    const-string v0, "note_page_view"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1788
    iput-wide v6, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1789
    const-wide/32 v3, 0x7f090f59

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 1790
    const-string v0, "air_turn"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1791
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1792
    const-string v0, "com.samsung.android.snote"

    .line 1795
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1797
    if-eqz v0, :cond_4

    .line 1798
    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const-wide/32 v3, 0x7f090f57

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    return-object v1

    .line 1801
    :cond_4
    const-wide/32 v3, 0x7f090f55

    :try_start_1
    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1805
    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSearchMenuInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1700
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuInfoItem count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-object v0
.end method
