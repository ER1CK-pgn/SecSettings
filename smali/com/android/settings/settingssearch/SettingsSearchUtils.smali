.class public Lcom/android/settings/settingssearch/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;,
        Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;
    }
.end annotation


# static fields
.field static mContext:Landroid/content/Context;

.field private static mSearchDBItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

.field public mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchDBItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    .line 188
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 189
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 190
    return-void
.end method

.method private adjustAboutSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3610
    .line 3611
    const-string v0, ""

    .line 3613
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3615
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 3619
    :goto_0
    const-string v0, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 3621
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 3623
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3625
    if-eqz v0, :cond_37

    .line 3626
    const-string v5, "help"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 3852
    :goto_2
    if-eqz v0, :cond_35

    .line 3853
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_3
    move v2, v0

    .line 3857
    goto :goto_1

    .line 3617
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 3628
    :cond_1
    const-string v5, "software_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3629
    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3633
    goto :goto_2

    .line 3635
    :cond_2
    const-string v5, "hardware_version_spr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3636
    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3640
    goto :goto_2

    .line 3642
    :cond_3
    const-string v5, "system_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3643
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 3644
    goto :goto_2

    .line 3645
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3646
    goto :goto_2

    .line 3653
    :cond_5
    const-string v5, "software_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3654
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3655
    goto/16 :goto_2

    .line 3657
    :cond_6
    const-string v5, "software_update_settings_no_subtree"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3658
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3659
    goto/16 :goto_2

    .line 3661
    :cond_7
    const-string v5, "system_update_settings_na_gsm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3662
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3663
    goto/16 :goto_2

    .line 3665
    :cond_8
    const-string v5, "system_update_settings_vzw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3666
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3667
    goto/16 :goto_2

    .line 3669
    :cond_9
    const-string v5, "system_update_settings_spr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3670
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3671
    goto/16 :goto_2

    .line 3673
    :cond_a
    const-string v5, "no_software_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3674
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3675
    goto/16 :goto_2

    .line 3677
    :cond_b
    const-string v5, "additional_system_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3678
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0005

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_37

    move v0, v4

    .line 3680
    goto/16 :goto_2

    .line 3682
    :cond_c
    const-string v5, "diagnostics_and_usage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3683
    const-string v0, "com.samsung.ccr"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3684
    goto/16 :goto_2

    .line 3686
    :cond_d
    const-string v5, "preload_update"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 3687
    goto/16 :goto_2

    .line 3688
    :cond_e
    const-string v5, "plmn_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v4

    .line 3689
    goto/16 :goto_2

    .line 3690
    :cond_f
    const-string v5, "icon_glossary"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3691
    const-string v0, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3692
    goto/16 :goto_2

    .line 3694
    :cond_10
    const-string v5, "status_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    goto/16 :goto_2

    .line 3700
    :cond_11
    const-string v5, "ctc_epush"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3701
    const-string v0, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3702
    goto/16 :goto_2

    .line 3704
    :cond_12
    const-string v5, "sprint_4g_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v0, v4

    .line 3706
    goto/16 :goto_2

    .line 3708
    :cond_13
    const-string v5, "container"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v3

    goto/16 :goto_2

    .line 3717
    :cond_14
    const-string v5, "copyright"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v4

    .line 3718
    goto/16 :goto_2

    .line 3719
    :cond_15
    const-string v5, "license"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v0, v4

    .line 3720
    goto/16 :goto_2

    .line 3721
    :cond_16
    const-string v5, "terms"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v0, v4

    .line 3722
    goto/16 :goto_2

    .line 3723
    :cond_17
    const-string v5, "samsung_legal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v0, v4

    .line 3724
    goto/16 :goto_2

    .line 3735
    :cond_18
    const-string v5, "privacy_alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3736
    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "XAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3739
    goto/16 :goto_2

    .line 3745
    :cond_19
    const-string v5, "divx_license_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3746
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/lib/drm/libdivxplugin.so"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3748
    goto/16 :goto_2

    .line 3754
    :cond_1a
    const-string v5, "safetylegal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3755
    const-string v0, "ro.url.safetylegal"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3756
    goto/16 :goto_2

    .line 3758
    :cond_1b
    const-string v5, "telespree_activation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3759
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3760
    const-string v5, "iconvmu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3761
    goto/16 :goto_2

    .line 3764
    :cond_1c
    const-string v5, "key_label_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3765
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_1d
    move v0, v4

    .line 3766
    goto/16 :goto_2

    .line 3768
    :cond_1e
    const-string v5, "label_name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3769
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "mproject"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3770
    goto/16 :goto_2

    .line 3772
    :cond_1f
    const-string v5, "device_name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v0, v3

    goto/16 :goto_2

    .line 3777
    :cond_20
    const-string v5, "regulatory_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3778
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_37

    move v0, v4

    .line 3779
    goto/16 :goto_2

    .line 3781
    :cond_21
    const-string v5, "device_model"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v3

    goto/16 :goto_2

    .line 3783
    :cond_22
    const-string v5, "firmware_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move v0, v3

    goto/16 :goto_2

    .line 3785
    :cond_23
    const-string v5, "fcc_equipment_id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3786
    const-string v0, "ro.ril.fccid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3787
    goto/16 :goto_2

    .line 3789
    :cond_24
    const-string v5, "baseband_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3790
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3791
    goto/16 :goto_2

    .line 3793
    :cond_25
    const-string v5, "installed_variant_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3794
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3796
    goto/16 :goto_2

    .line 3798
    :cond_26
    const-string v5, "kernel_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v0, v3

    goto/16 :goto_2

    .line 3800
    :cond_27
    const-string v5, "build_number"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v0, v3

    goto/16 :goto_2

    .line 3802
    :cond_28
    const-string v5, "selinux_status"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3803
    const-string v0, "ro.build.selinux"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v4

    .line 3804
    goto/16 :goto_2

    .line 3805
    :cond_29
    const-string v0, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3806
    goto/16 :goto_2

    .line 3808
    :cond_2a
    const-string v5, "csb_value"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3809
    const-string v0, "ro.csb_val"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3810
    const-string v5, "unknown"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "ABSENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_2b
    move v0, v4

    .line 3811
    goto/16 :goto_2

    .line 3813
    :cond_2c
    const-string v5, "hardware_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3814
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v4

    .line 3815
    goto/16 :goto_2

    .line 3816
    :cond_2d
    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_2e
    move v0, v4

    .line 3818
    goto/16 :goto_2

    .line 3820
    :cond_2f
    const-string v5, "country_certification_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3821
    const-string v0, "XSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "XSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "XST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "XSZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "XSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "XSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3825
    :cond_30
    :try_start_1
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_enable"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_32

    .line 3827
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_traid"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3829
    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_cert_info_ta"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3831
    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "country_cert_info_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 3833
    if-eqz v0, :cond_31

    if-eqz v5, :cond_31

    if-eqz v6, :cond_31

    move v0, v3

    goto/16 :goto_2

    :cond_31
    move v0, v4

    .line 3836
    goto/16 :goto_2

    :cond_32
    move v0, v4

    .line 3839
    goto/16 :goto_2

    .line 3841
    :catch_1
    move-exception v0

    move v0, v3

    .line 3842
    goto/16 :goto_2

    :cond_33
    move v0, v4

    .line 3844
    goto/16 :goto_2

    .line 3846
    :cond_34
    const-string v5, "security_sw_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3847
    const-string v0, ""

    const-string v5, "security.mdpp"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3848
    goto/16 :goto_2

    .line 3855
    :cond_35
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_3

    .line 3862
    :cond_36
    return-object p1

    :cond_37
    move v0, v3

    goto/16 :goto_2
.end method

.method private adjustAccessibilitySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2661
    new-instance v0, Landroid/speech/tts/TtsEngines;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 2662
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 2664
    :goto_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c0004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v4, v2

    :goto_1
    move v5, v3

    .line 2666
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_21

    .line 2668
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2670
    if-eqz v0, :cond_8

    .line 2671
    const-string v6, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    .line 2804
    :goto_3
    if-eqz v0, :cond_20

    .line 2805
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v5

    :goto_4
    move v5, v0

    .line 2809
    goto :goto_2

    :cond_0
    move v1, v3

    .line 2662
    goto :goto_0

    :cond_1
    move v4, v3

    .line 2664
    goto :goto_1

    .line 2673
    :cond_2
    const-string v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2674
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2678
    :cond_3
    const-string v6, "screen_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2680
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2684
    :cond_4
    const-string v6, "lock_after_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2685
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 2686
    goto :goto_3

    .line 2687
    :cond_5
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2691
    :cond_6
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2694
    :try_start_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "market://search?q=pname:com.google.android.marvin.talkback"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2699
    :goto_5
    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 2700
    goto :goto_3

    .line 2696
    :catch_0
    move-exception v0

    move v0, v3

    .line 2697
    goto :goto_5

    .line 2701
    :cond_7
    if-eqz v4, :cond_8

    :cond_8
    move v0, v3

    goto :goto_3

    .line 2705
    :cond_9
    const-string v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2706
    if-eqz v4, :cond_8

    move v0, v2

    .line 2707
    goto :goto_3

    .line 2709
    :cond_a
    const-string v6, "call_answering_ending"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2710
    if-nez v4, :cond_b

    move v0, v2

    .line 2711
    goto :goto_3

    .line 2712
    :cond_b
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 2713
    goto/16 :goto_3

    .line 2715
    :cond_c
    const-string v6, "power_key_hold"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2716
    if-nez v4, :cond_8

    move v0, v2

    .line 2717
    goto/16 :goto_3

    .line 2721
    :cond_d
    const-string v6, "share_acc_setting_menu"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v0, v3

    goto/16 :goto_3

    .line 2725
    :cond_e
    const-string v6, "font_size"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v0, v3

    goto/16 :goto_3

    .line 2727
    :cond_f
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2728
    if-eqz v4, :cond_8

    move v0, v3

    goto/16 :goto_3

    .line 2732
    :cond_10
    const-string v6, "high_contrast"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2733
    if-nez v4, :cond_8

    move v0, v2

    .line 2734
    goto/16 :goto_3

    .line 2743
    :cond_11
    const-string v6, "color_blind"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v3

    goto/16 :goto_3

    .line 2747
    :cond_12
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v0, v3

    goto/16 :goto_3

    .line 2749
    :cond_13
    const-string v6, "tts_settings_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2750
    if-eqz v1, :cond_14

    move v0, v3

    goto/16 :goto_3

    :cond_14
    move v0, v2

    .line 2754
    goto/16 :goto_3

    .line 2756
    :cond_15
    const-string v6, "tts_default_rate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2757
    if-nez v1, :cond_8

    move v0, v2

    .line 2758
    goto/16 :goto_3

    .line 2760
    :cond_16
    const-string v6, "tts_play_example"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2761
    if-nez v1, :cond_8

    move v0, v2

    .line 2762
    goto/16 :goto_3

    .line 2764
    :cond_17
    const-string v6, "toggle_script_injection_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v0, v3

    goto/16 :goto_3

    .line 2766
    :cond_18
    const-string v6, "audio_balance"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2767
    if-nez v4, :cond_8

    move v0, v2

    .line 2768
    goto/16 :goto_3

    .line 2772
    :cond_19
    const-string v6, "mono_audio_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2773
    if-nez v4, :cond_8

    move v0, v2

    .line 2774
    goto/16 :goto_3

    .line 2776
    :cond_1a
    const-string v6, "all_sound_off_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2777
    if-nez v4, :cond_8

    move v0, v2

    .line 2778
    goto/16 :goto_3

    .line 2780
    :cond_1b
    const-string v6, "flash_notification_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2781
    if-nez v4, :cond_8

    move v0, v2

    .line 2782
    goto/16 :goto_3

    .line 2786
    :cond_1c
    const-string v6, "assistant_menu_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move v0, v3

    goto/16 :goto_3

    .line 2790
    :cond_1d
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move v0, v3

    goto/16 :goto_3

    .line 2792
    :cond_1e
    const-string v6, "access_control_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2793
    if-eqz v4, :cond_8

    move v0, v3

    goto/16 :goto_3

    .line 2798
    :cond_1f
    const-string v6, "direct_access"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2800
    goto/16 :goto_3

    .line 2807
    :cond_20
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_4

    .line 2810
    :cond_21
    return-object p1
.end method

.method private adjustAccountSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3205
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3207
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3208
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3209
    const-string v3, "vzw_bua_plus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3211
    const/4 v2, 0x1

    .line 3216
    :cond_0
    if-eqz v2, :cond_1

    .line 3217
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3223
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_2
    return-object p1
.end method

