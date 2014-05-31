.class public Lcom/android/settings/search/SearchDirectSettingUpdate;
.super Ljava/lang/Object;
.source "SearchDirectSettingUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mKeyMatchDBInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final GLOBAL:I

.field private final NONE:I

.field private final SECURE:I

.field private final SYSTEM:I

.field private final TAG:Ljava/lang/String;

.field private final devOptionKey:[Ljava/lang/String;

.field private mDialogType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SearchDirectSettingUpdate"

    iput-object v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->TAG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->NONE:I

    .line 56
    iput v3, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->SYSTEM:I

    .line 57
    iput v4, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->GLOBAL:I

    .line 58
    iput v5, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->SECURE:I

    .line 80
    const/16 v0, 0x18

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

    const/16 v1, 0x16

    const-string v2, "bt_hci_snoop_log"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "wifi_display_certification"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->devOptionKey:[Ljava/lang/String;

    .line 74
    sput-object p1, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->initDBInof()V

    .line 76
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 836
    sget-object v2, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 837
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 840
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    sget-object v2, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 844
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 847
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 848
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 852
    goto :goto_0
.end method

.method private getCurrentStateNoneType(Ljava/lang/String;)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    .line 516
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 519
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v0

    move v3, v0

    .line 645
    :goto_0
    const v0, 0x7f0b05ef

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 646
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 649
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    move v3, v1

    .line 692
    :cond_1
    :goto_1
    if-ne v3, v1, :cond_28

    .line 693
    :goto_2
    return v1

    .line 521
    :cond_2
    const-string v3, "allshare_onoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 522
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 525
    goto :goto_0

    :cond_3
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 527
    :cond_4
    const-string v3, "visiblepattern"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 528
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 529
    :cond_5
    const-string v0, "clear_font"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 530
    const-string v0, "persist.sys.font_clarity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 531
    goto :goto_0

    :cond_6
    move v3, v2

    .line 533
    goto :goto_0

    .line 534
    :cond_7
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

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

    .line 536
    :cond_9
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 537
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 540
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    move v3, v0

    .line 548
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 543
    goto :goto_4

    .line 544
    :catch_0
    move-exception v0

    .line 546
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    goto :goto_4

    .line 548
    :cond_b
    const-string v0, "data_transfer_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 549
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 550
    const-string v3, "dtf"

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    .line 551
    goto/16 :goto_0

    :cond_c
    const-string v0, "location_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 552
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gps"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 554
    :cond_d
    const-string v0, "location_vzw_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 555
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vzw_lbs"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 557
    :cond_e
    const-string v0, "enforce_read_external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 558
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 559
    :cond_f
    const-string v0, "debug_layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 560
    const-string v0, "debug.layout"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 561
    :cond_10
    const-string v0, "show_hw_screen_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 562
    const-string v0, "debug.hwui.show_dirty_regions"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 564
    :cond_11
    const-string v0, "show_hw_layers_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 565
    const-string v0, "debug.hwui.show_layers_updates"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 567
    :cond_12
    const-string v0, "show_hw_overdraw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v3, v2

    goto/16 :goto_0

    .line 570
    :cond_13
    const-string v0, "show_screen_updates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 572
    :try_start_1
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_2b

    .line 574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 576
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 579
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 581
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 582
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 583
    if-eqz v0, :cond_14

    move v0, v1

    .line 584
    :goto_5
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_6
    move v3, v0

    .line 590
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 583
    goto :goto_5

    .line 587
    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 589
    :goto_7
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v3, v0

    .line 590
    goto/16 :goto_0

    .line 591
    :cond_15
    const-string v0, "disable_overlays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 593
    :try_start_3
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_2a

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 597
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 600
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 602
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 603
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 605
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 606
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 607
    if-eqz v0, :cond_16

    move v0, v1

    .line 608
    :goto_8
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_9
    move v3, v0

    .line 614
    goto/16 :goto_0

    :cond_16
    move v0, v2

    .line 607
    goto :goto_8

    .line 611
    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 613
    :goto_a
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v3, v0

    .line 614
    goto/16 :goto_0

    .line 615
    :cond_17
    const-string v0, "force_hw_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 616
    const-string v0, "persist.sys.ui.hw"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 617
    :cond_18
    const-string v0, "force_msaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 618
    const-string v0, "debug.egl.force_msaa"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 619
    :cond_19
    const-string v0, "strict_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 620
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v3, v2

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_1a
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 625
    :cond_1b
    const-string v0, "track_frame_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 626
    const-string v0, "debug.hwui.profile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 627
    :cond_1c
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 628
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 631
    :try_start_5
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    :goto_b
    move v3, v0

    .line 636
    goto/16 :goto_0

    .line 632
    :catch_3
    move-exception v0

    .line 634
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    goto :goto_b

    .line 636
    :cond_1d
    const-string v0, "visiblesignature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v3, v2

    goto/16 :goto_0

    .line 638
    :cond_1e
    const-string v0, "location_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 639
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 640
    :cond_1f
    const-string v0, "location_vzw_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 641
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 653
    :cond_20
    const v0, 0x7f0b05f1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 655
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 657
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

    .line 659
    goto/16 :goto_1

    .line 661
    :cond_22
    const v0, 0x7f0b05ff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 663
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v3, v1

    .line 665
    goto/16 :goto_1

    .line 667
    :cond_23
    const-string v0, "toggle_android_beam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 668
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 670
    goto/16 :goto_1

    .line 672
    :cond_24
    const-string v0, "location_toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 678
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "gps"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 680
    sget-object v4, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 682
    if-nez v0, :cond_25

    if-eqz v4, :cond_1

    :cond_25
    move v3, v1

    .line 683
    goto/16 :goto_1

    .line 685
    :cond_26
    const-string v0, "enable_switch_wifi_ap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 687
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 688
    const/16 v3, 0xd

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_c
    move v3, v0

    .line 689
    goto/16 :goto_1

    :cond_27
    move v0, v2

    .line 688
    goto :goto_c

    :cond_28
    move v1, v2

    .line 692
    goto/16 :goto_2

    .line 611
    :catch_4
    move-exception v3

    goto/16 :goto_a

    .line 587
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

    .line 717
    .line 718
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vibrate"

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mute"

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 777
    :cond_1
    :goto_0
    return v1

    .line 723
    :cond_2
    const-string v0, "lock_screen_short_or_camera_widget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 725
    :goto_1
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 726
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    move v1, v2

    .line 729
    goto :goto_0

    :cond_4
    move v0, v2

    .line 724
    goto :goto_1

    .line 730
    :cond_5
    const-string v0, "wait_for_debugger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 731
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_6
    move v1, v2

    .line 736
    goto :goto_0

    .line 738
    :cond_7
    const-string v0, "verify_apps_over_usb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 739
    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->enableVerifierSetting()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 742
    goto :goto_0

    .line 743
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

    .line 745
    :cond_9
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    .line 748
    goto/16 :goto_0

    .line 750
    :cond_a
    const v0, 0x7f0b0629

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 751
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 753
    :goto_2
    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_d

    move v3, v1

    .line 756
    :goto_3
    if-eqz v0, :cond_b

    if-nez v3, :cond_1

    :cond_b
    move v1, v2

    .line 757
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 751
    goto :goto_2

    :cond_d
    move v3, v2

    .line 753
    goto :goto_3

    .line 759
    :cond_e
    const-string v0, "send_dual_captured_image_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 760
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_b_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    .line 763
    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 766
    :goto_4
    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 767
    iget-object v3, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->devOptionKey:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 768
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 769
    goto/16 :goto_0

    .line 766
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 805
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 807
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 816
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 809
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 811
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 813
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 807
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

    .line 94
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05f4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0629

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0636

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b064f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "usb_tether_settings"

    const-string v2, "usb_tethering_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_bluetooth_tethering"

    const-string v2, "bluetooth_tethering_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_airplane"

    const-string v2, "airplane_mode_on"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "allshare_onoff"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "multiple_lock_screen"

    const-string v2, "kg_multiple_lockscreen"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "help_text"

    const-string v2, "unlock_text"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "say_your_wakeup"

    const-string v2, "wake_up_lock_screen"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "biometric_weak_liveliness"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_button_instantly_locks"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "visiblepattern"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "quick_note"

    const-string v2, "lock_screen_quick_note"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "visiblesignature"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_multi_window"

    const-string v2, "multi_window_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "accelerometer"

    const-string v2, "accelerometer_rotation"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "clear_font"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "display_battery_level"

    const-string v2, "display_battery_percentage"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "edit_screen_capture"

    const-string v2, "edit_after_screen_capture"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_mode"

    const-string v2, "power_saving_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_adjust_touch"

    const-string v2, "auto_adjust_touch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "reading_mode"

    const-string v2, "e_reading_display_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_charging_key"

    const-string v2, "led_indicator_charing"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_low_battery_key"

    const-string v2, "led_indicator_low_battery"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_missed_event_key"

    const-string v2, "led_indicator_missed_event"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_voice_recording_key"

    const-string v2, "led_indicator_voice_recording"

    const-string v3, "led_indicator_missed_event_key"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_incoming_notification_key"

    const-string v2, "led_indicator_incoming_notification"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "vibrate_when_ringing"

    const-string v2, "vibrate_when_ringing"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dtmf_tone"

    const-string v2, "dtmf_tone"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sound_effects"

    const-string v2, "sound_effects_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_sounds"

    const-string v2, "lockscreen_sounds_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "gps_notification_sounds"

    const-string v2, "gps_noti_sound_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "haptic_feedback"

    const-string v2, "haptic_feedback_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_audio_media_enabled"

    const-string v2, "dock_audio_media_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sip_feedback_sound"

    const-string v2, "sip_key_feedback_sound"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sip_feedback_vibration"

    const-string v2, "sip_key_feedback_vibration"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_incoming_calls"

    const-string v2, "dormant_disable_incoming_calls"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_notifications"

    const-string v2, "dormant_disable_notifications"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_alarm_and_timer"

    const-string v2, "dormant_disable_alarm_and_timer"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_led_indicator"

    const-string v2, "dormant_disable_led_indicator"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "always"

    const-string v2, "dormant_always"

    const v3, 0x7f0b0611

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "incoming_call_notification"

    const-string v2, "driving_mode_incoming_call_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "chaton_mode_notification"

    const-string v2, "driving_mode_chaton_call_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_call_accept_hands_free"

    const-string v2, "driving_mode_air_call_accept"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "message_notification"

    const-string v2, "driving_mode_message_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "email_notification"

    const-string v2, "driving_mode_email_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_mail_notification"

    const-string v2, "driving_mode_voice_mail_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "alarm_notification"

    const-string v2, "driving_mode_alarm_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "schedule_notification"

    const-string v2, "driving_mode_schedule_notification"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "unlock_screen_contents"

    const-string v2, "driving_mode_unlock_screen_contents"

    const v3, 0x7f0b0612

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_incomming_calls"

    const-string v2, "voice_input_control_incomming_calls"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_chatonv"

    const-string v2, "voice_input_control_chatonv"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_alarm"

    const-string v2, "voice_input_control_alarm"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_camera"

    const-string v2, "voice_input_control_camera"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "voice_input_control_music"

    const-string v2, "voice_input_control_music"

    const v3, 0x7f0b0624

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_cpu"

    const-string v2, "psm_cpu_clock"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_display"

    const-string v2, "psm_display"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_background_color"

    const-string v2, "psm_background_colour"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_haptic"

    const-string v2, "psm_haptic_feedback"

    const v3, 0x7f0b0617

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_auto_turn_on"

    const-string v2, "psm_auto_turn_on"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "cradle_enable"

    const-string v2, "cradle_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "desk_home_screen_display"

    const-string v2, "desk_home_screen_display"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "automatic_unlock"

    const-string v2, "automatic_unlock"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "audio_applications"

    const-string v2, "audio_applications"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    const-string v2, "accelerometer_rotation_second"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_speak_password_preference"

    const-string v2, "speak_password"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_power_button_ends_call_preference"

    const-string v2, "incall_power_button_behavior"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_key_hold"

    const-string v2, "power_key_hold"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "high_contrast"

    const-string v2, "high_contrast"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "mono_audio_key"

    const-string v2, "mono_audio_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "all_sound_off_key"

    const-string v2, "all_sound_off"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "flash_notification_key"

    const-string v2, "flash_notification"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_stay"

    const-string v2, "intelligent_sleep_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_rotation"

    const-string v2, "intelligent_rotation_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_pause"

    const-string v2, "smart_pause"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const-string v2, "smart_scroll_visual_feedback_icon"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_web"

    const-string v2, "smart_scroll_adv_web"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_list"

    const-string v2, "smart_scroll_adv_email_list"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_body"

    const-string v2, "smart_scroll_adv_email_body"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_readers_hub"

    const-string v2, "smart_scroll_adv_readers_hub"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_chrome"

    const-string v2, "smart_scroll_adv_chrome"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_gmail_body"

    const-string v2, "smart_scroll_adv_gmail_body"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "backup_data"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_restore"

    const-string v2, "backup_auto_restore"

    const/4 v3, 0x3

    const-string v4, "backup_data"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "data_transfer_mode"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_gps"

    const-string v2, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "mNetwork"

    const-string v2, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assisted_gps"

    const-string v2, "assisted_gps_enabled"

    const-string v3, "location_toggle"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "LockMyMobile"

    const-string v2, "lock_my_mobile"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_password"

    const-string v2, "show_password"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_install_applications"

    const-string v2, "install_non_market_apps"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_verify_applications"

    const-string v2, "package_verifier_enable"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_policy_update"

    const-string v2, "security_update_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "use_wifi_only"

    const-string v2, "use_wifi_only_db"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_time"

    const-string v2, "auto_time"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_zone"

    const-string v2, "auto_time_zone"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "24 hour"

    const-string v2, "time_12_24"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "keep_screen_on"

    const-string v2, "stay_on_while_plugged_in"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enforce_read_external"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_adb"

    const-string v2, "adb_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bugreport_in_power"

    const-string v2, "bugreport_in_power_menu"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "allow_mock_location"

    const-string v2, "mock_location"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wait_for_debugger"

    const-string v2, "wait_for_debugger"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "verify_apps_over_usb"

    const-string v2, "verifier_verify_adb_installs"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_touches"

    const-string v2, "show_touches"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pointer_location"

    const-string v2, "pointer_location"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "debug_layout"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_screen_udpates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_layers_udpates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_overdraw"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_screen_updates"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_overlays"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_hw_ui"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_msaa"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "strict_mode"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_cpu_usage"

    const-string v2, "show_processes"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "track_frame_time"

    const-string v2, "exception"

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "immediately_destroy_activities"

    const-string v2, "always_finish_activities"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_all_anrs"

    const-string v2, "anr_show_background"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bt_hci_snoop_log"

    const-string v2, "bluetooth_hci_log"

    const/4 v3, 0x3

    const-string v4, "exception"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wifi_display_certification"

    const-string v2, "wifi_display_certification_on"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_date_and_year"

    const-string v2, "lock_screen_date_and_year"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "brightness_adjustment"

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "open_multi_window_view"

    const-string v2, "open_multi_window_view"

    const v3, 0x7f0b0629

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const-string v2, "smart_scroll_visual_feedback_icon"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_web"

    const-string v2, "smart_scroll_adv_web"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_list"

    const-string v2, "smart_scroll_adv_email_list"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_body"

    const-string v2, "smart_scroll_adv_email_body"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_readers_hub"

    const-string v2, "smart_scroll_adv_readers_hub"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_chrome"

    const-string v2, "smart_scroll_adv_chrome"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_gmail_body"

    const-string v2, "smart_scroll_adv_gmail_body"

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_information_preview"

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_progress_preview"

    const-string v2, "pen_hovering_progress_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_speed_dial_preview"

    const-string v2, "pen_hovering_speed_dial_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_webpage_magnifier"

    const-string v2, "pen_hovering_webpage_magnifier"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_icon_label"

    const-string v2, "pen_hovering_icon_label"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_list_scroll"

    const-string v2, "pen_hovering_list_scroll"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_pen_sound_and_haptic_feedback"

    const-string v2, "pen_hovering_sound"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const-string v2, "finger_air_view_information_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const-string v2, "finger_air_view_pregress_bar_preview"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const-string v2, "finger_air_view_speed_dial_tip"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const-string v2, "finger_air_view_magnifier"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const-string v2, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
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

    .line 301
    :cond_1
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "time_and_date"

    const-string v2, "air_motion_turn_single_photo_view"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "notification"

    const-string v2, "glance_view_notification"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "missed_call"

    const-string v2, "glance_view_missed_call"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "unread_message"

    const-string v2, "glance_view_new_message"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "battery"

    const-string v2, "glance_view_battery_charging_info"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "current_music"

    const-string v2, "glance_view_now_playing_music"

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "single_photo_view"

    const-string v2, "air_motion_turn_single_photo_view"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "internet_window"

    const-string v2, "air_motion_turn_internet_window"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "now_playing_on_music"

    const-string v2, "air_motion_turn_now_playing_on_music"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bgm_on_lock_screen"

    const-string v2, "air_motion_turn_bgm_on_lock_screen"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "note_page_view"

    const-string v2, "air_motion_turn_note_page_view"

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "advanced_air_call_accept_auto_start_speaker"

    const-string v2, "air_motion_call_accept_auto_start_speaker"

    const-string v3, "air_call_accept"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_spen_pointer"

    const-string v2, "pen_hovering_pointer"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "battery_saving"

    const-string v2, "pen_detect_mode_disabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "loss_prevention_alert"

    const-string v2, "pen_detachment_alert"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_writing_buddy"

    const-string v2, "pen_writing_buddy"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "any_screen"

    const-string v2, "any_screen_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dialer"

    const-string v2, "onehand_dialer_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "samsung_keypad"

    const-string v2, "onehand_samsungkeypad_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "calculator"

    const-string v2, "onehand_calculator_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pattern"

    const-string v2, "onehand_pattern_enabled"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "torchlight_enable"

    const-string v2, "torchlight_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sim_toggle"

    const-string v2, "icc_lock_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_update"

    const-string v2, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wifi_only"

    const-string v2, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05ef

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05f1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05ff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0601

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbeam_mode"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0611

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0612

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0617

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0624

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0657

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0659

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0658

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05f6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_switch_wifi_ap"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_android_beam"

    const v2, 0x7f0b05ff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_shortcut_menu"

    const-string v2, "lock_screen_shortcut"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "safetyzone_settings"

    const-string v2, "safety_zone_enable"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "multiple_lock_screenswitch"

    const-string v2, "kg_multiple_lockscreen"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_myprofile_settings"

    const-string v2, "my_profile_enabled"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_wakeup_settings"

    const-string v2, "wake_up_lock_screen"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "screensaver"

    const-string v2, "screensaver_enabled"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "recommended_apps"

    const-string v2, "recommended_apps_setting"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "color_blind"

    const-string v2, "color_blind"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assistant_menu_preference"

    const-string v2, "assistant_menu"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "access_control_key"

    const-string v2, "access_control_use"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_easy_interaction_preference"

    const-string v2, "easy_interaction"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "notification_preference"

    const-string v2, "notification_reminder"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "call_hearing_aid"

    const-string v2, "hearing_aid"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "samsung_captioning_preference_screen"

    const-string v2, "accessibility_sec_captioning_enabled"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "google_captioning_preference_screen"

    const-string v2, "accessibility_captioning_enabled"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "screen_magnification_preference_screen"

    const-string v2, "accessibility_display_magnification_enabled"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_global_gesture_preference_screen"

    const-string v2, "enable_accessibility_global_gesture_enabled"

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "support_secret_box"

    const-string v2, "fingerprint_secret_box"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "support_webpass"

    const-string v2, "fingerprint_webpass"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_finger_print"

    const-string v2, "lock_screen_fingerprint_shortcut"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_motion"

    const-string v2, "air_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "motion"

    const-string v2, "master_motion"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "surface"

    const-string v2, "surface_motion_engine"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const-string v2, "smart_scroll"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_toggle"

    invoke-direct {p0, v1, v6, v7, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const-string v2, "kg_enable_camera_widget"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const-string v2, "dualclock_menu_settings"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pen_air_view"

    const-string v2, "pen_hovering"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const-string v2, "air_motion_glance_view"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const-string v2, "air_motion_scroll"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const-string v2, "air_motion_turn"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const-string v2, "air_motion_item_move"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const-string v2, "air_motion_call_accept"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_pin"

    const-string v2, "air_motion_clip"

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const-string v2, "motion_pick_up_to_call_out"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const-string v2, "motion_pick_up"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const-string v2, "motion_zooming"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const-string v2, "motion_pan_to_browse_image"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const-string v2, "motion_overturn"

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const-string v2, "surface_palm_swipe"

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const-string v2, "surface_palm_touch"

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "weather"

    const-string v2, "weather_cover"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "walking_mate"

    const-string v2, "walk_mate"

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "send_dual_captured_image_key"

    const-string v2, "send_dual_captured_image"

    const-string v3, "exception"

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method private static isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 781
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    .locals 1
    .parameter "key"
    .parameter "DBName"
    .parameter "DBType"
    .parameter "dependencyKey"

    .prologue
    .line 465
    new-instance v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;-><init>(Lcom/android/settings/search/SearchDirectSettingUpdate;)V

    .line 467
    .local v0, directDBinfoItem:Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    iput-object p1, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 468
    iput-object p2, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 469
    iput p3, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    .line 470
    iput-object p4, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 472
    return-object v0
.end method


# virtual methods
.method public getCurrentState(Ljava/lang/String;)Z
    .locals 8
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, retValue:I
    const/4 v1, -0x1

    .line 478
    .local v1, DBType:I
    const/4 v0, 0x0

    .line 479
    .local v0, DBName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 481
    .local v3, retResultValue:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 482
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    iget-object v5, v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    iget-object v0, v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 484
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    iget v1, v5, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    .line 489
    :cond_0
    if-ne v1, v6, :cond_2

    .line 490
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 504
    :goto_1
    const-string v5, "24 hour"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 505
    const/16 v5, 0x18

    if-ne v4, v5, :cond_6

    move v3, v6

    .line 510
    :goto_2
    return v3

    .line 481
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 492
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 493
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    .line 494
    const-string v5, "auto_restore"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 497
    :cond_4
    sget-object v5, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 501
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getCurrentStateNoneType(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_6
    move v3, v7

    .line 505
    goto :goto_2

    .line 507
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
    .line 697
    const/4 v0, 0x1

    .line 698
    .local v0, bState:Z
    const/4 v1, 0x0

    .line 700
    .local v1, dependencyKey:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 701
    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    iget-object v3, v3, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    sget-object v3, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    iget-object v1, v3, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 707
    :cond_0
    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getDependecyExceptionState(Ljava/lang/String;)Z

    move-result v0

    .line 713
    :cond_1
    :goto_1
    return v0

    .line 700
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_3
    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {p0, v1}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getCurrentState(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 788
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 789
    iget v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 790
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_0

    .line 793
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mDialogType:I

    .line 802
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 796
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
