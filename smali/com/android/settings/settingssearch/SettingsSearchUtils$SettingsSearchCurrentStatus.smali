.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchCurrentStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    }
.end annotation


# instance fields
.field private final GLOBAL:I

.field private final NONE:I

.field private final SECURE:I

.field private final SYSTEM:I

.field private final TAG:Ljava/lang/String;

.field private final devOptionKey:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKeyMatchDBInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4292
    const-string v0, "SearchDirectSettingUpdate"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->TAG:Ljava/lang/String;

    .line 4294
    iput v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->NONE:I

    .line 4295
    iput v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SYSTEM:I

    .line 4296
    iput v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->GLOBAL:I

    .line 4297
    iput v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SECURE:I

    .line 4308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    .line 4310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    .line 4319
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keep_screen_on"

    aput-object v1, v0, v2

    const-string v1, "enforce_read_external"

    aput-object v1, v0, v3

    const-string v1, "enable_adb"

    aput-object v1, v0, v4

    const-string v1, "bugreport_in_power"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "allow_mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wait_for_debugger"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "verify_apps_over_usb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "show_touches"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pointer_location"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "debug_layout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "show_hw_screen_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "show_hw_layers_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "show_hw_overdraw"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "show_screen_updates"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "disable_overlays"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "force_hw_ui"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "force_msaa"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "strict_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "show_cpu_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "track_frame_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "immediately_destroy_activities"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "show_all_anrs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    .line 4313
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    .line 4314
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->initDBInof()V

    .line 4315
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5062
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5063
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 5078
    :cond_0
    :goto_0
    return v0

    .line 5066
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5069
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5070
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5071
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5072
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5073
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5074
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 5078
    goto :goto_0
.end method