.method private adjustDateTimeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3532
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 3534
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3536
    if-eqz v0, :cond_9

    .line 3537
    const-string v4, "auto_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3538
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 3561
    :goto_1
    if-eqz v0, :cond_7

    .line 3562
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3566
    goto :goto_0

    .line 3541
    :cond_0
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 3543
    :cond_1
    const-string v4, "time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 3545
    :cond_2
    const-string v4, "auto_zone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3546
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 3547
    goto :goto_1

    .line 3549
    :cond_3
    const-string v4, "timezone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 3551
    :cond_4
    const-string v4, "24 hour"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    goto :goto_1

    .line 3553
    :cond_5
    const-string v4, "date_format"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 3555
    :cond_6
    const-string v4, "dualclock_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3556
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    .line 3557
    goto :goto_1

    .line 3564
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3567
    :cond_8
    return-object p1

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private adjustDeveloperSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3571
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 3572
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3573
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3574
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3575
    const-string v3, "bugreport"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3600
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 3601
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3577
    :cond_1
    const-string v3, "keep_screen_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3581
    const-string v3, "clear_adb_keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3582
    const-string v3, "ro.adb.secure"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3583
    const/4 v2, 0x1

    goto :goto_1

    .line 3585
    :cond_2
    const-string v3, "enable_terminal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3586
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3587
    const/4 v2, 0x1

    goto :goto_1

    .line 3589
    :cond_3
    const-string v3, "verify_apps_over_usb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3590
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "verifier_setting_visible"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 3592
    const/4 v2, 0x1

    goto :goto_1

    .line 3594
    :cond_4
    const-string v3, "show_touches"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3603
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3606
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_6
    return-object p1
.end method

.method private adjustDeviceInfoStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3914
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    return-object p1
.end method

.method private adjustDisplay2013Settings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1797
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    move v1, v2

    .line 1798
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1800
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1802
    if-eqz v0, :cond_29

    .line 1803
    const-string v4, "smartscreen_stay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1993
    :cond_0
    :goto_1
    if-eqz v0, :cond_27

    .line 1994
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1998
    goto :goto_0

    .line 1805
    :cond_1
    const-string v4, "smartscreen_pause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 1806
    goto :goto_1

    .line 1807
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 1808
    goto :goto_1

    .line 1809
    :cond_3
    const-string v4, "header_display_multi_window"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1810
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1811
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 1815
    :cond_4
    if-nez v0, :cond_2b

    move v0, v3

    .line 1819
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1820
    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 1824
    goto :goto_1

    .line 1827
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 1828
    goto/16 :goto_1

    .line 1830
    :cond_6
    const-string v4, "accelerometer_with_smart_rotation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 1831
    goto/16 :goto_1

    .line 1832
    :cond_7
    const-string v4, "wallpaper"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1836
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1837
    goto/16 :goto_1

    .line 1839
    :cond_8
    const-string v4, "notification_panel_edit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1843
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1844
    goto/16 :goto_1

    .line 1846
    :cond_9
    const-string v4, "smart_screen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1847
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "settings_listui"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 1851
    :goto_4
    if-eqz v5, :cond_a

    move v0, v3

    .line 1855
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 1856
    goto/16 :goto_1

    :cond_b
    move v0, v3

    .line 1849
    goto :goto_4

    .line 1858
    :cond_c
    const-string v4, "MONOTYPE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1859
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1860
    goto/16 :goto_1

    .line 1862
    :cond_d
    const-string v4, "font_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1863
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1864
    goto/16 :goto_1

    .line 1866
    :cond_e
    const-string v4, "key_backlight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1867
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1870
    :goto_5
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.sec.feature.folder_type"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.sec.feature.dual_lcd"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v3

    .line 1872
    :goto_6
    if-nez v4, :cond_0

    move v0, v3

    .line 1873
    goto/16 :goto_1

    :cond_f
    move v4, v2

    .line 1870
    goto :goto_6

    .line 1876
    :cond_10
    const-string v4, "led_indicator_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1877
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v5, :cond_29

    :cond_11
    move v0, v3

    .line 1879
    goto/16 :goto_1

    .line 1881
    :cond_12
    const-string v4, "key_multi_window"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1882
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1884
    if-nez v0, :cond_29

    move v0, v3

    .line 1885
    goto/16 :goto_1

    .line 1887
    :cond_13
    const-string v4, "contextualpage_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v3

    .line 1889
    goto/16 :goto_1

    .line 1891
    :cond_14
    const-string v4, "screen_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v2

    goto/16 :goto_1

    .line 1897
    :cond_15
    const-string v4, "brightness"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v2

    goto/16 :goto_1

    .line 1901
    :cond_16
    const-string v4, "accelerometer_second"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v0, v3

    .line 1902
    goto/16 :goto_1

    .line 1903
    :cond_17
    const-string v4, "accelerometer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1904
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v3

    .line 1905
    goto/16 :goto_1

    .line 1907
    :cond_18
    const-string v4, "screen_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v0, v2

    goto/16 :goto_1

    .line 1912
    :cond_19
    const-string v4, "screensaver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1913
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111004c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1915
    goto/16 :goto_1

    .line 1917
    :cond_1a
    const-string v4, "intelligent_rotation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v0, v3

    .line 1920
    goto/16 :goto_1

    .line 1922
    :cond_1b
    const-string v4, "intelligent_sleep"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v0, v3

    .line 1925
    goto/16 :goto_1

    .line 1927
    :cond_1c
    const-string v4, "clear_font"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v0, v3

    .line 1929
    goto/16 :goto_1

    .line 1931
    :cond_1d
    const-string v4, "quick_launch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1940
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1e
    move v0, v3

    .line 1943
    goto/16 :goto_1

    :cond_1f
    const-string v4, "sub_lcd_auto_lock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move v0, v3

    .line 1944
    goto/16 :goto_1

    .line 1945
    :cond_20
    const-string v4, "key_night_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move v0, v3

    .line 1946
    goto/16 :goto_1

    .line 1947
    :cond_21
    const-string v4, "display_battery_level"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v0, v2

    goto/16 :goto_1

    .line 1951
    :cond_22
    const-string v4, "edit_screen_capture"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1955
    :try_start_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.spen.flashannotate"

    const/16 v6, 0x80

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    move v0, v2

    .line 1964
    goto/16 :goto_1

    .line 1967
    :cond_23
    const-string v4, "power_saving_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1979
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto/16 :goto_1

    .line 1983
    :cond_24
    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v0, v2

    goto/16 :goto_1

    .line 1987
    :cond_25
    const-string v4, "notification_pulse"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v0, v3

    .line 1988
    goto/16 :goto_1

    .line 1989
    :cond_26
    const-string v4, "wifi_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v3

    .line 1990
    goto/16 :goto_1

    .line 1996
    :cond_27
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 1999
    :cond_28
    return-object p1

    .line 1957
    :catch_0
    move-exception v0

    goto :goto_7

    :cond_29
    move v0, v2

    goto/16 :goto_1

    :cond_2a
    move v0, v2

    goto/16 :goto_5

    :cond_2b
    move v0, v2

    goto/16 :goto_3
.end method

.method private adjustDisplaySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2006
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 2007
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 2009
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2011
    if-eqz v0, :cond_1f

    .line 2012
    const-string v5, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 2152
    :goto_1
    if-eqz v0, :cond_1d

    .line 2153
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2157
    goto :goto_0

    .line 2016
    :cond_0
    const-string v5, "led_indicator_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2017
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1f

    :cond_1
    move v0, v3

    .line 2019
    goto :goto_1

    .line 2021
    :cond_2
    const-string v5, "notification_panel_edit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_1

    .line 2025
    :cond_3
    const-string v5, "key_multi_window"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2026
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 2028
    if-nez v0, :cond_1f

    move v0, v3

    .line 2029
    goto :goto_1

    .line 2031
    :cond_4
    const-string v5, "contextualpage_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 2033
    goto :goto_1

    .line 2035
    :cond_5
    const-string v5, "screen_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_1

    .line 2041
    :cond_6
    const-string v5, "brightness"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 2045
    :cond_7
    const-string v5, "accelerometer_second"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    .line 2046
    goto :goto_1

    .line 2047
    :cond_8
    const-string v5, "accelerometer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2048
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v3

    .line 2049
    goto :goto_1

    .line 2051
    :cond_9
    const-string v5, "screen_timeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 2056
    :cond_a
    const-string v5, "screensaver"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2057
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111004c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v3

    .line 2059
    goto/16 :goto_1

    .line 2061
    :cond_b
    const-string v5, "smart_screen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2062
    if-eqz v4, :cond_1f

    move v0, v3

    .line 2064
    goto/16 :goto_1

    .line 2066
    :cond_c
    const-string v5, "intelligent_rotation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v0, v3

    .line 2069
    goto/16 :goto_1

    .line 2071
    :cond_d
    const-string v5, "intelligent_sleep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v3

    .line 2074
    goto/16 :goto_1

    .line 2076
    :cond_e
    const-string v5, "MONOTYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v2

    goto/16 :goto_1

    .line 2078
    :cond_f
    const-string v5, "font_size"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v0, v2

    goto/16 :goto_1

    .line 2080
    :cond_10
    const-string v5, "clear_font"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    .line 2082
    goto/16 :goto_1

    .line 2084
    :cond_11
    const-string v5, "quick_launch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2093
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_12
    move v0, v3

    .line 2096
    goto/16 :goto_1

    :cond_13
    const-string v5, "sub_lcd_auto_lock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v3

    .line 2097
    goto/16 :goto_1

    .line 2098
    :cond_14
    const-string v5, "key_night_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v3

    .line 2099
    goto/16 :goto_1

    .line 2100
    :cond_15
    const-string v5, "key_backlight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2101
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110048

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v3, :cond_16

    move v0, v2

    goto/16 :goto_1

    :cond_16
    move v0, v3

    .line 2104
    goto/16 :goto_1

    .line 2106
    :cond_17
    const-string v5, "display_battery_level"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v0, v2

    goto/16 :goto_1

    .line 2110
    :cond_18
    const-string v5, "edit_screen_capture"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2114
    :try_start_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.spen.flashannotate"

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v2

    .line 2123
    goto/16 :goto_1

    .line 2126
    :cond_19
    const-string v5, "power_saving_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2138
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    goto/16 :goto_1

    .line 2142
    :cond_1a
    const-string v5, "auto_adjust_touch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v0, v2

    goto/16 :goto_1

    .line 2146
    :cond_1b
    const-string v5, "notification_pulse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v0, v3

    .line 2147
    goto/16 :goto_1

    .line 2148
    :cond_1c
    const-string v5, "wifi_display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v3

    .line 2149
    goto/16 :goto_1

    .line 2155
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 2158
    :cond_1e
    return-object p1

    .line 2116
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1f
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustDockSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2580
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 2581
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 2583
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2585
    if-eqz v0, :cond_14

    .line 2586
    const-string v5, "dock_audio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 2651
    :goto_1
    if-eqz v0, :cond_12

    .line 2652
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2656
    goto :goto_0

    .line 2588
    :cond_0
    const-string v5, "dock_sounds"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2589
    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 2590
    goto :goto_1

    .line 2592
    :cond_2
    const-string v5, "cradle_enable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2593
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 2595
    goto :goto_1

    .line 2596
    :cond_3
    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 2598
    goto :goto_1

    .line 2600
    :cond_5
    const-string v5, "desk_home_screen_display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2601
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 2602
    goto :goto_1

    .line 2603
    :cond_6
    if-eqz v4, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    .line 2605
    goto :goto_1

    .line 2607
    :cond_8
    const-string v5, "ultrasonic_cane"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 2609
    goto :goto_1

    .line 2611
    :cond_9
    const-string v5, "ultrasonic_range"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v3

    .line 2613
    goto :goto_1

    .line 2615
    :cond_a
    const-string v5, "automatic_unlock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v0, v2

    goto :goto_1

    .line 2619
    :cond_b
    const-string v5, "sview_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2620
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2621
    goto :goto_1

    .line 2623
    :cond_c
    const-string v5, "select_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2624
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2625
    goto/16 :goto_1

    .line 2627
    :cond_d
    const-string v5, "audio_output"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 2634
    :cond_e
    const-string v5, "cover_note"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2635
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2636
    goto/16 :goto_1

    .line 2638
    :cond_f
    const-string v5, "cover_note_weather_unit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2639
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2640
    goto/16 :goto_1

    .line 2642
    :cond_10
    const-string v5, "audio_applications"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2643
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0xa0

    if-le v0, v5, :cond_11

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_11
    move v0, v3

    .line 2647
    goto/16 :goto_1

    .line 2654
    :cond_12
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 2657
    :cond_13
    return-object p1

    :cond_14
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustDormantModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2453
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2455
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2457
    if-eqz v0, :cond_b

    .line 2458
    const-string v4, "dormant_mode_help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 2484
    :goto_1
    if-eqz v0, :cond_9

    .line 2485
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2489
    goto :goto_0

    .line 2460
    :cond_0
    const-string v4, "disable_incoming_calls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2461
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    move v0, v3

    .line 2463
    goto :goto_1

    .line 2465
    :cond_2
    const-string v4, "disable_notifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 2467
    :cond_3
    const-string v4, "disable_alarm_and_timer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 2471
    :cond_4
    const-string v4, "disable_led_indicator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2472
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 2474
    goto :goto_1

    .line 2476
    :cond_5
    const-string v4, "always"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 2478
    :cond_6
    const-string v4, "allowed_contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "allowed_list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2479
    :cond_7
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    move v0, v3

    .line 2480
    goto :goto_1

    .line 2487
    :cond_9
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2490
    :cond_a
    return-object p1

    :cond_b
    move v0, v2

    goto :goto_1
.end method

.method private adjustDrivingModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2534
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2536
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2538
    if-eqz v0, :cond_a

    .line 2539
    const-string v4, "incoming_call_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2540
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    move v0, v3

    .line 2570
    :goto_1
    if-eqz v0, :cond_b

    .line 2571
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2575
    goto :goto_0

    .line 2543
    :cond_1
    const-string v4, "message_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2544
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2545
    :cond_2
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMessageCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 2546
    goto :goto_1

    .line 2549
    :cond_3
    const-string v4, "email_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 2551
    :cond_4
    const-string v4, "voice_mail_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2552
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v3

    .line 2553
    goto :goto_1

    .line 2554
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 2555
    goto :goto_1

    .line 2557
    :cond_7
    const-string v4, "alarm_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2559
    :try_start_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.android.app.clockpackage"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2563
    goto :goto_1

    .line 2561
    :catch_0
    move-exception v0

    move v0, v3

    .line 2563
    goto :goto_1

    .line 2564
    :cond_8
    const-string v4, "schedule_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    goto :goto_1

    .line 2566
    :cond_9
    const-string v4, "unlock_screen_contents"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    move v0, v2

    goto/16 :goto_1

    .line 2573
    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2576
    :cond_c
    return-object p1
.end method

.method private adjustFingerAirViewSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3201
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    return-object p1
.end method

.method private adjustFontSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2183
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2185
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2186
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2187
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 2188
    const-string v3, "clear_font"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2190
    const/4 v2, 0x1

    .line 2194
    :cond_0
    if-eqz v2, :cond_1

    .line 2195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2200
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_2
    return-object p1
.end method

.method private adjustGlanceSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2204
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2206
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2208
    if-eqz v0, :cond_b

    .line 2209
    const-string v4, "glance_settings_summary"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 2231
    :goto_1
    if-eqz v0, :cond_9

    .line 2232
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2236
    goto :goto_0

    .line 2211
    :cond_0
    const-string v4, "glance_card_order"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 2212
    goto :goto_1

    .line 2213
    :cond_1
    const-string v4, "app_name_contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 2214
    goto :goto_1

    .line 2215
    :cond_2
    const-string v4, "app_name_email"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 2216
    goto :goto_1

    .line 2217
    :cond_3
    const-string v4, "app_name_gallery"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 2218
    goto :goto_1

    .line 2219
    :cond_4
    const-string v4, "app_name_message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 2220
    goto :goto_1

    .line 2221
    :cond_5
    const-string v4, "app_name_phone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 2222
    goto :goto_1

    .line 2223
    :cond_6
    const-string v4, "app_name_scrapbook"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 2224
    goto :goto_1

    .line 2225
    :cond_7
    const-string v4, "app_name_s_planner"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v3

    .line 2226
    goto :goto_1

    .line 2227
    :cond_8
    const-string v4, "app_name_video_editor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 2228
    goto :goto_1

    .line 2234
    :cond_9
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2237
    :cond_a
    return-object p1

    :cond_b
    move v0, v2

    goto :goto_1
.end method

.method private adjustLanguageSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2814
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2817
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2819
    new-instance v0, Landroid/speech/tts/TtsEngines;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 2820
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    move v4, v3

    .line 2822
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_15

    .line 2824
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2826
    if-eqz v0, :cond_16

    .line 2827
    const-string v5, "phone_language"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2828
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_16

    move v0, v2

    .line 2897
    :goto_2
    if-eqz v0, :cond_14

    .line 2898
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v4

    :goto_3
    move v4, v0

    .line 2902
    goto :goto_1

    :cond_0
    move v1, v3

    .line 2820
    goto :goto_0

    .line 2831
    :cond_1
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2832
    const-string v0, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2833
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 2834
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    const v5, 0x7f09080c

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(I)V

    move v0, v3

    .line 2835
    goto :goto_2

    :cond_2
    move v0, v2

    .line 2836
    goto :goto_2

    .line 2838
    :cond_3
    const-string v5, "handwriting_language"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2839
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 2840
    const/4 v5, 0x2

    if-ge v0, v5, :cond_16

    move v0, v2

    .line 2841
    goto :goto_2

    .line 2843
    :cond_4
    const-string v5, "current_input_method"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    goto :goto_2

    .line 2845
    :cond_5
    const-string v5, "auto_replace"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "auto_caps"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "auto_punctuate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v0, v2

    .line 2853
    goto :goto_2

    :cond_7
    const-string v5, "recognizer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2854
    if-eqz v6, :cond_8

    if-eq v6, v2, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    .line 2856
    goto :goto_2

    .line 2858
    :cond_9
    const-string v5, "recognizer_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2859
    if-eqz v6, :cond_a

    move v0, v3

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 2861
    goto/16 :goto_2

    .line 2863
    :cond_b
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v0, v3

    goto/16 :goto_2

    .line 2864
    :cond_c
    const-string v5, "tts_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2865
    if-eqz v1, :cond_d

    move v0, v3

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 2869
    goto/16 :goto_2

    .line 2871
    :cond_e
    const-string v5, "tts_default_rate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2872
    if-nez v1, :cond_16

    move v0, v2

    .line 2873
    goto/16 :goto_2

    .line 2875
    :cond_f
    const-string v5, "tts_play_example"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2876
    if-nez v1, :cond_16

    move v0, v2

    .line 2877
    goto/16 :goto_2

    .line 2879
    :cond_10
    const-string v5, "pointer_speed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    goto/16 :goto_2

    .line 2881
    :cond_11
    const-string v5, "vibrate_input_devices"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2883
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v7

    move v0, v3

    move v5, v3

    .line 2884
    :goto_4
    array-length v8, v7

    if-ge v0, v8, :cond_13

    .line 2885
    aget v8, v7, v0

    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    .line 2886
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v8}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_12

    move v5, v2

    .line 2884
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2892
    :cond_13
    if-nez v5, :cond_16

    move v0, v2

    .line 2893
    goto/16 :goto_2

    .line 2900
    :cond_14
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_3

    .line 2903
    :cond_15
    return-object p1

    :cond_16
    move v0, v3

    goto/16 :goto_2
.end method

.method private adjustLedIndicatorSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2241
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2243
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2244
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2245
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 2246
    const-string v3, "led_indicator_incoming_notification_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2247
    const/4 v2, 0x1

    .line 2250
    :cond_0
    if-eqz v2, :cond_1

    .line 2251
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2253
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2256
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_2
    return-object p1
.end method

.method private adjustLocationSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3318
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 3320
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3322
    if-eqz v0, :cond_a

    .line 3323
    const-string v4, "location_toggle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 3373
    :goto_1
    if-eqz v0, :cond_8

    .line 3374
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3378
    goto :goto_0

    .line 3325
    :cond_0
    const-string v4, "location_e911"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 3327
    goto :goto_1

    .line 3329
    :cond_1
    const-string v4, "location_vzw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 3331
    goto :goto_1

    .line 3333
    :cond_2
    const-string v4, "location_vzw_gps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 3335
    goto :goto_1

    .line 3337
    :cond_3
    const-string v4, "location_vzw_network"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 3339
    goto :goto_1

    .line 3341
    :cond_4
    const-string v4, "location_gps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3344
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 3346
    goto :goto_1

    .line 3348
    :cond_5
    const-string v4, "location_network"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3353
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_1

    .line 3357
    :cond_6
    const-string v4, "location_history"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 3359
    goto :goto_1

    .line 3361
    :cond_7
    const-string v4, "key_my_place"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 3368
    goto :goto_1

    .line 3376
    :cond_8
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3379
    :cond_9
    return-object p1

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method private adjustLockScreenMenuSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1560
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1561
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1564
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1565
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 1567
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1569
    if-eqz v0, :cond_2a

    .line 1570
    const-string v4, "visiblepattern"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1571
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v4, 0x1

    if-eq v0, v4, :cond_2a

    move v0, v3

    .line 1787
    :goto_1
    if-eqz v0, :cond_28

    .line 1788
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1792
    goto :goto_0

    .line 1574
    :cond_0
    const-string v4, "owner_info_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1575
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1576
    const-string v4, "lock_screen_widget_options"

    iget-object v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1583
    :cond_1
    if-ne v6, v3, :cond_2a

    .line 1584
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1585
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1592
    goto :goto_1

    .line 1595
    :cond_3
    const-string v4, "quick_note"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 1599
    :cond_4
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1600
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1602
    goto :goto_1

    .line 1604
    :cond_5
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1605
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1610
    if-eqz v0, :cond_2a

    move v0, v3

    .line 1611
    goto :goto_1

    .line 1613
    :cond_6
    const-string v4, "dualclock_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1614
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_7
    move v4, v3

    .line 1617
    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1618
    const-string v7, "lock_screen_widget_options"

    iget-object v8, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1623
    :cond_8
    if-ne v6, v3, :cond_9

    move v4, v3

    :cond_9
    move v0, v4

    .line 1630
    goto/16 :goto_1

    :cond_a
    const-string v4, "clock_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1634
    if-ne v6, v3, :cond_2a

    move v0, v3

    .line 1635
    goto/16 :goto_1

    .line 1638
    :cond_b
    const-string v4, "lock_screen_date_and_year"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1642
    if-ne v6, v3, :cond_2a

    move v0, v3

    .line 1643
    goto/16 :goto_1

    .line 1646
    :cond_c
    const-string v4, "safetyzone_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v3

    .line 1647
    goto/16 :goto_1

    .line 1648
    :cond_d
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 1649
    :cond_e
    const-string v4, "with_circle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v0, v3

    .line 1650
    goto/16 :goto_1

    .line 1651
    :cond_f
    const-string v4, "lock_screen_options"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v3

    .line 1652
    goto/16 :goto_1

    .line 1653
    :cond_10
    const-string v4, "lock_screen_widget_options"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v2

    goto/16 :goto_1

    .line 1656
    :cond_11
    const-string v4, "lock_screen_short_or_camera_widget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1657
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v3

    .line 1659
    goto/16 :goto_1

    .line 1661
    :cond_12
    const-string v4, "lock_screen_clock_or_myprofile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v2

    goto/16 :goto_1

    .line 1665
    :cond_13
    const-string v4, "lock_screen_shortcut"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v3

    .line 1667
    goto/16 :goto_1

    .line 1672
    :cond_14
    const-string v4, "information_ticker"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1673
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1677
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_15
    move v0, v3

    .line 1687
    goto/16 :goto_1

    :cond_16
    const-string v4, "lock_screen_profile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1690
    if-nez v6, :cond_2a

    move v0, v3

    .line 1691
    goto/16 :goto_1

    .line 1693
    :cond_17
    const-string v4, "clock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v0, v3

    .line 1695
    goto/16 :goto_1

    .line 1697
    :cond_18
    const-string v4, "weather"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v0, v3

    .line 1702
    goto/16 :goto_1

    :cond_19
    const-string v4, "camera_short_cut"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v3

    .line 1708
    goto/16 :goto_1

    .line 1711
    :cond_1a
    const-string v4, "lock_after_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v0, v2

    goto/16 :goto_1

    .line 1712
    :cond_1b
    const-string v4, "lock_screen_shortcut_menu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1715
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Germany"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Australia"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1c
    move v0, v3

    .line 1719
    goto/16 :goto_1

    .line 1721
    :cond_1d
    const-string v4, "unlock_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v2

    goto/16 :goto_1

    .line 1729
    :cond_1e
    const-string v4, "ripple_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1730
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1731
    const-string v4, "lock_screen_widget_options"

    iget-object v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1f
    move v0, v3

    .line 1746
    goto/16 :goto_1

    :cond_20
    const-string v4, "ink_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1747
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1748
    const-string v4, "lock_screen_widget_options"

    iget-object v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_21
    move v0, v3

    .line 1752
    goto/16 :goto_1

    .line 1760
    :cond_22
    const-string v4, "help_text"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1761
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1762
    const-string v4, "lock_screen_widget_options"

    iget-object v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_23
    move v0, v3

    .line 1766
    goto/16 :goto_1

    .line 1768
    :cond_24
    const-string v4, "say_your_wakeup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "set_wakeup_command"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1769
    :cond_25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1770
    const-string v4, "lock_screen_widget_options"

    iget-object v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    move v0, v3

    .line 1774
    goto/16 :goto_1

    .line 1776
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_SETTING_SET_WAKEUP_COMMAND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1778
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1779
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1781
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_2a

    move v0, v3

    .line 1782
    goto/16 :goto_1

    .line 1790
    :cond_28
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 1793
    :cond_29
    return-object p1

    :cond_2a
    move v0, v2

    goto/16 :goto_1

    :cond_2b
    move v4, v2

    goto/16 :goto_3