.method private getCurrentStateNoneType(Ljava/lang/String;)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4740
    .line 4742
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4745
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4746
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v0

    move v3, v0

    .line 4871
    :goto_0
    const v0, 0x7f0b05ef

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4872
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 4875
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    move v3, v1

    .line 4918
    :cond_1
    :goto_1
    if-ne v3, v1, :cond_28

    .line 4919
    :goto_2
    return v1

    .line 4747
    :cond_2
    const-string v3, "allshare_onoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4748
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4750
    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 4751
    goto :goto_0

    :cond_3
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4752
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 4753
    :cond_4
    const-string v3, "visiblepattern"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4754
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 4755
    :cond_5
    const-string v0, "clear_font"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4756
    const-string v0, "persist.sys.font_clarity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 4757
    goto :goto_0

    :cond_6
    move v3, v2

    .line 4759
    goto :goto_0

    .line 4760
    :cond_7
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4761
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    move v3, v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3

    .line 4762
    :cond_9
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4763
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 4766
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    move v3, v0

    .line 4774
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 4769
    goto :goto_4

    .line 4770
    :catch_0
    move-exception v0

    .line 4772
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    goto :goto_4

    .line 4774
    :cond_b
    const-string v0, "data_transfer_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4775
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 4776
    const-string v3, "dtf"

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    .line 4777
    goto/16 :goto_0

    :cond_c
    const-string v0, "location_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4778
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gps"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4780
    :cond_d
    const-string v0, "location_vzw_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4781
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vzw_lbs"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4783
    :cond_e
    const-string v0, "enforce_read_external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4784
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4785
    :cond_f
    const-string v0, "debug_layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4786
    const-string v0, "debug.layout"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4787
    :cond_10
    const-string v0, "show_hw_screen_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4788
    const-string v0, "debug.hwui.show_dirty_regions"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4790
    :cond_11
    const-string v0, "show_hw_layers_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4791
    const-string v0, "debug.hwui.show_layers_updates"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4793
    :cond_12
    const-string v0, "show_hw_overdraw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v3, v2

    goto/16 :goto_0

    .line 4796
    :cond_13
    const-string v0, "show_screen_updates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4798
    :try_start_1
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4799
    if-eqz v0, :cond_2b

    .line 4800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 4802
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4803
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4805
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4807
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4808
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 4809
    if-eqz v0, :cond_14

    move v0, v1

    .line 4810
    :goto_5
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4811
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_6
    move v3, v0

    .line 4816
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 4809
    goto :goto_5

    .line 4813
    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 4815
    :goto_7
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v3, v0

    .line 4816
    goto/16 :goto_0

    .line 4817
    :cond_15
    const-string v0, "disable_overlays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4819
    :try_start_3
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4820
    if-eqz v0, :cond_2a

    .line 4821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 4823
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4824
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4826
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4828
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4829
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4831
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 4832
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 4833
    if-eqz v0, :cond_16

    move v0, v1

    .line 4834
    :goto_8
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4835
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_9
    move v3, v0

    .line 4840
    goto/16 :goto_0

    :cond_16
    move v0, v2

    .line 4833
    goto :goto_8

    .line 4837
    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 4839
    :goto_a
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v3, v0

    .line 4840
    goto/16 :goto_0

    .line 4841
    :cond_17
    const-string v0, "force_hw_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4842
    const-string v0, "persist.sys.ui.hw"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4843
    :cond_18
    const-string v0, "force_msaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4844
    const-string v0, "debug.egl.force_msaa"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4845
    :cond_19
    const-string v0, "strict_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4846
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v3, v2

    .line 4847
    goto/16 :goto_0

    .line 4849
    :cond_1a
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4851
    :cond_1b
    const-string v0, "track_frame_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4852
    const-string v0, "debug.hwui.profile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4853
    :cond_1c
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4854
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 4857
    :try_start_5
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    :goto_b
    move v3, v0

    .line 4862
    goto/16 :goto_0

    .line 4858
    :catch_3
    move-exception v0

    .line 4860
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    goto :goto_b

    .line 4862
    :cond_1d
    const-string v0, "visiblesignature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v3, v2

    goto/16 :goto_0

    .line 4864
    :cond_1e
    const-string v0, "location_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4865
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4866
    :cond_1f
    const-string v0, "location_vzw_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4867
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 4879
    :cond_20
    const v0, 0x7f0b05f1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4881
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 4882
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 4883
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_21

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_1

    :cond_21
    move v3, v1

    .line 4885
    goto/16 :goto_1

    .line 4887
    :cond_22
    const v0, 0x7f0b05ff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4889
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 4890
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v3, v1

    .line 4891
    goto/16 :goto_1

    .line 4893
    :cond_23
    const-string v0, "toggle_android_beam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4894
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 4895
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 4896
    goto/16 :goto_1

    .line 4898
    :cond_24
    const-string v0, "location_toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4904
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "gps"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 4906
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 4908
    if-nez v0, :cond_25

    if-eqz v4, :cond_1

    :cond_25
    move v3, v1

    .line 4909
    goto/16 :goto_1

    .line 4911
    :cond_26
    const-string v0, "enable_switch_wifi_ap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4912
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 4913
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 4914
    const/16 v3, 0xd

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_c
    move v3, v0

    .line 4915
    goto/16 :goto_1

    :cond_27
    move v0, v2

    .line 4914
    goto :goto_c

    :cond_28
    move v1, v2

    .line 4918
    goto/16 :goto_2

    .line 4837
    :catch_4
    move-exception v3

    goto/16 :goto_a

    .line 4813
    :catch_5
    move-exception v3

    goto/16 :goto_7

    :cond_29
    move v3, v2

    goto/16 :goto_0

    :cond_2a
    move v0, v2

    goto/16 :goto_9

    :cond_2b
    move v0, v2

    goto/16 :goto_6
.end method