.end method

.method private adjustMotions2013SEttings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2937
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 2938
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2941
    if-eqz v0, :cond_e

    .line 2942
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 2943
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2944
    if-eqz v4, :cond_e

    move v0, v3

    .line 2994
    :goto_1
    if-eqz v0, :cond_c

    .line 2995
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2999
    goto :goto_0

    .line 2947
    :cond_0
    const-string v5, "pick_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2948
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    .line 2949
    goto :goto_1

    .line 2951
    :cond_1
    const-string v5, "double_tap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 2953
    goto :goto_1

    .line 2955
    :cond_2
    const-string v5, "arc_motion_ripple_effect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "arc_motion_quick_glance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "arc_motion_music_playback"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v3

    .line 2957
    goto :goto_1

    .line 2959
    :cond_4
    const-string v5, "peek_view_albums_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 2961
    goto :goto_1

    .line 2963
    :cond_5
    const-string v5, "peek_chapter_preview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v3

    .line 2965
    goto :goto_1

    .line 2967
    :cond_6
    const-string v5, "tilt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 2971
    :cond_7
    const-string v5, "tilt_to_scroll_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    .line 2973
    goto :goto_1

    .line 2975
    :cond_8
    const-string v5, "pan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 2977
    goto :goto_1

    .line 2979
    :cond_9
    const-string v5, "pan_to_browse_image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 2983
    :cond_a
    const-string v5, "shake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v0, v3

    .line 2985
    goto/16 :goto_1

    .line 2987
    :cond_b
    const-string v5, "turn_over"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2988
    if-eqz v4, :cond_e

    move v0, v3

    .line 2989
    goto/16 :goto_1

    .line 2997
    :cond_c
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 3000
    :cond_d
    return-object p1

    :cond_e
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustNFCSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1500
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1501
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1503
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1505
    if-eqz v0, :cond_3

    .line 1506
    const-string v4, "toggle_rw_p2p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1507
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CMCC"

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 1527
    :goto_1
    if-eqz v0, :cond_1

    .line 1528
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1532
    goto :goto_0

    .line 1511
    :cond_0
    const-string v4, "nfc_wallet_manager_sub"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 1523
    goto :goto_1

    .line 1530
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1533
    :cond_2
    return-object p1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private adjustNearbySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1537
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1538
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1540
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1542
    if-eqz v0, :cond_2

    .line 1543
    const-string v3, "allshare_device_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1546
    const/4 v0, 0x1

    .line 1550
    :goto_1
    if-eqz v0, :cond_0

    .line 1551
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1555
    goto :goto_0

    .line 1553
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1556
    :cond_1
    return-object p1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private adjustPalmSMotion2013Settings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3004
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3005
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3006
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3008
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3009
    const-string v3, "palm_swipe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3024
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3025
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3013
    :cond_1
    const-string v3, "palm_touch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3017
    const-string v3, "tap_and_twist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3019
    const/4 v2, 0x1

    goto :goto_1

    .line 3027
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3030
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_3
    return-object p1
.end method

.method private adjustPowerSavingModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2494
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 2496
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2498
    if-eqz v0, :cond_7

    .line 2499
    const-string v4, "enable_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2500
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    .line 2524
    :goto_1
    if-eqz v0, :cond_8

    .line 2525
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2529
    goto :goto_0

    .line 2503
    :cond_0
    const-string v4, "power_saving_cpu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 2505
    :cond_1
    const-string v4, "power_saving_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 2507
    :cond_2
    const-string v4, "power_saving_background_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2508
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2509
    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 2513
    goto :goto_1

    .line 2515
    :cond_4
    const-string v4, "power_saving_haptic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2516
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    .line 2518
    goto :goto_1

    .line 2520
    :cond_6
    const-string v4, "power_saving_tips"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    move v0, v2

    goto :goto_1

    .line 2527
    :cond_8
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2530
    :cond_9
    return-object p1
.end method

.method private adjustPrivacySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3273
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 3275
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3277
    if-eqz v0, :cond_8

    .line 3278
    const-string v4, "backup_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 3308
    :goto_1
    if-eqz v0, :cond_6

    .line 3309
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3313
    goto :goto_0

    .line 3280
    :cond_0
    const-string v4, "configure_account"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 3282
    :cond_1
    const-string v4, "auto_restore"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 3284
    :cond_2
    const-string v4, "data_transfer_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 3286
    goto :goto_1

    .line 3289
    :cond_3
    const-string v4, "master_clear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 3291
    :cond_4
    const-string v4, "settings_reset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3292
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 3293
    goto :goto_1

    .line 3295
    :cond_5
    const-string v4, "collect_diagnostics"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3298
    :try_start_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.carrieriq.tmobile.IQToggle"

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 3303
    :goto_3
    if-nez v0, :cond_8

    move v0, v3

    .line 3304
    goto :goto_1

    .line 3300
    :catch_0
    move-exception v0

    move v0, v2

    .line 3301
    goto :goto_3

    .line 3311
    :cond_6
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3314
    :cond_7
    return-object p1

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method private adjustSCloudSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3227
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 3228
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3229
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3230
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3231
    const-string v3, "pref_add_samsung_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3262
    :cond_0
    :goto_1
    if-eqz v2, :cond_e

    .line 3263
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3233
    :cond_1
    const-string v3, "samsung_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3234
    const/4 v2, 0x1

    goto :goto_1

    .line 3235
    :cond_2
    const-string v3, "pref_key_verify_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3236
    const/4 v2, 0x1

    goto :goto_1

    .line 3237
    :cond_3
    const-string v3, "pref_storage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3238
    const/4 v2, 0x1

    goto :goto_1

    .line 3239
    :cond_4
    const-string v3, "pref_dataSync"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3240
    const/4 v2, 0x1

    goto :goto_1

    .line 3241
    :cond_5
    const-string v3, "pref_backUp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3242
    const/4 v2, 0x1

    goto :goto_1

    .line 3243
    :cond_6
    const-string v3, "pref_restore"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3244
    const/4 v2, 0x1

    goto :goto_1

    .line 3245
    :cond_7
    const-string v3, "pref_set_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3246
    const/4 v2, 0x1

    goto :goto_1

    .line 3247
    :cond_8
    const-string v3, "dropbox_sync_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3248
    const/4 v2, 0x1

    goto :goto_1

    .line 3249
    :cond_9
    const-string v3, "pref_usage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3250
    const/4 v2, 0x1

    goto :goto_1

    .line 3251
    :cond_a
    const-string v3, "pref_photos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3252
    const/4 v2, 0x1

    goto :goto_1

    .line 3253
    :cond_b
    const-string v3, "pref_videos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3254
    const/4 v2, 0x1

    goto :goto_1

    .line 3255
    :cond_c
    const-string v3, "pref_musics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3256
    const/4 v2, 0x1

    goto :goto_1

    .line 3257
    :cond_d
    const-string v3, "pref_document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3258
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3265
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3269
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_f
    return-object p1
.end method