.method private getDependecyExceptionState(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4943
    .line 4944
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4945
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vibrate"

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mute"

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 5003
    :cond_1
    :goto_0
    return v1

    .line 4949
    :cond_2
    const-string v0, "lock_screen_short_or_camera_widget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4950
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 4951
    :goto_1
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4952
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    move v1, v2

    .line 4955
    goto :goto_0

    :cond_4
    move v0, v2

    .line 4950
    goto :goto_1

    .line 4956
    :cond_5
    const-string v0, "wait_for_debugger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4957
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4959
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_6
    move v1, v2

    .line 4962
    goto :goto_0

    .line 4964
    :cond_7
    const-string v0, "verify_apps_over_usb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4965
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->enableVerifierSetting()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 4968
    goto :goto_0

    .line 4969
    :cond_8
    const-string v0, "multiple_lock_screenswitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_myprofile_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_wakeup_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_shortcut_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4971
    :cond_9
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    .line 4974
    goto/16 :goto_0

    .line 4976
    :cond_a
    const v0, 0x7f0b0629

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4977
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 4979
    :goto_2
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_d

    move v3, v1

    .line 4982
    :goto_3
    if-eqz v0, :cond_b

    if-nez v3, :cond_1

    :cond_b
    move v1, v2

    .line 4983
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 4977
    goto :goto_2

    :cond_d
    move v3, v2

    .line 4979
    goto :goto_3

    .line 4985
    :cond_e
    const-string v0, "send_dual_captured_image_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4986
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_b_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    .line 4989
    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 4992
    :goto_4
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4993
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4994
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 4995
    goto/16 :goto_0

    .line 4992
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5031
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5033
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5042
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 5035
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 5037
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 5039
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 5033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDBInof()V
    .locals 10

    .prologue
    const v9, 0x7f0b0623

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4333
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05f4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4334
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0629

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4335
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0636

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4336
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b064f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "usb_tether_settings"

    const-string v2, "usb_tethering_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4340
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_bluetooth_tethering"

    const-string v2, "bluetooth_tethering_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4343
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_airplane"

    const-string v2, "airplane_mode_on"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4346
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "allshare_onoff"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4349
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "multiple_lock_screen"

    const-string v2, "kg_multiple_lockscreen"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4350
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "help_text"

    const-string v2, "unlock_text"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4351
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "say_your_wakeup"

    const-string v2, "wake_up_lock_screen"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4352
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "biometric_weak_liveliness"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4353
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_button_instantly_locks"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4354
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "visiblepattern"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4355
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "quick_note"

    const-string v2, "lock_screen_quick_note"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4356
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "visiblesignature"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4359
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_multi_window"

    const-string v2, "multi_window_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4360
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "accelerometer"

    const-string v2, "accelerometer_rotation"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4361
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "clear_font"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4362
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "display_battery_level"

    const-string v2, "display_battery_percentage"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4363
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "edit_screen_capture"

    const-string v2, "edit_after_screen_capture"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4364
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_mode"

    const-string v2, "power_saving_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4365
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_adjust_touch"

    const-string v2, "auto_adjust_touch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4366
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "reading_mode"

    const-string v2, "e_reading_display_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4369
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_charging_key"

    const-string v2, "led_indicator_charing"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4370
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_low_battery_key"

    const-string v2, "led_indicator_low_battery"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4371
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_missed_event_key"

    const-string v2, "led_indicator_missed_event"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4372
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_voice_recording_key"

    const-string v2, "led_indicator_voice_recording"

    const-string v3, "led_indicator_missed_event_key"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4373
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_incoming_notification_key"

    const-string v2, "led_indicator_incoming_notification"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4376
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "vibrate_when_ringing"

    const-string v2, "vibrate_when_ringing"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4377
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dtmf_tone"

    const-string v2, "dtmf_tone"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4378
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sound_effects"

    const-string v2, "sound_effects_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4379
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_sounds"

    const-string v2, "lockscreen_sounds_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4380
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "gps_notification_sounds"

    const-string v2, "gps_noti_sound_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4381
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "haptic_feedback"

    const-string v2, "haptic_feedback_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4382
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_audio_media_enabled"

    const-string v2, "dock_audio_media_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4383
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4384
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sip_feedback_sound"

    const-string v2, "sip_key_feedback_sound"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4385
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sip_feedback_vibration"

    const-string v2, "sip_key_feedback_vibration"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4388
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_incoming_calls"

    const-string v2, "dormant_disable_incoming_calls"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4389
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_notifications"

    const-string v2, "dormant_disable_notifications"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4390
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_alarm_and_timer"

    const-string v2, "dormant_disable_alarm_and_timer"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4391
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_led_indicator"

    const-string v2, "dormant_disable_led_indicator"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4392
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "always"

    const-string v2, "dormant_always"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4395
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "incoming_call_notification"

    const-string v2, "driving_mode_incoming_call_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4396
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "chaton_mode_notification"

    const-string v2, "driving_mode_chaton_call_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4397
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_call_accept_hands_free"

    const-string v2, "driving_mode_air_call_accept"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4398
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "message_notification"

    const-string v2, "driving_mode_message_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "email_notification"

    const-string v2, "driving_mode_email_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4400
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_mail_notification"

    const-string v2, "driving_mode_voice_mail_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4401
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "alarm_notification"

    const-string v2, "driving_mode_alarm_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4402
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "schedule_notification"

    const-string v2, "driving_mode_schedule_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4403
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "unlock_screen_contents"

    const-string v2, "driving_mode_unlock_screen_contents"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4406
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_incomming_calls"

    const-string v2, "voice_input_control_incomming_calls"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4407
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_chatonv"

    const-string v2, "voice_input_control_chatonv"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4408
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_alarm"

    const-string v2, "voice_input_control_alarm"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4409
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_camera"

    const-string v2, "voice_input_control_camera"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4410
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_music"

    const-string v2, "voice_input_control_music"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4413
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_cpu"

    const-string v2, "psm_cpu_clock"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4414
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_display"

    const-string v2, "psm_display"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4415
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_background_color"

    const-string v2, "psm_background_colour"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4416
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_haptic"

    const-string v2, "psm_haptic_feedback"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4417
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_auto_turn_on"

    const-string v2, "psm_auto_turn_on"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4420
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4421
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "cradle_enable"

    const-string v2, "cradle_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4422
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "desk_home_screen_display"

    const-string v2, "desk_home_screen_display"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4423
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "automatic_unlock"

    const-string v2, "automatic_unlock"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4424
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "audio_applications"

    const-string v2, "audio_applications"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4427
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    const-string v2, "accelerometer_rotation_second"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4428
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4429
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_speak_password_preference"

    const-string v2, "speak_password"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4430
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_power_button_ends_call_preference"

    const-string v2, "incall_power_button_behavior"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4431
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_key_hold"

    const-string v2, "power_key_hold"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4432
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "high_contrast"

    const-string v2, "high_contrast"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4433
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "mono_audio_key"

    const-string v2, "mono_audio_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4434
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "all_sound_off_key"

    const-string v2, "all_sound_off"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4435
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "flash_notification_key"

    const-string v2, "flash_notification"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4438
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_stay"

    const-string v2, "intelligent_sleep_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4439
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_rotation"

    const-string v2, "intelligent_rotation_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4440
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_pause"

    const-string v2, "smart_pause"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4441
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const-string v2, "smart_scroll_visual_feedback_icon"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4442
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_web"

    const-string v2, "smart_scroll_adv_web"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4443
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_list"

    const-string v2, "smart_scroll_adv_email_list"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4444
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_body"

    const-string v2, "smart_scroll_adv_email_body"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4445
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_readers_hub"

    const-string v2, "smart_scroll_adv_readers_hub"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4446
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_chrome"

    const-string v2, "smart_scroll_adv_chrome"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4447
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_gmail_body"

    const-string v2, "smart_scroll_adv_gmail_body"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4450
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "backup_data"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4451
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_restore"

    const-string v2, "backup_auto_restore"

    const/4 v3, 0x3

    const-string v4, "backup_data"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4452
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "data_transfer_mode"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4455
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_gps"

    const-string v2, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4456
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "mNetwork"

    const-string v2, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assisted_gps"

    const-string v2, "assisted_gps_enabled"

    const-string v3, "location_toggle"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "LockMyMobile"

    const-string v2, "lock_my_mobile"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4465
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_password"

    const-string v2, "show_password"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4466
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_install_applications"

    const-string v2, "install_non_market_apps"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4467
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_verify_applications"

    const-string v2, "package_verifier_enable"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4468
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_policy_update"

    const-string v2, "security_update_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4469
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "use_wifi_only"

    const-string v2, "use_wifi_only_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4472
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_time"

    const-string v2, "auto_time"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4473
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_zone"

    const-string v2, "auto_time_zone"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4474
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "24 hour"

    const-string v2, "time_12_24"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4477
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "keep_screen_on"

    const-string v2, "stay_on_while_plugged_in"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4478
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enforce_read_external"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4479
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_adb"

    const-string v2, "adb_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4480
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bugreport_in_power"

    const-string v2, "bugreport_in_power_menu"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4481
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "allow_mock_location"

    const-string v2, "mock_location"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4482
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wait_for_debugger"

    const-string v2, "wait_for_debugger"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "verify_apps_over_usb"

    const-string v2, "verifier_verify_adb_installs"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4484
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_touches"

    const-string v2, "show_touches"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4485
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pointer_location"

    const-string v2, "pointer_location"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4486
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "debug_layout"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4487
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_screen_udpates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4488
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_layers_udpates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4489
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_overdraw"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4490
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_screen_updates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4491
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_overlays"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4492
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_hw_ui"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4493
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_msaa"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4494
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "strict_mode"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4495
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_cpu_usage"

    const-string v2, "show_processes"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4496
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "track_frame_time"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4497
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "immediately_destroy_activities"

    const-string v2, "always_finish_activities"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4498
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_all_anrs"

    const-string v2, "anr_show_background"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4501
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_date_and_year"

    const-string v2, "lock_screen_date_and_year"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4504
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "brightness_adjustment"

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4507
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "open_multi_window_view"

    const-string v2, "open_multi_window_view"

    const v3, 0x7f0b0629

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4510
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const-string v2, "smart_scroll_visual_feedback_icon"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4511
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_web"

    const-string v2, "smart_scroll_adv_web"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4512
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_list"

    const-string v2, "smart_scroll_adv_email_list"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4513
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_body"

    const-string v2, "smart_scroll_adv_email_body"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4514
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_readers_hub"

    const-string v2, "smart_scroll_adv_readers_hub"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4515
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_chrome"

    const-string v2, "smart_scroll_adv_chrome"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4516
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_gmail_body"

    const-string v2, "smart_scroll_adv_gmail_body"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4520
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_information_preview"

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4521
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_progress_preview"

    const-string v2, "pen_hovering_progress_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4522
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_speed_dial_preview"

    const-string v2, "pen_hovering_speed_dial_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_webpage_magnifier"

    const-string v2, "pen_hovering_webpage_magnifier"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4526
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_icon_label"

    const-string v2, "pen_hovering_icon_label"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4527
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_list_scroll"

    const-string v2, "pen_hovering_list_scroll"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4528
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_sound_and_haptic_feedback"

    const-string v2, "pen_hovering_sound"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4531
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const-string v2, "finger_air_view_information_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4532
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const-string v2, "finger_air_view_pregress_bar_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4533
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const-string v2, "finger_air_view_speed_dial_tip"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4534
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const-string v2, "finger_air_view_magnifier"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4535
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const-string v2, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4536
    const-string v0, "hltejs01dcm"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SC-02F"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4537
    :cond_1
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4541
    :cond_2
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "time_and_date"

    const-string v2, "air_motion_turn_single_photo_view"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4542
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "notification"

    const-string v2, "glance_view_notification"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4543
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "missed_call"

    const-string v2, "glance_view_missed_call"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4544
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "unread_message"

    const-string v2, "glance_view_new_message"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4545
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "battery"

    const-string v2, "glance_view_battery_charging_info"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4546
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "current_music"

    const-string v2, "glance_view_now_playing_music"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4549
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "single_photo_view"

    const-string v2, "air_motion_turn_single_photo_view"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4550
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4551
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "internet_window"

    const-string v2, "air_motion_turn_internet_window"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4553
    :cond_3
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "now_playing_on_music"

    const-string v2, "air_motion_turn_now_playing_on_music"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4554
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bgm_on_lock_screen"

    const-string v2, "air_motion_turn_bgm_on_lock_screen"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4555
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "note_page_view"

    const-string v2, "air_motion_turn_note_page_view"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4558
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "advanced_air_call_accept_auto_start_speaker"

    const-string v2, "air_motion_call_accept_auto_start_speaker"

    const-string v3, "air_call_accept"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4561
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_spen_pointer"

    const-string v2, "pen_hovering_pointer"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4562
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "battery_saving"

    const-string v2, "pen_detect_mode_disabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4563
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "loss_prevention_alert"

    const-string v2, "pen_detachment_alert"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4564
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_writing_buddy"

    const-string v2, "pen_writing_buddy"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4567
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "any_screen"

    const-string v2, "any_screen_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4568
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dialer"

    const-string v2, "onehand_dialer_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4569
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "samsung_keypad"

    const-string v2, "onehand_samsungkeypad_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4570
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "calculator"

    const-string v2, "onehand_calculator_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4571
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pattern"

    const-string v2, "onehand_pattern_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4577
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "torchlight_enable"

    const-string v2, "torchlight_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4580
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sim_toggle"

    const-string v2, "icc_lock_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4583
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_update"

    const-string v2, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4584
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wifi_only"

    const-string v2, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4588
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05ef

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4589
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05f1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4590
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05ff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4591
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0601

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbeam_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4592
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0611

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4593
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0612

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4594
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0617

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4595
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4596
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4597
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0624

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4598
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0657

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4599
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0659

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4600
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4601
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0658

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4604
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_switch_wifi_ap"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4608
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_android_beam"

    const v2, 0x7f0b05ff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4618
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_shortcut_menu"

    const-string v2, "lock_screen_shortcut"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4619
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "safetyzone_settings"

    const-string v2, "safety_zone_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4622
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "multiple_lock_screenswitch"

    const-string v2, "kg_multiple_lockscreen"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4623
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_myprofile_settings"

    const-string v2, "my_profile_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4624
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_wakeup_settings"

    const-string v2, "wake_up_lock_screen"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4628
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "screensaver"

    const-string v2, "screensaver_enabled"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4631
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "color_blind"

    const-string v2, "color_blind"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4632
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assistant_menu_preference"

    const-string v2, "assistant_menu"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4633
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "access_control_key"

    const-string v2, "access_control_use"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4634
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_easy_interaction_preference"

    const-string v2, "easy_interaction"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4635
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "notification_preference"

    const-string v2, "notification_reminder"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4636
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "call_hearing_aid"

    const-string v2, "hearing_aid"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4639
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "support_secret_box"

    const-string v2, "fingerprint_secret_box"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4640
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "support_webpass"

    const-string v2, "fingerprint_webpass"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4641
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_finger_print"

    const-string v2, "lock_screen_fingerprint_shortcut"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4644
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_motion"

    const-string v2, "air_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4645
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "motion"

    const-string v2, "master_motion"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4646
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "surface"

    const-string v2, "surface_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4649
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const-string v2, "smart_scroll"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4652
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4655
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const-string v2, "kg_enable_camera_widget"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4656
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const-string v2, "dualclock_menu_settings"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4659
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pen_air_view"

    const-string v2, "pen_hovering"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4663
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const-string v2, "air_motion_glance_view"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4664
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const-string v2, "air_motion_scroll"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4665
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const-string v2, "air_motion_turn"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4666
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const-string v2, "air_motion_item_move"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4667
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const-string v2, "air_motion_call_accept"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4668
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_pin"

    const-string v2, "air_motion_clip"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4671
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const-string v2, "motion_pick_up_to_call_out"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4672
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const-string v2, "motion_pick_up"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4673
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const-string v2, "motion_zooming"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4674
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const-string v2, "motion_pan_to_browse_image"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4675
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const-string v2, "motion_overturn"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4678
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const-string v2, "surface_palm_swipe"

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4679
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const-string v2, "surface_palm_touch"

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4682
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "weather"

    const-string v2, "weather_cover"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4683
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "walking_mate"

    const-string v2, "walk_mate"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4686
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "send_dual_captured_image_key"

    const-string v2, "send_dual_captured_image"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4688
    return-void
.end method

.method private isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 5007
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 5008
    :catch_0
    move-exception v0

    .line 5009
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    .locals 1
    .parameter "key"
    .parameter "DBName"
    .parameter "DBType"
    .parameter "dependencyKey"

    .prologue
    .line 4691
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;-><init>(Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;)V

    .line 4693
    .local v0, directDBinfoItem:Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    iput-object p1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 4694
    iput-object p2, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 4695
    iput p3, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    .line 4696
    iput-object p4, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 4698
    return-object v0
.end method


# virtual methods
.method public getCurrentState(Ljava/lang/String;)Z
    .locals 8
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4702
    const/4 v4, 0x0

    .line 4703
    .local v4, retValue:I
    const/4 v1, -0x1

    .line 4704
    .local v1, DBType:I
    const/4 v0, 0x0

    .line 4705
    .local v0, DBName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 4707
    .local v3, retResultValue:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 4708
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v5, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4709
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v0, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 4710
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget v1, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    .line 4715
    :cond_0
    if-ne v1, v6, :cond_2

    .line 4716
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 4730
    :goto_1
    const-string v5, "24 hour"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4731
    const/16 v5, 0x18

    if-ne v4, v5, :cond_6

    move v3, v6

    .line 4736
    :goto_2
    return v3

    .line 4707
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4717
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 4718
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 4719
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    .line 4720
    const-string v5, "auto_restore"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4721
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 4723
    :cond_4
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 4727
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentStateNoneType(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_6
    move v3, v7

    .line 4731
    goto :goto_2

    .line 4733
    :cond_7
    if-eqz v4, :cond_8

    move v3, v6

    :goto_3
    goto :goto_2

    :cond_8
    move v3, v7

    goto :goto_3
.end method

.method public getDependecyState(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 4923
    const/4 v0, 0x1

    .line 4924
    .local v0, bState:Z
    const/4 v1, 0x0

    .line 4926
    .local v1, dependencyKey:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4927
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4928
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 4933
    :cond_0
    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4934
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getDependecyExceptionState(Ljava/lang/String;)Z

    move-result v0

    .line 4939
    :cond_1
    :goto_1
    return v0

    .line 4926
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4935
    :cond_3
    if-eqz v1, :cond_1

    .line 4936
    invoke-virtual {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentState(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