.method private adjustSMotionSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3035
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    move v1, v2

    .line 3037
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 3039
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3041
    if-eqz v0, :cond_18

    .line 3042
    const-string v5, "air_motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 3139
    :goto_1
    if-eqz v0, :cond_16

    .line 3140
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3144
    goto :goto_0

    .line 3049
    :cond_0
    const-string v5, "motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_1

    .line 3057
    :cond_1
    const-string v5, "surface"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    goto :goto_1

    .line 3064
    :cond_2
    const-string v5, "g_sensor_cal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_1

    .line 3068
    :cond_3
    const-string v5, "air_motion_indicator"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v2

    goto :goto_1

    .line 3070
    :cond_4
    const-string v5, "quick_glance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v2

    goto :goto_1

    .line 3072
    :cond_5
    const-string v5, "air_scroll"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_1

    .line 3074
    :cond_6
    const-string v5, "air_turn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 3076
    :cond_7
    const-string v5, "air_move"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v2

    goto :goto_1

    .line 3078
    :cond_8
    const-string v5, "air_pin"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 3080
    goto :goto_1

    .line 3082
    :cond_9
    const-string v5, "air_call_accept"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 3084
    :cond_a
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3085
    if-eqz v4, :cond_18

    move v0, v3

    .line 3087
    goto :goto_1

    .line 3089
    :cond_b
    const-string v5, "pick_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3090
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v3

    .line 3092
    goto/16 :goto_1

    .line 3094
    :cond_c
    const-string v5, "double_tap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v0, v3

    .line 3097
    goto/16 :goto_1

    .line 3099
    :cond_d
    const-string v5, "tilt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 3103
    :cond_e
    const-string v5, "tilt_to_scroll_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v3

    .line 3106
    goto/16 :goto_1

    .line 3108
    :cond_f
    const-string v5, "pan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v0, v3

    .line 3111
    goto/16 :goto_1

    .line 3113
    :cond_10
    const-string v5, "pan_to_browse_image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v2

    goto/16 :goto_1

    .line 3117
    :cond_11
    const-string v5, "shake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v0, v3

    .line 3119
    goto/16 :goto_1

    .line 3121
    :cond_12
    const-string v5, "turn_over"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3122
    if-eqz v4, :cond_18

    move v0, v3

    .line 3123
    goto/16 :goto_1

    .line 3125
    :cond_13
    const-string v5, "palm_swipe"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v2

    goto/16 :goto_1

    .line 3129
    :cond_14
    const-string v5, "palm_touch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v2

    goto/16 :goto_1

    .line 3133
    :cond_15
    const-string v5, "tap_and_twist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    .line 3135
    goto/16 :goto_1

    .line 3142
    :cond_16
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 3145
    :cond_17
    return-object p1

    :cond_18
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustSecuritySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3405
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 3406
    :goto_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "verifier_setting_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v4, v2

    :goto_1
    move v5, v3

    .line 3409
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1b

    .line 3411
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3413
    if-eqz v0, :cond_1c

    .line 3414
    const-string v6, "encryption"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3415
    if-eqz v1, :cond_3

    .line 3416
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3418
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_3
    move v0, v3

    .line 3522
    :goto_4
    if-eqz v0, :cond_1a

    .line 3523
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v5

    :goto_5
    move v5, v0

    .line 3527
    goto :goto_2

    :cond_1
    move v1, v3

    .line 3405
    goto :goto_0

    :cond_2
    move v4, v3

    .line 3406
    goto :goto_1

    .line 3422
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_3

    :cond_3
    move v0, v2

    .line 3438
    goto :goto_4

    .line 3440
    :cond_4
    const-string v6, "sdEncpref"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3441
    new-instance v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 3443
    invoke-virtual {v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    .line 3444
    goto :goto_4

    .line 3449
    :cond_5
    const-string v6, "external_default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v3

    goto :goto_4

    .line 3451
    :cond_6
    const-string v6, "external_full"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v3

    goto :goto_4

    .line 3453
    :cond_7
    const-string v6, "external_file_exclude"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v3

    goto :goto_4

    .line 3455
    :cond_8
    const-string v6, "remote_control"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3456
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    move v0, v2

    .line 3460
    goto :goto_4

    .line 3464
    :cond_9
    const-string v6, "SIMAlert"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3465
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    .line 3466
    goto :goto_4

    .line 3470
    :cond_a
    const-string v6, "go_to_samsungdive"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v3

    goto :goto_4

    .line 3474
    :cond_b
    const-string v6, "sim_lock_settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3475
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3478
    const-string v6, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    move v0, v2

    .line 3483
    goto/16 :goto_4

    .line 3484
    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    move v0, v2

    .line 3485
    goto/16 :goto_4

    .line 3490
    :cond_f
    const-string v6, "ip_firewall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v0, v2

    .line 3492
    goto/16 :goto_4

    .line 3494
    :cond_10
    const-string v6, "show_password"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v3

    goto/16 :goto_4

    .line 3496
    :cond_11
    const-string v6, "device_admin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3497
    if-eqz v1, :cond_12

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    move v0, v2

    .line 3498
    goto/16 :goto_4

    .line 3500
    :cond_13
    const-string v6, "toggle_install_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 3501
    if-eqz v1, :cond_14

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_14
    move v0, v2

    .line 3502
    goto/16 :goto_4

    .line 3504
    :cond_15
    const-string v6, "toggle_verify_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3505
    if-eqz v1, :cond_16

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_16
    move v0, v2

    .line 3506
    goto/16 :goto_4

    .line 3508
    :cond_17
    const-string v6, "trusted_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 3509
    if-nez v1, :cond_1c

    move v0, v2

    .line 3510
    goto/16 :goto_4

    .line 3512
    :cond_18
    const-string v6, "credentials_install_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 3513
    if-nez v1, :cond_1c

    move v0, v2

    .line 3514
    goto/16 :goto_4

    .line 3516
    :cond_19
    const-string v6, "reset_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3517
    if-nez v1, :cond_1c

    move v0, v2

    .line 3518
    goto/16 :goto_4

    .line 3525
    :cond_1a
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_5

    .line 3528
    :cond_1b
    return-object p1

    :cond_1c
    move v0, v3

    goto/16 :goto_4

    .line 3418
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private adjustSmartScreenSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3149
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3151
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3152
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3153
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3154
    const-string v3, "smartscreen_stay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3180
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3181
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3158
    :cond_1
    const-string v3, "smartscreen_rotation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3162
    const-string v3, "smartscreen_pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3168
    const-string v3, "smartscreen_scroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3186
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_3
    return-object p1
.end method

.method private adjustSoundSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2260
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    .line 2262
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_0
    move v2, v4

    :goto_0
    move v5, v4

    .line 2267
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_27

    .line 2269
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2271
    if-eqz v1, :cond_25

    .line 2272
    const-string v7, "sound_mode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    .line 2443
    :cond_1
    :goto_2
    if-eqz v1, :cond_26

    .line 2444
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v5

    :goto_3
    move v5, v1

    .line 2448
    goto :goto_1

    .line 2275
    :cond_2
    const-string v7, "folder_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2276
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_3
    move v1, v3

    .line 2277
    goto :goto_2

    .line 2278
    :cond_4
    const-string v7, "haptic_feedback"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2279
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_5
    move v1, v3

    .line 2280
    goto :goto_2

    .line 2293
    :cond_6
    const-string v7, "haptic_feedback_switch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2294
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_7
    move v1, v3

    .line 2297
    goto :goto_2

    .line 2298
    :cond_8
    const-string v7, "emergency_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2299
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 2300
    if-eq v9, v1, :cond_28

    move v1, v3

    .line 2317
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v3

    .line 2318
    goto :goto_2

    .line 2319
    :cond_9
    const-string v7, "pen_deatachment_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2320
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    goto :goto_2

    :cond_a
    move v1, v3

    .line 2322
    goto :goto_2

    .line 2324
    :cond_b
    const-string v7, "dock_audio_media_enabled"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v1, v3

    .line 2325
    goto :goto_2

    .line 2326
    :cond_c
    const-string v7, "ring_volume"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v1, v4

    goto/16 :goto_2

    .line 2328
    :cond_d
    const-string v7, "vibration_feedback_intensity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2329
    if-nez v2, :cond_25

    move v1, v3

    .line 2330
    goto/16 :goto_2

    .line 2336
    :cond_e
    const-string v7, "phone_profile"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2337
    const-string v1, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "CMCC"

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    move v1, v3

    .line 2341
    goto/16 :goto_2

    .line 2343
    :cond_f
    const-string v7, "musicfx"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2344
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2345
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2347
    const/16 v8, 0x200

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2349
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v9, :cond_25

    move v1, v3

    .line 2350
    goto/16 :goto_2

    .line 2352
    :cond_10
    const-string v7, "download_ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2353
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2357
    const-string v7, "Ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    move v1, v3

    .line 2358
    goto/16 :goto_2

    .line 2360
    :cond_11
    const-string v7, "ds_ring_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v1, v3

    .line 2364
    goto/16 :goto_2

    .line 2366
    :cond_12
    const-string v7, "ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2367
    if-nez v6, :cond_25

    move v1, v3

    .line 2368
    goto/16 :goto_2

    .line 2373
    :cond_13
    const-string v7, "ringtone2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2374
    if-nez v6, :cond_14

    move v1, v3

    .line 2375
    goto/16 :goto_2

    :cond_14
    move v1, v3

    .line 2380
    goto/16 :goto_2

    .line 2382
    :cond_15
    const-string v7, "phone_vibration"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2383
    if-nez v2, :cond_16

    move v1, v3

    .line 2384
    goto/16 :goto_2

    .line 2386
    :cond_16
    if-eqz v6, :cond_17

    move v1, v4

    goto/16 :goto_2

    :cond_17
    move v1, v3

    .line 2387
    goto/16 :goto_2

    .line 2389
    :cond_18
    const-string v7, "notification_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    move v1, v4

    goto/16 :goto_2

    .line 2394
    :cond_19
    const-string v7, "vibrate_when_ringing"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2395
    if-eqz v2, :cond_1a

    if-nez v6, :cond_25

    :cond_1a
    move v1, v3

    .line 2396
    goto/16 :goto_2

    .line 2398
    :cond_1b
    const-string v7, "dtmf_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move v1, v4

    goto/16 :goto_2

    .line 2402
    :cond_1c
    const-string v7, "sound_effects"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v1, v4

    goto/16 :goto_2

    .line 2406
    :cond_1d
    const-string v7, "lock_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v1, v4

    goto/16 :goto_2

    .line 2410
    :cond_1e
    const-string v7, "gps_notification_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move v1, v3

    .line 2412
    goto/16 :goto_2

    .line 2414
    :cond_1f
    const-string v7, "autohaptic_settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2415
    if-nez v2, :cond_20

    move v1, v3

    .line 2416
    goto/16 :goto_2

    .line 2418
    :cond_20
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    :cond_21
    move v1, v3

    .line 2421
    goto/16 :goto_2

    .line 2424
    :cond_22
    const-string v7, "dock_audio"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    move v1, v3

    .line 2429
    goto/16 :goto_2

    :cond_23
    const-string v7, "dock_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v1, v3

    .line 2434
    goto/16 :goto_2

    :cond_24
    const-string v7, "my_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_25
    move v1, v4

    goto/16 :goto_2

    .line 2446
    :cond_26
    add-int/lit8 v1, v5, 0x1

    goto/16 :goto_3

    .line 2449
    :cond_27
    return-object p1

    :cond_28
    move v1, v4

    goto/16 :goto_4

    :cond_29
    move v2, v3

    goto/16 :goto_0
.end method

.method private adjustTetheringAndPortableHotspotSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1150
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1154
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1156
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1157
    array-length v0, v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    move v4, v3

    .line 1159
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_e

    .line 1161
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1163
    if-eqz v0, :cond_f

    .line 1164
    const-string v5, "enable_wifi_ap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1165
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1167
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1232
    :goto_2
    if-eqz v0, :cond_d

    .line 1233
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v4

    :goto_3
    move v4, v0

    .line 1237
    goto :goto_1

    :cond_0
    move v1, v3

    .line 1157
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1171
    goto :goto_2

    :cond_2
    move v0, v2

    .line 1177
    goto :goto_2

    .line 1179
    :cond_3
    const-string v5, "enable_switch_wifi_ap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1180
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1182
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 1183
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1191
    goto :goto_2

    .line 1193
    :cond_5
    const-string v5, "enable_switch_wifi_ap_key"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1194
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1196
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1199
    goto :goto_2

    :cond_7
    move v0, v2

    .line 1205
    goto :goto_2

    .line 1207
    :cond_8
    const-string v5, "wifi_ap_tx_power_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    goto :goto_2

    .line 1211
    :cond_9
    const-string v5, "wifi_ap_ssid_and_security"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1212
    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1214
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 1215
    goto :goto_2

    :cond_a
    move v0, v2

    .line 1218
    goto :goto_2

    :cond_b
    move v0, v2

    .line 1223
    goto :goto_2

    .line 1225
    :cond_c
    const-string v5, "tethering_help"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 1227
    goto :goto_2

    .line 1235
    :cond_d
    add-int/lit8 v0, v4, 0x1

    goto :goto_3

    .line 1239
    :cond_e
    return-object p1

    :cond_f
    move v0, v3

    goto :goto_2
.end method

.method private adjustUserSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3383
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3384
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3385
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3386
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3387
    const-string v3, "user_nickname"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3388
    const/4 v2, 0x1

    .line 3393
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3394
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3389
    :cond_1
    const-string v3, "user_owner_info"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3390
    const/4 v2, 0x1

    goto :goto_1

    .line 3396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3399
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #remove_flag:Z
    :cond_3
    return-object p1
.end method

.method private adjustVoiceControlSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v5, 0x1

    .line 2907
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 2908
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v2, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2909
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2911
    .local v3, remove_flag:Z
    if-eqz v2, :cond_1

    .line 2912
    const-string v4, "voice_input_control_incomming_calls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2913
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2914
    :cond_0
    const/4 v3, 0x1

    .line 2925
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 2926
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2916
    :cond_2
    const-string v4, "voice_input_control_chatonv"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2917
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isChatONVPhone()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v5

    .line 2919
    .local v0, chatONVHide1:Z
    :goto_2
    if-eq v0, v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isChatOnVInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2920
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 2917
    .end local v0           #chatONVHide1:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2928
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2931
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #remove_flag:Z
    :cond_6
    return-object p1
.end method

.method private adjustWallpaperSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2162
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2164
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2166
    if-eqz v0, :cond_2

    .line 2167
    const-string v3, "download_wallpaper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2169
    const-string v3, "Wallpaper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2170
    const/4 v0, 0x1

    .line 2173
    :goto_1
    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2178
    goto :goto_0

    .line 2176
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2179
    :cond_1
    return-object p1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private adjustWirelessSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 1250
    :goto_0
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.ipsec.vpnclient"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 1251
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 1255
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_listui"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v5, v3

    .line 1258
    :goto_1
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1267
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 1269
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 1270
    array-length v1, v1

    if-eqz v1, :cond_3

    move v6, v3

    .line 1271
    :goto_2
    array-length v1, v7

    if-eqz v1, :cond_4

    move v7, v3

    .line 1272
    :goto_3
    array-length v1, v8

    if-eqz v1, :cond_5

    move v8, v3

    :goto_4
    move v9, v4

    .line 1274
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_39

    .line 1276
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1278
    if-eqz v1, :cond_3a

    .line 1279
    const-string v12, "parent"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v1, v3

    .line 1490
    :cond_0
    :goto_6
    if-eqz v1, :cond_38

    .line 1491
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v9

    :goto_7
    move v9, v1

    .line 1495
    goto :goto_5

    :cond_1
    move v2, v4

    .line 1249
    goto :goto_0

    :cond_2
    move v5, v4

    .line 1255
    goto :goto_1

    :cond_3
    move v6, v4

    .line 1270
    goto :goto_2

    :cond_4
    move v7, v4

    .line 1271
    goto :goto_3

    :cond_5
    move v8, v4

    .line 1272
    goto :goto_4

    .line 1281
    :cond_6
    const-string v12, "rcs_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1282
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v12, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    move v1, v3

    .line 1284
    goto :goto_6

    .line 1286
    :cond_7
    const-string v12, "toggle_airplane"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1287
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v12, "android.hardware.type.television"

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_8
    move v1, v3

    .line 1291
    :goto_8
    const-string v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_9
    move v1, v3

    .line 1292
    goto :goto_6

    .line 1293
    :cond_a
    const-string v12, "usb_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1294
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v3

    .line 1295
    goto :goto_6

    .line 1297
    :cond_b
    const-string v12, "button_smart_network_key"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1298
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v12, 0x7f0c001c

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1300
    if-nez v1, :cond_3a

    move v1, v3

    .line 1301
    goto/16 :goto_6

    .line 1303
    :cond_c
    const-string v12, "mobile_network_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1304
    if-nez v2, :cond_d

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_d
    move v1, v3

    .line 1305
    goto/16 :goto_6

    .line 1307
    :cond_e
    const-string v12, "enable_switch_wifi_ap"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1308
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1309
    const-string v12, "tether_settings"

    iget-object v1, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1310
    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 1315
    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 1321
    goto/16 :goto_6

    .line 1324
    :cond_11
    const-string v12, "auto_power_on_off_mode"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1325
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v12, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    move v1, v3

    .line 1329
    goto/16 :goto_6

    .line 1331
    :cond_12
    const-string v12, "enable_wifi_ap"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1332
    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v3

    .line 1334
    goto/16 :goto_6

    :cond_13
    move v1, v3

    .line 1337
    goto/16 :goto_6

    .line 1339
    :cond_14
    const-string v12, "wifi_ap_ssid_and_security"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1340
    if-eqz v6, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v4

    goto/16 :goto_6

    :cond_15
    move v1, v3

    .line 1345
    goto/16 :goto_6

    .line 1347
    :cond_16
    const-string v12, "usb_tether_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1348
    if-eqz v7, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_17
    move v1, v3

    .line 1349
    goto/16 :goto_6

    .line 1351
    :cond_18
    const-string v12, "enable_bluetooth_tethering"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1352
    if-nez v8, :cond_3a

    move v1, v3

    .line 1353
    goto/16 :goto_6

    .line 1355
    :cond_19
    const-string v12, "tethering_help"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    move v1, v4

    goto/16 :goto_6

    .line 1357
    :cond_1a
    const-string v12, "vpn_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1358
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_1b
    if-eqz v10, :cond_3a

    move v1, v3

    .line 1360
    goto/16 :goto_6

    .line 1362
    :cond_1c
    const-string v12, "vpn_settings_for_att"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 1363
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    if-nez v10, :cond_3a

    :cond_1e
    move v1, v3

    .line 1365
    goto/16 :goto_6

    .line 1367
    :cond_1f
    const-string v12, "toggle_nsd"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    move v1, v3

    .line 1368
    goto/16 :goto_6

    .line 1369
    :cond_20
    const-string v12, "roaming_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 1370
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_UseChameleon"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1373
    const-string v1, "persist.sys.roaming_menu"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3a

    move v1, v3

    .line 1374
    goto/16 :goto_6

    .line 1376
    :cond_21
    const-string v12, "SPR"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "VMU"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "BST"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "XAS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    move v1, v3

    .line 1378
    goto/16 :goto_6

    .line 1380
    :cond_22
    const-string v12, "proxy_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    move v1, v3

    .line 1381
    goto/16 :goto_6

    .line 1382
    :cond_23
    const-string v12, "cell_broadcast_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1394
    if-nez v2, :cond_24

    :cond_24
    move v1, v3

    .line 1397
    goto/16 :goto_6

    :cond_25
    const-string v12, "wifi_calling_holder_key"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    move v1, v3

    .line 1398
    goto/16 :goto_6

    .line 1399
    :cond_26
    const-string v12, "toggle_nfc"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_27

    const-string v12, "s_beam_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1400
    :cond_27
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v3

    .line 1401
    goto/16 :goto_6

    .line 1402
    :cond_28
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v12, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v3

    .line 1404
    goto/16 :goto_6

    .line 1405
    :cond_29
    if-eqz v11, :cond_3a

    move v1, v3

    .line 1406
    goto/16 :goto_6

    .line 1408
    :cond_2a
    const-string v12, "nfc_wallet_manager"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 1409
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v3

    .line 1410
    goto/16 :goto_6

    .line 1411
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v12, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v3

    .line 1413
    goto/16 :goto_6

    .line 1414
    :cond_2c
    if-eqz v11, :cond_2d

    move v1, v3

    .line 1415
    goto/16 :goto_6

    :cond_2d
    move v1, v3

    .line 1427
    goto/16 :goto_6

    .line 1429
    :cond_2e
    const-string v12, "nearby_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1430
    const-string v1, "ALL"

    const-string v12, "ALL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    move v1, v3

    .line 1434
    :goto_9
    if-eqz v5, :cond_0

    move v1, v3

    .line 1435
    goto/16 :goto_6

    .line 1437
    :cond_2f
    const-string v12, "allshare_cast_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 1442
    if-eqz v5, :cond_3c

    move v1, v3

    .line 1443
    goto/16 :goto_6

    .line 1445
    :cond_30
    const-string v12, "screen_mirroring_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 1450
    if-eqz v5, :cond_3a

    move v1, v3

    .line 1451
    goto/16 :goto_6

    .line 1453
    :cond_31
    const-string v12, "kies_via_wifi"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1455
    :try_start_0
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v12, "com.sec.android.app.kieswifi"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1460
    :goto_a
    if-eqz v11, :cond_0

    move v1, v3

    .line 1461
    goto/16 :goto_6

    .line 1457
    :catch_0
    move-exception v1

    move v1, v3

    .line 1458
    goto :goto_a

    .line 1463
    :cond_32
    const-string v12, "manage_mobile_plan"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    move v1, v3

    .line 1464
    goto/16 :goto_6

    .line 1465
    :cond_33
    const-string v12, "tether_settings"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 1466
    if-nez v2, :cond_35

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "ATT"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    move v1, v4

    .line 1471
    :goto_b
    const-string v12, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    move v1, v3

    .line 1474
    :cond_34
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "settings_listui"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    move v1, v3

    .line 1477
    goto/16 :goto_6

    :cond_35
    move v1, v3

    .line 1468
    goto :goto_b

    .line 1479
    :cond_36
    const-string v12, "nfc_default_transaction"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    move v1, v3

    .line 1484
    goto/16 :goto_6

    .line 1486
    :cond_37
    const-string v12, "manage_mobile_plan"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v3

    .line 1487
    goto/16 :goto_6

    .line 1493
    :cond_38
    add-int/lit8 v1, v9, 0x1

    goto/16 :goto_7

    .line 1496
    :cond_39
    return-object p1

    :cond_3a
    move v1, v4

    goto/16 :goto_6

    :cond_3b
    move v1, v4

    goto :goto_b

    :cond_3c
    move v1, v3

    goto/16 :goto_6

    :cond_3d
    move v1, v4

    goto/16 :goto_9

    :cond_3e
    move v1, v4

    goto/16 :goto_8
.end method

.method public static callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x7f0b0606

    const/4 v4, 0x0

    const-wide/32 v2, 0x7f0b0601

    const/4 v5, 0x1

    .line 4106
    .line 4108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 4112
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4113
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "settings_listui"

    invoke-static {v6, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 4115
    :goto_0
    if-eqz v4, :cond_2

    .line 4116
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.GridSettings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4127
    :goto_1
    const v4, 0x10008000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4129
    invoke-static {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v4

    .line 4131
    if-nez v4, :cond_7

    .line 4132
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 4134
    const-string v8, "Safety assistance"

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4142
    :goto_2
    const-string v2, "extra_from_search"

    invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4143
    const-string v2, "extra_parent_type"

    invoke-virtual {v7, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4144
    const-string v2, "extra_tab_id"

    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4145
    const-string v2, "extra_header_id"

    invoke-virtual {v7, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4146
    const-string v0, "extra_setting_value"

    iget v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4148
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4229
    :cond_0
    :goto_3
    return v5

    :cond_1
    move v4, v5

    .line 4114
    goto :goto_0

    .line 4118
    :cond_2
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4121
    :cond_3
    if-eqz v6, :cond_4

    .line 4122
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4124
    :cond_4
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4136
    :cond_5
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v0, v2

    .line 4137
    goto :goto_2

    .line 4139
    :cond_6
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 4149
    :cond_7
    if-ne v4, v5, :cond_c

    .line 4152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4153
    iget-object v8, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4155
    const-string v8, "Safety assistance"

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4163
    :goto_4
    new-instance v2, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v2, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4164
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    .line 4165
    iget-object v2, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v2

    .line 4167
    const-string v3, "extra_from_search"

    invoke-virtual {v7, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4168
    const-string v3, "extra_parent_type"

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4169
    const-string v3, "extra_tab_id"

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4170
    const-string v2, "extra_header_id"

    invoke-virtual {v7, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4172
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4174
    const-string v3, "extra_parent_preference_key"

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    const-string v3, "extra_setting_value"

    iget v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4176
    const-string v3, "extra_link_key_array"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4177
    const-wide/32 v3, 0x7f0b0630

    cmp-long v3, v0, v3

    if-eqz v3, :cond_8

    const-wide/32 v3, 0x7f0b062c

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    .line 4179
    :cond_8
    const-string v0, "extra_second_fragment_bundle_key"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4184
    :goto_5
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 4157
    :cond_9
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v0, v2

    .line 4158
    goto :goto_4

    .line 4160
    :cond_a
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    .line 4181
    :cond_b
    const-string v0, "extra_fragment_bundle_key"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_5

    .line 4185
    :cond_c
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 4190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4191
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4193
    new-instance v6, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v6, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4194
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    .line 4195
    :goto_6
    invoke-static {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_d

    .line 4196
    iget-object v8, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4197
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    goto :goto_6

    .line 4200
    :cond_d
    const-string v6, "Call settings"

    iget-object v8, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4206
    :goto_7
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 4208
    const-string v6, "extra_from_search"

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4209
    const-string v6, "extra_parent_type"

    invoke-virtual {v7, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4210
    const-string v4, "extra_tab_id"

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4211
    const-string v0, "extra_header_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4214
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4215
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4216
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4219
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    const-string v2, "extra_setting_value"

    iget v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4221
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4222
    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4224
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4225
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_TYPE_PREFERENCE, parent key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4203
    :cond_e
    new-instance v2, Ljava/lang/Long;

    iget-object v3, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_7
.end method

.method private static getHeadTabIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 4265
    const/4 v0, 0x0

    .line 4266
    .local v0, retTabIndex:I
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4267
    const-string v1, "Connections"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4268
    const/4 v0, 0x0

    .line 4278
    :cond_0
    :goto_0
    return v0

    .line 4269
    :cond_1
    const-string v1, "Device"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4270
    const/4 v0, 0x1

    goto :goto_0

    .line 4271
    :cond_2
    const-string v1, "Controls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4272
    const/4 v0, 0x2

    goto :goto_0

    .line 4273
    :cond_3
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4274
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4234
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 4236
    if-nez v1, :cond_1

    .line 4237
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentType()> parent key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    :cond_0
    :goto_0
    return v0

    .line 4240
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4241
    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4254
    :cond_2
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4256
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    .line 4257
    invoke-static {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 4258
    const/4 v0, 0x1

    goto :goto_0

    .line 4245
    :cond_3
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

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4260
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 3961
    const/4 v0, 0x1

    .line 3962
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3963
    if-eqz v1, :cond_1

    .line 3964
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3970
    :cond_0
    const/4 v0, 0x0

    .line 3973
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3938
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3940
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3957
    :goto_0
    return v1

    .line 3943
    :catch_0
    move-exception v2

    .line 3949
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3952
    :catch_1
    move-exception v1

    .line 3957
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3918
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3920
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 3921
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3924
    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3933
    :cond_0
    :goto_0
    return v1

    .line 3930
    :catch_0
    move-exception v1

    .line 3933
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOrangeCustomer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 345
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

    .line 346
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 3989
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3991
    :cond_0
    :goto_0
    return v1

    .line 3990
    :catch_0
    move-exception v0

    .line 3991
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 3
    .parameter "packagename"

    .prologue
    const/4 v1, 0x0

    .line 4092
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4094
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 4095
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4096
    const/4 v1, 0x1

    .line 4100
    :cond_0
    :goto_0
    return v1

    .line 4098
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 353
    .local v0, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readSoftwareUpdateType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4043
    const-string v0, "system_update_settings"

    .line 4044
    const-string v0, "software_update_settings"

    .line 4045
    const-string v0, "software_update_settings_no_subtree"

    .line 4046
    const-string v0, "system_update_settings_na_gsm"

    .line 4047
    const-string v0, "system_update_settings_vzw"

    .line 4048
    const-string v0, "system_update_settings_spr"

    .line 4049
    const-string v0, "no_software_update_settings"

    .line 4050
    const-string v0, "com.sec.android.fotaclient"

    .line 4052
    const-string v0, "system_update_settings"

    .line 4053
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 4054
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4056
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4057
    const-string v0, "software_update_settings_no_subtree"

    .line 4088
    :cond_0
    :goto_0
    return-object v0

    .line 4059
    :cond_1
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 4064
    :cond_2
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4066
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4067
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4069
    :cond_3
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 4074
    :cond_4
    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4075
    :cond_5
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4076
    :cond_6
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4077
    const-string v0, "system_update_settings_vzw"

    goto :goto_0

    .line 4078
    :cond_7
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4081
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4082
    const-string v0, "TFN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4083
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4080
    :cond_8
    const-string v0, "system_update_settings_spr"

    goto :goto_0

    .line 4085
    :cond_9
    const-string v0, "software_update_settings"

    goto :goto_0
.end method

.method private setPreferenceSearchDB(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v1, mofiedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->addOrRemoveSearchableOptions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 227
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {p0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updateSearchItemValue(Lcom/android/settings/settingssearch/SettingsSearchItem;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    .line 228
    .local v3, resultItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    iget-wide v4, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 229
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchDBItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getPreferenceListRes(Ljava/lang/String;)I

    move-result v2

    .line 231
    .local v2, resid:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 232
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getPreferencesScreenItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->setPreferenceSearchDB(Ljava/util/ArrayList;)V

    .line 226
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v2           #resid:I
    .end local v3           #resultItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_3
    return-void
.end method

.method private updateSearchItemValue(Lcom/android/settings/settingssearch/SettingsSearchItem;)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 0
    .parameter "item"

    .prologue
    .line 334
    return-object p1
.end method


# virtual methods
.method public addOrRemoveSearchableOptions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 1076
    const v1, 0x7f0b05e3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustTetheringAndPortableHotspotSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1145
    :cond_0
    :goto_0
    return-object p1

    .line 1078
    :cond_1
    const v1, 0x7f0b05ee

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustWirelessSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1080
    :cond_2
    const v1, 0x7f0b05f0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustNFCSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1082
    :cond_3
    const v1, 0x7f0b05f3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustNearbySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1084
    :cond_4
    const v1, 0x7f0b05fa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1085
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLockScreenMenuSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1086
    :cond_5
    const v1, 0x7f0b05fb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1087
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDisplay2013Settings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1090
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDisplaySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1091
    :cond_7
    const v1, 0x7f0b061c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustWallpaperSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1093
    :cond_8
    const v1, 0x7f0b061d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustFontSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1095
    :cond_9
    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustGlanceSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1097
    :cond_a
    const v1, 0x7f0b05fd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1098
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLedIndicatorSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1099
    :cond_b
    const v1, 0x7f0b05fe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSoundSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1101
    :cond_c
    const v1, 0x7f0b0602

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDormantModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1103
    :cond_d
    const v1, 0x7f0b0603

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1104
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDrivingModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1105
    :cond_e
    const v1, 0x7f0b0608

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustPowerSavingModeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1107
    :cond_f
    const v1, 0x7f0b0609

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDockSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1109
    :cond_10
    const v1, 0x7f0b060a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustAccessibilitySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1111
    :cond_11
    const v1, 0x7f0b060e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLanguageSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1113
    :cond_12
    const v1, 0x7f0b0615

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustVoiceControlSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1115
    :cond_13
    const v1, 0x7f0b064a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1116
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustMotions2013SEttings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1117
    :cond_14
    const v1, 0x7f0b064b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustPalmSMotion2013Settings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1119
    :cond_15
    const v1, 0x7f0b0611

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1120
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSMotionSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1121
    :cond_16
    const v1, 0x7f0b0612

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSmartScreenSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1123
    :cond_17
    const v1, 0x7f0b0613

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustFingerAirViewSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1125
    :cond_18
    const v1, 0x7f0b0623

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustAccountSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1127
    :cond_19
    const v1, 0x7f0b05dc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSCloudSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1129
    :cond_1a
    const v1, 0x7f0b05dd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustPrivacySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1131
    :cond_1b
    const v1, 0x7f0b05e9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLocationSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1133
    :cond_1c
    const v1, 0x7f0b062b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustUserSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1135
    :cond_1d
    const v1, 0x7f0b062f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSecuritySettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1137
    :cond_1e
    const v1, 0x7f0b0625

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1138
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDateTimeSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1139
    :cond_1f
    const v1, 0x7f0b0630

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDeveloperSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0

    .line 1141
    :cond_20
    const v1, 0x7f0b0633

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustAboutSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public getPreferenceListRes(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0700af

    .line 938
    const v1, 0x7f0b05e0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    const v0, 0x7f0700ea

    .line 1069
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    const v1, 0x7f0b05e7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    const v0, 0x7f0700bd

    goto :goto_0

    .line 942
    :cond_2
    const v1, 0x7f0b05e1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    const v0, 0x7f0700e1

    goto :goto_0

    .line 944
    :cond_3
    const v1, 0x7f0b05e2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 945
    const v0, 0x7f070025

    goto :goto_0

    .line 946
    :cond_4
    const v1, 0x7f0b05e3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 947
    const v0, 0x7f0700cc

    goto :goto_0

    .line 948
    :cond_5
    const v1, 0x7f0b05e9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 949
    const v0, 0x7f070067

    goto :goto_0

    .line 950
    :cond_6
    const v1, 0x7f0b05ee

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    const v0, 0x7f0700ec

    goto :goto_0

    .line 952
    :cond_7
    const v1, 0x7f0b05f0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 953
    const v0, 0x7f07007e

    goto :goto_0

    .line 954
    :cond_8
    const v1, 0x7f0b05f3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 955
    const v0, 0x7f070015

    goto/16 :goto_0

    .line 956
    :cond_9
    const v1, 0x7f0b05f5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 957
    const v0, 0x7f0700e5

    goto/16 :goto_0

    .line 960
    :cond_a
    const v1, 0x7f0b0656

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 961
    const v0, 0x7f07004a

    goto/16 :goto_0

    .line 966
    :cond_b
    const v1, 0x7f0b05fe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 967
    const v0, 0x7f0700c3

    goto/16 :goto_0

    .line 968
    :cond_c
    const v1, 0x7f0b05fb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 969
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 970
    const v0, 0x7f07003f

    goto/16 :goto_0

    .line 972
    :cond_d
    const v0, 0x7f07003e

    goto/16 :goto_0

    .line 973
    :cond_e
    const v1, 0x7f0b061a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 974
    const v0, 0x7f070079

    goto/16 :goto_0

    .line 975
    :cond_f
    const v1, 0x7f0b05fd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 976
    const v0, 0x7f070064

    goto/16 :goto_0

    .line 977
    :cond_10
    const v1, 0x7f0b05fa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const v1, 0x7f0b061c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 980
    const v0, 0x7f0700d9

    goto/16 :goto_0

    .line 981
    :cond_11
    const v1, 0x7f0b061d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 982
    const v0, 0x7f070053

    goto/16 :goto_0

    .line 983
    :cond_12
    const v1, 0x7f0b061e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 984
    const v0, 0x7f07007f

    goto/16 :goto_0

    .line 985
    :cond_13
    const v1, 0x7f0b0622

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 986
    const v0, 0x7f070058

    goto/16 :goto_0

    .line 987
    :cond_14
    const v1, 0x7f0b060a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 988
    const v0, 0x7f070001

    goto/16 :goto_0

    .line 989
    :cond_15
    const v1, 0x7f0b0602

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 990
    const v0, 0x7f070043

    goto/16 :goto_0

    .line 991
    :cond_16
    const v1, 0x7f0b0605

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 992
    const v0, 0x7f070021

    goto/16 :goto_0

    .line 996
    :cond_17
    const v1, 0x7f0b060e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 997
    const v0, 0x7f070062

    goto/16 :goto_0

    .line 998
    :cond_18
    const v1, 0x7f0b0615

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 999
    const v0, 0x7f0700d6

    goto/16 :goto_0

    .line 1000
    :cond_19
    const v1, 0x7f0b0603

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1001
    const v0, 0x7f070044

    goto/16 :goto_0

    .line 1002
    :cond_1a
    const v1, 0x7f0b0616

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1003
    const v0, 0x7f07008b

    goto/16 :goto_0

    .line 1004
    :cond_1b
    const v1, 0x7f0b060d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1005
    const v0, 0x7f070082

    goto/16 :goto_0

    .line 1006
    :cond_1c
    const v1, 0x7f0b0642

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1007
    const v0, 0x7f070075

    goto/16 :goto_0

    .line 1008
    :cond_1d
    const v1, 0x7f0b0648

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1009
    const v0, 0x7f07000e

    goto/16 :goto_0

    .line 1010
    :cond_1e
    const v1, 0x7f0b0614

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1011
    const v0, 0x7f070013

    goto/16 :goto_0

    .line 1012
    :cond_1f
    const v1, 0x7f0b064a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1013
    const v0, 0x7f070074

    goto/16 :goto_0

    .line 1014
    :cond_20
    const v1, 0x7f0b064b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1015
    const v0, 0x7f07005b

    goto/16 :goto_0

    .line 1016
    :cond_21
    const v1, 0x7f0b0613

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1017
    const v0, 0x7f070051

    goto/16 :goto_0

    .line 1018
    :cond_22
    const v1, 0x7f0b0612

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1019
    const v0, 0x7f0700c0

    goto/16 :goto_0

    .line 1024
    :cond_23
    const v1, 0x7f0b05f9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1025
    const v0, 0x7f07005c

    goto/16 :goto_0

    .line 1026
    :cond_24
    const v1, 0x7f0b0623

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1027
    const v0, 0x7f070009

    goto/16 :goto_0

    .line 1028
    :cond_25
    const v1, 0x7f0b05dc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1029
    const v0, 0x7f070028

    goto/16 :goto_0

    .line 1030
    :cond_26
    const v1, 0x7f0b05dd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1031
    const v0, 0x7f070095

    goto/16 :goto_0

    .line 1032
    :cond_27
    const v1, 0x7f0b0625

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1033
    const v0, 0x7f070032

    goto/16 :goto_0

    .line 1034
    :cond_28
    const v1, 0x7f0b0627

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1035
    const v0, 0x7f07009e

    goto/16 :goto_0

    .line 1036
    :cond_29
    const v1, 0x7f0b0609

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1037
    const v0, 0x7f070042

    goto/16 :goto_0

    .line 1038
    :cond_2a
    const v1, 0x7f0b062a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1039
    const v0, 0x7f070063

    goto/16 :goto_0

    .line 1040
    :cond_2b
    const v1, 0x7f0b062b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1041
    const v0, 0x7f0700d4

    goto/16 :goto_0

    .line 1042
    :cond_2c
    const v1, 0x7f0b062c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1043
    const v0, 0x7f070090

    goto/16 :goto_0

    .line 1044
    :cond_2d
    const v1, 0x7f0b0608

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1045
    const v0, 0x7f07006f

    goto/16 :goto_0

    .line 1046
    :cond_2e
    const v1, 0x7f0b062d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1047
    const v0, 0x7f07008f

    goto/16 :goto_0

    .line 1048
    :cond_2f
    const v1, 0x7f0b062e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1049
    const v0, 0x7f070035

    goto/16 :goto_0

    .line 1050
    :cond_30
    const v1, 0x7f0b062f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    const v0, 0x7f0b0630

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1053
    const v0, 0x7f070033

    goto/16 :goto_0

    .line 1054
    :cond_31
    const v0, 0x7f0b0633

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1055
    const v0, 0x7f070036

    goto/16 :goto_0

    .line 1058
    :cond_32
    const-string v0, "select_info"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1059
    const v0, 0x7f0700b7

    goto/16 :goto_0

    .line 1060
    :cond_33
    const-string v0, "smartCardConfig"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1061
    const v0, 0x7f0700bf

    goto/16 :goto_0

    .line 1062
    :cond_34
    const-string v0, "software_update_settings"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1063
    const v0, 0x7f0700c2

    goto/16 :goto_0

    .line 1069
    :cond_35
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public initSearchDB()V
    .locals 9

    .prologue
    .line 193
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchManager;->Delete(ILjava/lang/String;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, headerItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    const v6, 0x7f07005a

    const-string v7, "Settings"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-virtual {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isAvailableHeader(Lcom/android/settings/settingssearch/SettingsSearchItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updateSearchItemValue(Lcom/android/settings/settingssearch/SettingsSearchItem;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    .line 209
    .local v4, resultItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    iget-wide v5, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 210
    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchDBItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    iget-object v5, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getPreferenceListRes(Ljava/lang/String;)I

    move-result v3

    .line 212
    .local v3, resID:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    iget-object v6, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getPreferencesScreenItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 214
    .local v2, preferenceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-direct {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->setPreferenceSearchDB(Ljava/util/ArrayList;)V

    .line 206
    .end local v2           #preferenceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    .end local v3           #resID:I
    .end local v4           #resultItem:Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1           #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    const v6, 0x7f07002c

    const-string v7, "Connections"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    const v6, 0x7f07003d

    const-string v7, "Device"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    const v6, 0x7f070060

    const-string v7, "Controls"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchXmlParser:Lcom/android/settings/settingssearch/SettingsSearchXmlParser;

    const v6, 0x7f070054

    const-string v7, "General"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 219
    .restart local v1       #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchDBItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchManager;->addSearchInfoDB(Ljava/util/ArrayList;)V

    .line 220
    return-void
.end method

.method public initTitleDB(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 246
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 247
    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 248
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, v2, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 253
    const-string v0, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SEARCH MANAGER --> getItem size : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 256
    new-instance v6, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v6}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 257
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    const-string v7, "com.android.settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 262
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    :cond_0
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 273
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    long-to-int v0, v7

    .line 274
    if-ne v0, v9, :cond_2

    .line 276
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 293
    :goto_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    iput v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 295
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    long-to-int v0, v7

    .line 296
    if-eq v0, v9, :cond_4

    .line 299
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    long-to-int v0, v7

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 314
    :goto_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    iput v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 316
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 318
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 320
    iput-object v4, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 322
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 266
    const-string v4, "SettingsSearchUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initTitleDB pakageName"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->addTextInfoDB(Ljava/util/ArrayList;)V

    .line 326
    const-string v0, "SettingsSearchUtils"

    const-string v1, " SEARCH MANAGER --> finish text write"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 279
    :cond_2
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v7, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    long-to-int v0, v7

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 280
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 281
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 287
    :goto_4
    const-string v4, "SettingsSearchUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotFoundException #1 : i = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", searchItem.get(i).titleResId = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 285
    :cond_3
    const-string v0, ""

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 300
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 301
    const-string v4, "SettingsSearchUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotFoundException #2 : i = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", searchItem.get(i).summaryResId = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-wide v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    iput-object v10, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_3

    .line 307
    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2

    .line 310
    :cond_5
    iput-object v10, v6, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public isAvailableHeader(Lcom/android/settings/settingssearch/SettingsSearchItem;)Z
    .locals 13
    .parameter

    .prologue
    const-wide/32 v11, 0x7f0b05ed

    const-wide/32 v9, 0x7f0b05eb

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 362
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 363
    const/16 v4, 0x15

    iput v4, v3, Landroid/os/Message;->what:I

    .line 364
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 366
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 368
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "development"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 370
    const-string v4, "show"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 374
    iget-object v4, p1, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 376
    const-wide/32 v6, 0x7f0b05fa

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 377
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "shopdemo"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 378
    if-ne v0, v1, :cond_2

    .line 929
    :cond_0
    :goto_0
    return v2

    .line 380
    :cond_1
    const-wide/32 v6, 0x7f0b0642

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 387
    const-wide/32 v6, 0x7f0b0648

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    move v2, v1

    .line 929
    goto :goto_0

    .line 393
    :cond_3
    const-wide/32 v6, 0x7f0b064a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 399
    const-wide/32 v6, 0x7f0b064b

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 405
    const-wide/32 v6, 0x7f0b061a

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 406
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 412
    :cond_4
    const-wide/32 v6, 0x7f0b0640

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 416
    const-wide/32 v6, 0x7f0b05d8

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 417
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 420
    :cond_5
    const-wide/32 v6, 0x7f0b0656

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 424
    const-wide/32 v6, 0x7f0b0609

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    .line 425
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f0c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 427
    :cond_6
    const-wide/32 v6, 0x7f0b0657

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    const-wide/32 v6, 0x7f0b065d

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 429
    const-wide/32 v6, 0x7f0b05e0

    cmp-long v6, v4, v6

    if-nez v6, :cond_7

    .line 431
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 435
    :cond_7
    const-wide/32 v6, 0x7f0b05df

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 438
    const-wide/32 v6, 0x7f0b0655

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 443
    const-wide/32 v6, 0x7f0b05e1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 455
    cmp-long v6, v4, v9

    if-nez v6, :cond_8

    .line 457
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 461
    :cond_8
    cmp-long v6, v4, v11

    if-nez v6, :cond_9

    .line 462
    const-string v3, "CTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 469
    :cond_9
    const-wide/32 v6, 0x7f0b05e2

    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    .line 471
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 474
    :cond_a
    const-wide/32 v6, 0x7f0b0605

    cmp-long v6, v4, v6

    if-nez v6, :cond_b

    .line 475
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 479
    :cond_b
    const-wide/32 v6, 0x7f0b05e8

    cmp-long v6, v4, v6

    if-nez v6, :cond_d

    .line 481
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 483
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 485
    :goto_2
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 483
    goto :goto_2

    .line 491
    :cond_d
    const-wide/32 v6, 0x7f0b062c

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 496
    cmp-long v6, v4, v9

    if-nez v6, :cond_e

    .line 498
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 502
    :cond_e
    const-wide/32 v6, 0x7f0b05ec

    cmp-long v6, v4, v6

    if-nez v6, :cond_f

    .line 504
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 508
    :cond_f
    cmp-long v6, v4, v11

    if-nez v6, :cond_10

    .line 509
    const-string v3, "CTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 512
    :cond_10
    const-wide/32 v6, 0x7f0b0610

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 518
    const-wide/32 v6, 0x7f0b0611

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 526
    const-wide/32 v6, 0x7f0b064b

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 532
    const-wide/32 v6, 0x7f0b0613

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 536
    const-wide/32 v6, 0x7f0b0614

    cmp-long v6, v4, v6

    if-nez v6, :cond_11

    .line 537
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 542
    :cond_11
    const-wide/32 v6, 0x7f0b0649

    cmp-long v6, v4, v6

    if-nez v6, :cond_12

    .line 543
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 546
    :cond_12
    const-wide/32 v6, 0x7f0b0612

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 553
    const-wide/32 v6, 0x7f0b05fd

    cmp-long v6, v4, v6

    if-nez v6, :cond_13

    .line 554
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 557
    :cond_13
    const-wide/32 v6, 0x7f0b0662

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 561
    const-wide/32 v6, 0x7f0b0620

    cmp-long v6, v4, v6

    if-nez v6, :cond_14

    .line 562
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 565
    :cond_14
    const-wide/32 v6, 0x7f0b05ff

    cmp-long v6, v4, v6

    if-nez v6, :cond_15

    .line 566
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 570
    :cond_15
    const-wide/32 v6, 0x7f0b0608

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 574
    const-wide/32 v6, 0x7f0b05d7

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 596
    const-wide/32 v6, 0x7f0b062d

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 600
    const-wide/32 v6, 0x7f0b05d9

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 602
    const-wide/32 v6, 0x7f0b0616

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 606
    const-wide/32 v6, 0x7f0b060d

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 610
    const-wide/32 v6, 0x7f0b0663

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 615
    const-wide/32 v6, 0x7f0b05ea

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 620
    const-wide/32 v6, 0x7f0b05f9

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 624
    const-wide/32 v6, 0x7f0b062b

    cmp-long v6, v4, v6

    if-nez v6, :cond_16

    .line 627
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v2

    .line 631
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 640
    :cond_16
    const-wide/32 v6, 0x7f0b05dc

    cmp-long v6, v4, v6

    if-nez v6, :cond_17

    .line 641
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :try_start_1
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 646
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 650
    :cond_17
    const-wide/32 v6, 0x7f0b0632

    cmp-long v6, v4, v6

    if-nez v6, :cond_19

    .line 651
    const-string v3, "SPR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "BST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    const-string v2, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 662
    :cond_19
    const-wide/32 v6, 0x7f0b0631

    cmp-long v6, v4, v6

    if-nez v6, :cond_1a

    .line 665
    :try_start_2
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sprint.dsa"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 671
    :goto_4
    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 666
    :catch_1
    move-exception v0

    move v0, v2

    .line 667
    goto :goto_4

    .line 674
    :cond_1a
    const-wide/32 v6, 0x7f0b065b

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 678
    const-wide/32 v6, 0x7f0b0600

    cmp-long v6, v4, v6

    if-nez v6, :cond_1b

    .line 679
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mproject"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 682
    :cond_1b
    const-wide/32 v6, 0x7f0b05f0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1c

    .line 685
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    :try_start_3
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.settings.nfcsummary"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 692
    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 696
    :catch_2
    move-exception v0

    .line 697
    const-string v0, "CSCAppRes"

    const-string v2, "No data for CSCAppResourceUri"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 700
    :cond_1c
    const-wide/32 v6, 0x7f0b05f2

    cmp-long v6, v4, v6

    if-nez v6, :cond_1d

    .line 702
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 708
    :cond_1d
    const-wide/32 v6, 0x7f0b05f4

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 712
    const-wide/32 v6, 0x7f0b05f5

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 717
    const-wide/32 v6, 0x7f0b05f6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1e

    .line 719
    :try_start_4
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.kieswifi"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 720
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 724
    :cond_1e
    const-wide/32 v6, 0x7f0b05f8

    cmp-long v6, v4, v6

    if-nez v6, :cond_1f

    .line 725
    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isDocomoSettingsDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    :try_start_5
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 731
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 735
    :cond_1f
    const-wide/32 v6, 0x7f0b065c

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 736
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 746
    :cond_20
    const-wide/32 v6, 0x7f0b0630

    cmp-long v0, v4, v6

    if-nez v0, :cond_21

    .line 748
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isOrangeCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 751
    :cond_21
    const-wide/32 v6, 0x7f0b05da

    cmp-long v0, v4, v6

    if-nez v0, :cond_22

    .line 752
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 753
    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 756
    :cond_22
    const-wide/32 v6, 0x7f0b0667

    cmp-long v0, v4, v6

    if-nez v0, :cond_23

    .line 758
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isOrangeCustomer()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 761
    :cond_23
    const-wide/32 v6, 0x7f0b0604

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    .line 762
    const-string v0, "ro.multisim.simslotcount"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 770
    :cond_24
    const-wide/32 v6, 0x7f0b0660

    cmp-long v0, v4, v6

    if-nez v0, :cond_25

    .line 771
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 775
    :cond_25
    const-wide/32 v6, 0x7f0b05e5

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 779
    const-wide/32 v6, 0x7f0b05e6

    cmp-long v0, v4, v6

    if-nez v0, :cond_26

    .line 780
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 784
    :cond_26
    const-wide/32 v6, 0x7f0b05e3

    cmp-long v0, v4, v6

    if-nez v0, :cond_28

    .line 785
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_27

    move v3, v1

    .line 791
    :goto_5
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 794
    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ATT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_27
    move v3, v2

    .line 788
    goto :goto_5

    .line 800
    :cond_28
    const-wide/32 v6, 0x7f0b05f9

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 805
    const-wide/32 v6, 0x7f0b0654

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 810
    const-wide/32 v6, 0x7f0b062c

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 814
    const-wide/32 v6, 0x7f0b0658

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 818
    const-wide/32 v6, 0x7f0b05ee

    cmp-long v0, v4, v6

    if-nez v0, :cond_2a

    .line 822
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 823
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_29
    move v0, v2

    .line 822
    goto :goto_6

    .line 826
    :cond_2a
    const-wide/32 v6, 0x7f0b0664

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 830
    const-wide/32 v6, 0x7f0b0607

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 834
    const-wide/32 v6, 0x7f0b0665

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 836
    const-wide/32 v6, 0x7f0b0602

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 840
    const-wide/32 v6, 0x7f0b0626

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 844
    const-wide/32 v6, 0x7f0b0603

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 849
    const-wide/32 v6, 0x7f0b0601

    cmp-long v0, v4, v6

    if-nez v0, :cond_2c

    .line 850
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    .line 851
    :goto_7
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2b
    move v0, v2

    .line 850
    goto :goto_7

    .line 854
    :cond_2c
    const-wide/32 v6, 0x7f0b0606

    cmp-long v0, v4, v6

    if-nez v0, :cond_2d

    .line 859
    :try_start_6
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.safetyassurance"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 860
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 864
    :cond_2d
    const-wide/32 v6, 0x7f0b0627

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 868
    const-wide/32 v6, 0x7f0b0659

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 872
    const-wide/32 v6, 0x7f0b0615

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    .line 873
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isVoiceControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 877
    :cond_2e
    const-wide/32 v6, 0x7f0b065f

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 881
    const-wide/32 v6, 0x7f0b0661

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 885
    const-wide/32 v6, 0x7f0b05f3

    cmp-long v0, v4, v6

    if-nez v0, :cond_2f

    .line 886
    const-string v0, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 889
    :cond_2f
    const-wide/32 v6, 0x7f0b060f

    cmp-long v0, v4, v6

    if-nez v0, :cond_30

    .line 890
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 893
    :cond_30
    const-wide/32 v6, 0x7f0b060b

    cmp-long v0, v4, v6

    if-nez v0, :cond_31

    .line 894
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 897
    :cond_31
    const-wide/32 v6, 0x7f0b05f1

    cmp-long v0, v4, v6

    if-nez v0, :cond_32

    .line 899
    :try_start_7
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sequent.controlpanel"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 908
    :cond_32
    const-wide/32 v6, 0x7f0b0623

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 912
    const-wide/32 v6, 0x7f0b05fc

    cmp-long v0, v4, v6

    if-nez v0, :cond_33

    .line 913
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    .line 915
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 918
    :cond_33
    const-wide/32 v6, 0x7f0b05e9

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    .line 919
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 921
    :cond_34
    const-wide/32 v6, 0x7f0b05e4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 924
    const-wide/32 v6, 0x7f0b0622

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 488
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 903
    :catch_7
    move-exception v0

    goto/16 :goto_0

    :cond_35
    move v0, v1

    goto/16 :goto_3
.end method
