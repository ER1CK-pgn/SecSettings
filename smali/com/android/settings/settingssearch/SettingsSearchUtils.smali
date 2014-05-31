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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    .line 3615
    .line 3616
    const-string v0, ""

    .line 3618
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3620
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 3624
    :goto_0
    const-string v0, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 3626
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 3628
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3630
    if-eqz v0, :cond_37

    .line 3631
    const-string v5, "help"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 3857
    :goto_2
    if-eqz v0, :cond_35

    .line 3858
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_3
    move v2, v0

    .line 3862
    goto :goto_1

    .line 3622
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 3633
    :cond_1
    const-string v5, "software_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3634
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

    .line 3638
    goto :goto_2

    .line 3640
    :cond_2
    const-string v5, "hardware_version_spr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3641
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

    .line 3645
    goto :goto_2

    .line 3647
    :cond_3
    const-string v5, "system_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3648
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 3649
    goto :goto_2

    .line 3650
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3651
    goto :goto_2

    .line 3658
    :cond_5
    const-string v5, "software_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3659
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3660
    goto/16 :goto_2

    .line 3662
    :cond_6
    const-string v5, "software_update_settings_no_subtree"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3663
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3664
    goto/16 :goto_2

    .line 3666
    :cond_7
    const-string v5, "system_update_settings_na_gsm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3667
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3668
    goto/16 :goto_2

    .line 3670
    :cond_8
    const-string v5, "system_update_settings_vzw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3671
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3672
    goto/16 :goto_2

    .line 3674
    :cond_9
    const-string v5, "system_update_settings_spr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3675
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3676
    goto/16 :goto_2

    .line 3678
    :cond_a
    const-string v5, "no_software_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3679
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3680
    goto/16 :goto_2

    .line 3682
    :cond_b
    const-string v5, "additional_system_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3683
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0005

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_37

    move v0, v4

    .line 3685
    goto/16 :goto_2

    .line 3687
    :cond_c
    const-string v5, "diagnostics_and_usage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3688
    const-string v0, "com.samsung.ccr"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3689
    goto/16 :goto_2

    .line 3691
    :cond_d
    const-string v5, "preload_update"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 3692
    goto/16 :goto_2

    .line 3693
    :cond_e
    const-string v5, "plmn_update_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v4

    .line 3694
    goto/16 :goto_2

    .line 3695
    :cond_f
    const-string v5, "icon_glossary"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3696
    const-string v0, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3697
    goto/16 :goto_2

    .line 3699
    :cond_10
    const-string v5, "status_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    goto/16 :goto_2

    .line 3705
    :cond_11
    const-string v5, "ctc_epush"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3706
    const-string v0, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3707
    goto/16 :goto_2

    .line 3709
    :cond_12
    const-string v5, "sprint_4g_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v0, v4

    .line 3711
    goto/16 :goto_2

    .line 3713
    :cond_13
    const-string v5, "container"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v3

    goto/16 :goto_2

    .line 3722
    :cond_14
    const-string v5, "copyright"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v4

    .line 3723
    goto/16 :goto_2

    .line 3724
    :cond_15
    const-string v5, "license"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v0, v4

    .line 3725
    goto/16 :goto_2

    .line 3726
    :cond_16
    const-string v5, "terms"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v0, v4

    .line 3727
    goto/16 :goto_2

    .line 3728
    :cond_17
    const-string v5, "samsung_legal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v0, v4

    .line 3729
    goto/16 :goto_2

    .line 3740
    :cond_18
    const-string v5, "privacy_alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3741
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

    .line 3744
    goto/16 :goto_2

    .line 3750
    :cond_19
    const-string v5, "divx_license_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3751
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/lib/drm/libdivxplugin.so"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3753
    goto/16 :goto_2

    .line 3759
    :cond_1a
    const-string v5, "safetylegal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3760
    const-string v0, "ro.url.safetylegal"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3761
    goto/16 :goto_2

    .line 3763
    :cond_1b
    const-string v5, "telespree_activation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3764
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3765
    const-string v5, "iconvmu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3766
    goto/16 :goto_2

    .line 3769
    :cond_1c
    const-string v5, "key_label_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3770
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_1d
    move v0, v4

    .line 3771
    goto/16 :goto_2

    .line 3773
    :cond_1e
    const-string v5, "label_name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3774
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "mproject"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3775
    goto/16 :goto_2

    .line 3777
    :cond_1f
    const-string v5, "device_name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v0, v3

    goto/16 :goto_2

    .line 3782
    :cond_20
    const-string v5, "regulatory_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3783
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_37

    move v0, v4

    .line 3784
    goto/16 :goto_2

    .line 3786
    :cond_21
    const-string v5, "device_model"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v3

    goto/16 :goto_2

    .line 3788
    :cond_22
    const-string v5, "firmware_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move v0, v3

    goto/16 :goto_2

    .line 3790
    :cond_23
    const-string v5, "fcc_equipment_id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3791
    const-string v0, "ro.ril.fccid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3792
    goto/16 :goto_2

    .line 3794
    :cond_24
    const-string v5, "baseband_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3795
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3796
    goto/16 :goto_2

    .line 3798
    :cond_25
    const-string v5, "installed_variant_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3799
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v4

    .line 3801
    goto/16 :goto_2

    .line 3803
    :cond_26
    const-string v5, "kernel_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v0, v3

    goto/16 :goto_2

    .line 3805
    :cond_27
    const-string v5, "build_number"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v0, v3

    goto/16 :goto_2

    .line 3807
    :cond_28
    const-string v5, "selinux_status"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3808
    const-string v0, "ro.build.selinux"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v4

    .line 3809
    goto/16 :goto_2

    .line 3810
    :cond_29
    const-string v0, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3811
    goto/16 :goto_2

    .line 3813
    :cond_2a
    const-string v5, "csb_value"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3814
    const-string v0, "ro.csb_val"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3815
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

    .line 3816
    goto/16 :goto_2

    .line 3818
    :cond_2c
    const-string v5, "hardware_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3819
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v4

    .line 3820
    goto/16 :goto_2

    .line 3821
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

    .line 3823
    goto/16 :goto_2

    .line 3825
    :cond_2f
    const-string v5, "country_certification_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3826
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

    .line 3830
    :cond_30
    :try_start_1
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_enable"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_32

    .line 3832
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_traid"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3834
    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_cert_info_ta"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3836
    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "country_cert_info_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 3838
    if-eqz v0, :cond_31

    if-eqz v5, :cond_31

    if-eqz v6, :cond_31

    move v0, v3

    goto/16 :goto_2

    :cond_31
    move v0, v4

    .line 3841
    goto/16 :goto_2

    :cond_32
    move v0, v4

    .line 3844
    goto/16 :goto_2

    .line 3846
    :catch_1
    move-exception v0

    move v0, v3

    .line 3847
    goto/16 :goto_2

    :cond_33
    move v0, v4

    .line 3849
    goto/16 :goto_2

    .line 3851
    :cond_34
    const-string v5, "security_sw_version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3852
    const-string v0, ""

    const-string v5, "security.mdpp"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    .line 3853
    goto/16 :goto_2

    .line 3860
    :cond_35
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_3

    .line 3867
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

    .line 2666
    new-instance v0, Landroid/speech/tts/TtsEngines;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 2667
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 2669
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

    .line 2671
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_21

    .line 2673
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2675
    if-eqz v0, :cond_8

    .line 2676
    const-string v6, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    .line 2809
    :goto_3
    if-eqz v0, :cond_20

    .line 2810
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v5

    :goto_4
    move v5, v0

    .line 2814
    goto :goto_2

    :cond_0
    move v1, v3

    .line 2667
    goto :goto_0

    :cond_1
    move v4, v3

    .line 2669
    goto :goto_1

    .line 2678
    :cond_2
    const-string v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2679
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2683
    :cond_3
    const-string v6, "screen_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2685
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2689
    :cond_4
    const-string v6, "lock_after_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2690
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 2691
    goto :goto_3

    .line 2692
    :cond_5
    if-eqz v4, :cond_8

    move v0, v3

    goto :goto_3

    .line 2696
    :cond_6
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2699
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

    .line 2704
    :goto_5
    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 2705
    goto :goto_3

    .line 2701
    :catch_0
    move-exception v0

    move v0, v3

    .line 2702
    goto :goto_5

    .line 2706
    :cond_7
    if-eqz v4, :cond_8

    :cond_8
    :goto_6
    move v0, v3

    goto :goto_3

    .line 2710
    :cond_9
    const-string v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2711
    if-eqz v4, :cond_8

    move v0, v2

    .line 2712
    goto :goto_3

    .line 2714
    :cond_a
    const-string v6, "call_answering_ending"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2715
    if-nez v4, :cond_b

    move v0, v2

    .line 2716
    goto :goto_3

    .line 2717
    :cond_b
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 2718
    goto/16 :goto_3

    .line 2720
    :cond_c
    const-string v6, "power_key_hold"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2721
    if-nez v4, :cond_8

    move v0, v2

    .line 2722
    goto/16 :goto_3

    .line 2726
    :cond_d
    const-string v6, "share_acc_setting_menu"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v0, v3

    goto/16 :goto_3

    .line 2730
    :cond_e
    const-string v6, "font_size"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v0, v3

    goto/16 :goto_3

    .line 2732
    :cond_f
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2733
    if-eqz v4, :cond_8

    move v0, v3

    goto/16 :goto_3

    .line 2737
    :cond_10
    const-string v6, "high_contrast"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2738
    if-nez v4, :cond_8

    move v0, v2

    .line 2739
    goto/16 :goto_3

    .line 2748
    :cond_11
    const-string v6, "color_blind"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v3

    goto/16 :goto_3

    .line 2752
    :cond_12
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v0, v3

    goto/16 :goto_3

    .line 2754
    :cond_13
    const-string v6, "tts_settings_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2755
    if-eqz v1, :cond_14

    move v0, v3

    goto/16 :goto_3

    :cond_14
    move v0, v2

    .line 2759
    goto/16 :goto_3

    .line 2761
    :cond_15
    const-string v6, "tts_default_rate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2762
    if-nez v1, :cond_8

    move v0, v2

    .line 2763
    goto/16 :goto_3

    .line 2765
    :cond_16
    const-string v6, "tts_play_example"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2766
    if-nez v1, :cond_8

    move v0, v2

    .line 2767
    goto/16 :goto_3

    .line 2769
    :cond_17
    const-string v6, "toggle_script_injection_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v0, v3

    goto/16 :goto_3

    .line 2771
    :cond_18
    const-string v6, "audio_balance"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2772
    if-nez v4, :cond_8

    move v0, v2

    .line 2773
    goto/16 :goto_3

    .line 2777
    :cond_19
    const-string v6, "mono_audio_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2778
    if-nez v4, :cond_8

    move v0, v2

    .line 2779
    goto/16 :goto_3

    .line 2781
    :cond_1a
    const-string v6, "all_sound_off_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2782
    if-nez v4, :cond_8

    move v0, v2

    .line 2783
    goto/16 :goto_3

    .line 2785
    :cond_1b
    const-string v6, "flash_notification_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2786
    if-nez v4, :cond_8

    move v0, v2

    .line 2787
    goto/16 :goto_3

    .line 2791
    :cond_1c
    const-string v6, "assistant_menu_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move v0, v3

    goto/16 :goto_3

    .line 2795
    :cond_1d
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move v0, v3

    goto/16 :goto_3

    .line 2797
    :cond_1e
    const-string v6, "access_control_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2798
    if-eqz v4, :cond_8

    move v0, v3

    goto/16 :goto_3

    .line 2803
    :cond_1f
    const-string v6, "direct_access"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_6

    .line 2812
    :cond_20
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_4

    .line 2815
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
    .line 3210
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3211
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3212
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3213
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3214
    const-string v3, "vzw_bua_plus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3216
    const/4 v2, 0x1

    .line 3221
    :cond_0
    if-eqz v2, :cond_1

    .line 3222
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3228
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

    .line 3537
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 3539
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3541
    if-eqz v0, :cond_9

    .line 3542
    const-string v4, "auto_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3543
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 3566
    :goto_1
    if-eqz v0, :cond_7

    .line 3567
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3571
    goto :goto_0

    .line 3546
    :cond_0
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 3548
    :cond_1
    const-string v4, "time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 3550
    :cond_2
    const-string v4, "auto_zone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3551
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 3552
    goto :goto_1

    .line 3554
    :cond_3
    const-string v4, "timezone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 3556
    :cond_4
    const-string v4, "24 hour"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    goto :goto_1

    .line 3558
    :cond_5
    const-string v4, "date_format"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 3560
    :cond_6
    const-string v4, "dualclock_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3561
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    .line 3562
    goto :goto_1

    .line 3569
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3572
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
    .line 3576
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 3577
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3578
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3579
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3580
    const-string v3, "bugreport"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3605
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 3606
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3582
    :cond_1
    const-string v3, "keep_screen_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3586
    const-string v3, "clear_adb_keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3587
    const-string v3, "ro.adb.secure"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3588
    const/4 v2, 0x1

    goto :goto_1

    .line 3590
    :cond_2
    const-string v3, "enable_terminal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3591
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3592
    const/4 v2, 0x1

    goto :goto_1

    .line 3594
    :cond_3
    const-string v3, "verify_apps_over_usb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3595
    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "verifier_setting_visible"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 3597
    const/4 v2, 0x1

    goto :goto_1

    .line 3599
    :cond_4
    const-string v3, "show_touches"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3608
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3611
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
    .line 3919
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

    .line 1802
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    move v1, v2

    .line 1803
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1805
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1807
    if-eqz v0, :cond_29

    .line 1808
    const-string v4, "smartscreen_stay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1998
    :cond_0
    :goto_1
    if-eqz v0, :cond_27

    .line 1999
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2003
    goto :goto_0

    .line 1810
    :cond_1
    const-string v4, "smartscreen_pause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 1811
    goto :goto_1

    .line 1812
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 1813
    goto :goto_1

    .line 1814
    :cond_3
    const-string v4, "header_display_multi_window"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1815
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1816
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 1820
    :cond_4
    if-nez v0, :cond_2b

    move v0, v3

    .line 1824
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1825
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

    .line 1829
    goto :goto_1

    .line 1832
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 1833
    goto/16 :goto_1

    .line 1835
    :cond_6
    const-string v4, "accelerometer_with_smart_rotation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 1836
    goto/16 :goto_1

    .line 1837
    :cond_7
    const-string v4, "wallpaper"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1841
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1842
    goto/16 :goto_1

    .line 1844
    :cond_8
    const-string v4, "notification_panel_edit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1848
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1849
    goto/16 :goto_1

    .line 1851
    :cond_9
    const-string v4, "smart_screen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1852
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "settings_listui"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 1856
    :goto_4
    if-eqz v5, :cond_a

    move v0, v3

    .line 1860
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 1861
    goto/16 :goto_1

    :cond_b
    move v0, v3

    .line 1854
    goto :goto_4

    .line 1863
    :cond_c
    const-string v4, "MONOTYPE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1864
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1865
    goto/16 :goto_1

    .line 1867
    :cond_d
    const-string v4, "font_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1868
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1869
    goto/16 :goto_1

    .line 1871
    :cond_e
    const-string v4, "key_backlight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1872
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1875
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

    .line 1877
    :goto_6
    if-nez v4, :cond_0

    move v0, v3

    .line 1878
    goto/16 :goto_1

    :cond_f
    move v4, v2

    .line 1875
    goto :goto_6

    .line 1881
    :cond_10
    const-string v4, "led_indicator_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1882
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v5, :cond_29

    :cond_11
    move v0, v3

    .line 1884
    goto/16 :goto_1

    .line 1886
    :cond_12
    const-string v4, "key_multi_window"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1887
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1889
    if-nez v0, :cond_29

    move v0, v3

    .line 1890
    goto/16 :goto_1

    .line 1892
    :cond_13
    const-string v4, "contextualpage_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v3

    .line 1894
    goto/16 :goto_1

    .line 1896
    :cond_14
    const-string v4, "screen_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v2

    goto/16 :goto_1

    .line 1902
    :cond_15
    const-string v4, "brightness"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v2

    goto/16 :goto_1

    .line 1906
    :cond_16
    const-string v4, "accelerometer_second"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v0, v3

    .line 1907
    goto/16 :goto_1

    .line 1908
    :cond_17
    const-string v4, "accelerometer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1909
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v3

    .line 1910
    goto/16 :goto_1

    .line 1912
    :cond_18
    const-string v4, "screen_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v0, v2

    goto/16 :goto_1

    .line 1917
    :cond_19
    const-string v4, "screensaver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1918
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111004c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v3

    .line 1920
    goto/16 :goto_1

    .line 1922
    :cond_1a
    const-string v4, "intelligent_rotation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v0, v3

    .line 1925
    goto/16 :goto_1

    .line 1927
    :cond_1b
    const-string v4, "intelligent_sleep"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v0, v3

    .line 1930
    goto/16 :goto_1

    .line 1932
    :cond_1c
    const-string v4, "clear_font"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v0, v3

    .line 1934
    goto/16 :goto_1

    .line 1936
    :cond_1d
    const-string v4, "quick_launch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1945
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1e
    move v0, v3

    .line 1948
    goto/16 :goto_1

    :cond_1f
    const-string v4, "sub_lcd_auto_lock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move v0, v3

    .line 1949
    goto/16 :goto_1

    .line 1950
    :cond_20
    const-string v4, "key_night_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move v0, v3

    .line 1951
    goto/16 :goto_1

    .line 1952
    :cond_21
    const-string v4, "display_battery_level"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v0, v2

    goto/16 :goto_1

    .line 1956
    :cond_22
    const-string v4, "edit_screen_capture"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1960
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

    .line 1969
    goto/16 :goto_1

    .line 1972
    :cond_23
    const-string v4, "power_saving_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1984
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto/16 :goto_1

    .line 1988
    :cond_24
    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v0, v2

    goto/16 :goto_1

    .line 1992
    :cond_25
    const-string v4, "notification_pulse"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v0, v3

    .line 1993
    goto/16 :goto_1

    .line 1994
    :cond_26
    const-string v4, "wifi_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v3

    .line 1995
    goto/16 :goto_1

    .line 2001
    :cond_27
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 2004
    :cond_28
    return-object p1

    .line 1962
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

    .line 2011
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 2012
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 2014
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2016
    if-eqz v0, :cond_1f

    .line 2017
    const-string v5, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 2157
    :goto_1
    if-eqz v0, :cond_1d

    .line 2158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2162
    goto :goto_0

    .line 2021
    :cond_0
    const-string v5, "led_indicator_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2022
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1f

    :cond_1
    move v0, v3

    .line 2024
    goto :goto_1

    .line 2026
    :cond_2
    const-string v5, "notification_panel_edit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_1

    .line 2030
    :cond_3
    const-string v5, "key_multi_window"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2031
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 2033
    if-nez v0, :cond_1f

    move v0, v3

    .line 2034
    goto :goto_1

    .line 2036
    :cond_4
    const-string v5, "contextualpage_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 2038
    goto :goto_1

    .line 2040
    :cond_5
    const-string v5, "screen_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_1

    .line 2046
    :cond_6
    const-string v5, "brightness"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 2050
    :cond_7
    const-string v5, "accelerometer_second"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    .line 2051
    goto :goto_1

    .line 2052
    :cond_8
    const-string v5, "accelerometer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2053
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v3

    .line 2054
    goto :goto_1

    .line 2056
    :cond_9
    const-string v5, "screen_timeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 2061
    :cond_a
    const-string v5, "screensaver"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2062
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111004c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v3

    .line 2064
    goto/16 :goto_1

    .line 2066
    :cond_b
    const-string v5, "smart_screen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2067
    if-eqz v4, :cond_1f

    move v0, v3

    .line 2069
    goto/16 :goto_1

    .line 2071
    :cond_c
    const-string v5, "intelligent_rotation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v0, v3

    .line 2074
    goto/16 :goto_1

    .line 2076
    :cond_d
    const-string v5, "intelligent_sleep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v3

    .line 2079
    goto/16 :goto_1

    .line 2081
    :cond_e
    const-string v5, "MONOTYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v2

    goto/16 :goto_1

    .line 2083
    :cond_f
    const-string v5, "font_size"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v0, v2

    goto/16 :goto_1

    .line 2085
    :cond_10
    const-string v5, "clear_font"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    .line 2087
    goto/16 :goto_1

    .line 2089
    :cond_11
    const-string v5, "quick_launch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2098
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_12
    move v0, v3

    .line 2101
    goto/16 :goto_1

    :cond_13
    const-string v5, "sub_lcd_auto_lock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v3

    .line 2102
    goto/16 :goto_1

    .line 2103
    :cond_14
    const-string v5, "key_night_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v3

    .line 2104
    goto/16 :goto_1

    .line 2105
    :cond_15
    const-string v5, "key_backlight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2106
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

    .line 2109
    goto/16 :goto_1

    .line 2111
    :cond_17
    const-string v5, "display_battery_level"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v0, v2

    goto/16 :goto_1

    .line 2115
    :cond_18
    const-string v5, "edit_screen_capture"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2119
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

    .line 2128
    goto/16 :goto_1

    .line 2131
    :cond_19
    const-string v5, "power_saving_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2143
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    goto/16 :goto_1

    .line 2147
    :cond_1a
    const-string v5, "auto_adjust_touch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v0, v2

    goto/16 :goto_1

    .line 2151
    :cond_1b
    const-string v5, "notification_pulse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v0, v3

    .line 2152
    goto/16 :goto_1

    .line 2153
    :cond_1c
    const-string v5, "wifi_display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v3

    .line 2154
    goto/16 :goto_1

    .line 2160
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 2163
    :cond_1e
    return-object p1

    .line 2121
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

    .line 2585
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 2586
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 2588
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2590
    if-eqz v0, :cond_14

    .line 2591
    const-string v5, "dock_audio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 2656
    :goto_1
    if-eqz v0, :cond_12

    .line 2657
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2661
    goto :goto_0

    .line 2593
    :cond_0
    const-string v5, "dock_sounds"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2594
    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 2595
    goto :goto_1

    .line 2597
    :cond_2
    const-string v5, "cradle_enable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2598
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 2600
    goto :goto_1

    .line 2601
    :cond_3
    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 2603
    goto :goto_1

    .line 2605
    :cond_5
    const-string v5, "desk_home_screen_display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2606
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 2607
    goto :goto_1

    .line 2608
    :cond_6
    if-eqz v4, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    .line 2610
    goto :goto_1

    .line 2612
    :cond_8
    const-string v5, "ultrasonic_cane"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 2614
    goto :goto_1

    .line 2616
    :cond_9
    const-string v5, "ultrasonic_range"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v3

    .line 2618
    goto :goto_1

    .line 2620
    :cond_a
    const-string v5, "automatic_unlock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v0, v2

    goto :goto_1

    .line 2624
    :cond_b
    const-string v5, "sview_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2625
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2626
    goto :goto_1

    .line 2628
    :cond_c
    const-string v5, "select_info"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2629
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2630
    goto/16 :goto_1

    .line 2632
    :cond_d
    const-string v5, "audio_output"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 2639
    :cond_e
    const-string v5, "cover_note"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2640
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2641
    goto/16 :goto_1

    .line 2643
    :cond_f
    const-string v5, "cover_note_weather_unit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2644
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2645
    goto/16 :goto_1

    .line 2647
    :cond_10
    const-string v5, "audio_applications"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2648
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

    .line 2652
    goto/16 :goto_1

    .line 2659
    :cond_12
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 2662
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

    .line 2458
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2460
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2462
    if-eqz v0, :cond_b

    .line 2463
    const-string v4, "dormant_mode_help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 2489
    :goto_1
    if-eqz v0, :cond_9

    .line 2490
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2494
    goto :goto_0

    .line 2465
    :cond_0
    const-string v4, "disable_incoming_calls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2466
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

    .line 2468
    goto :goto_1

    .line 2470
    :cond_2
    const-string v4, "disable_notifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 2472
    :cond_3
    const-string v4, "disable_alarm_and_timer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 2476
    :cond_4
    const-string v4, "disable_led_indicator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2477
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 2479
    goto :goto_1

    .line 2481
    :cond_5
    const-string v4, "always"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 2483
    :cond_6
    const-string v4, "allowed_contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "allowed_list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2484
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

    .line 2485
    goto :goto_1

    .line 2492
    :cond_9
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2495
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

    .line 2539
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2541
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2543
    if-eqz v0, :cond_a

    .line 2544
    const-string v4, "incoming_call_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2545
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

    .line 2575
    :goto_1
    if-eqz v0, :cond_b

    .line 2576
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2580
    goto :goto_0

    .line 2548
    :cond_1
    const-string v4, "message_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2549
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2550
    :cond_2
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMessageCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 2551
    goto :goto_1

    .line 2554
    :cond_3
    const-string v4, "email_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 2556
    :cond_4
    const-string v4, "voice_mail_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2557
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

    .line 2558
    goto :goto_1

    .line 2559
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 2560
    goto :goto_1

    .line 2562
    :cond_7
    const-string v4, "alarm_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2564
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

    .line 2568
    goto :goto_1

    .line 2566
    :catch_0
    move-exception v0

    move v0, v3

    .line 2568
    goto :goto_1

    .line 2569
    :cond_8
    const-string v4, "schedule_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    goto :goto_1

    .line 2571
    :cond_9
    const-string v4, "unlock_screen_contents"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    move v0, v2

    goto/16 :goto_1

    .line 2578
    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2581
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
    .line 3206
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
    .line 2188
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2191
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2192
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 2193
    const-string v3, "clear_font"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2195
    const/4 v2, 0x1

    .line 2199
    :cond_0
    if-eqz v2, :cond_1

    .line 2200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2205
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

    .line 2209
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2213
    if-eqz v0, :cond_b

    .line 2214
    const-string v4, "glance_settings_summary"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 2236
    :goto_1
    if-eqz v0, :cond_9

    .line 2237
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2241
    goto :goto_0

    .line 2216
    :cond_0
    const-string v4, "glance_card_order"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 2217
    goto :goto_1

    .line 2218
    :cond_1
    const-string v4, "app_name_contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 2219
    goto :goto_1

    .line 2220
    :cond_2
    const-string v4, "app_name_email"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 2221
    goto :goto_1

    .line 2222
    :cond_3
    const-string v4, "app_name_gallery"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 2223
    goto :goto_1

    .line 2224
    :cond_4
    const-string v4, "app_name_message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 2225
    goto :goto_1

    .line 2226
    :cond_5
    const-string v4, "app_name_phone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 2227
    goto :goto_1

    .line 2228
    :cond_6
    const-string v4, "app_name_scrapbook"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 2229
    goto :goto_1

    .line 2230
    :cond_7
    const-string v4, "app_name_s_planner"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v3

    .line 2231
    goto :goto_1

    .line 2232
    :cond_8
    const-string v4, "app_name_video_editor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 2233
    goto :goto_1

    .line 2239
    :cond_9
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2242
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

    .line 2819
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2824
    new-instance v0, Landroid/speech/tts/TtsEngines;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 2825
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    move v4, v3

    .line 2827
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_15

    .line 2829
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2831
    if-eqz v0, :cond_16

    .line 2832
    const-string v5, "phone_language"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2833
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_16

    move v0, v2

    .line 2902
    :goto_2
    if-eqz v0, :cond_14

    .line 2903
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v4

    :goto_3
    move v4, v0

    .line 2907
    goto :goto_1

    :cond_0
    move v1, v3

    .line 2825
    goto :goto_0

    .line 2836
    :cond_1
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2837
    const-string v0, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2838
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 2839
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    const v5, 0x7f09083f

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(I)V

    move v0, v3

    .line 2840
    goto :goto_2

    :cond_2
    move v0, v2

    .line 2841
    goto :goto_2

    .line 2843
    :cond_3
    const-string v5, "handwriting_language"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2844
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 2845
    const/4 v5, 0x2

    if-ge v0, v5, :cond_16

    move v0, v2

    .line 2846
    goto :goto_2

    .line 2848
    :cond_4
    const-string v5, "current_input_method"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    goto :goto_2

    .line 2850
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

    .line 2858
    goto :goto_2

    :cond_7
    const-string v5, "recognizer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2859
    if-eqz v6, :cond_8

    if-eq v6, v2, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    .line 2861
    goto :goto_2

    .line 2863
    :cond_9
    const-string v5, "recognizer_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2864
    if-eqz v6, :cond_a

    move v0, v3

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 2866
    goto/16 :goto_2

    .line 2868
    :cond_b
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v0, v3

    goto/16 :goto_2

    .line 2869
    :cond_c
    const-string v5, "tts_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2870
    if-eqz v1, :cond_d

    move v0, v3

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 2874
    goto/16 :goto_2

    .line 2876
    :cond_e
    const-string v5, "tts_default_rate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2877
    if-nez v1, :cond_16

    move v0, v2

    .line 2878
    goto/16 :goto_2

    .line 2880
    :cond_f
    const-string v5, "tts_play_example"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2881
    if-nez v1, :cond_16

    move v0, v2

    .line 2882
    goto/16 :goto_2

    .line 2884
    :cond_10
    const-string v5, "pointer_speed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v3

    goto/16 :goto_2

    .line 2886
    :cond_11
    const-string v5, "vibrate_input_devices"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2888
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v7

    move v0, v3

    move v5, v3

    .line 2889
    :goto_4
    array-length v8, v7

    if-ge v0, v8, :cond_13

    .line 2890
    aget v8, v7, v0

    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    .line 2891
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

    .line 2889
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2897
    :cond_13
    if-nez v5, :cond_16

    move v0, v2

    .line 2898
    goto/16 :goto_2

    .line 2905
    :cond_14
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_3

    .line 2908
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
    .line 2246
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2249
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2250
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 2251
    const-string v3, "led_indicator_incoming_notification_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2252
    const/4 v2, 0x1

    .line 2255
    :cond_0
    if-eqz v2, :cond_1

    .line 2256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
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

    .line 3323
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 3325
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3327
    if-eqz v0, :cond_a

    .line 3328
    const-string v4, "location_toggle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 3378
    :goto_1
    if-eqz v0, :cond_8

    .line 3379
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3383
    goto :goto_0

    .line 3330
    :cond_0
    const-string v4, "location_e911"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 3332
    goto :goto_1

    .line 3334
    :cond_1
    const-string v4, "location_vzw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 3336
    goto :goto_1

    .line 3338
    :cond_2
    const-string v4, "location_vzw_gps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 3340
    goto :goto_1

    .line 3342
    :cond_3
    const-string v4, "location_vzw_network"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 3344
    goto :goto_1

    .line 3346
    :cond_4
    const-string v4, "location_gps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3349
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 3351
    goto :goto_1

    .line 3353
    :cond_5
    const-string v4, "location_network"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3358
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_1

    .line 3362
    :cond_6
    const-string v4, "location_history"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 3364
    goto :goto_1

    .line 3366
    :cond_7
    const-string v4, "key_my_place"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 3373
    goto :goto_1

    .line 3381
    :cond_8
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3384
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

    .line 1565
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1566
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1569
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1570
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 1572
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1574
    if-eqz v0, :cond_2a

    .line 1575
    const-string v4, "visiblepattern"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1576
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v4, 0x1

    if-eq v0, v4, :cond_2a

    move v0, v3

    .line 1792
    :goto_1
    if-eqz v0, :cond_28

    .line 1793
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1797
    goto :goto_0

    .line 1579
    :cond_0
    const-string v4, "owner_info_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1580
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1581
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

    .line 1588
    :cond_1
    if-ne v6, v3, :cond_2a

    .line 1589
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1590
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1597
    goto :goto_1

    .line 1600
    :cond_3
    const-string v4, "quick_note"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 1604
    :cond_4
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1605
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    .line 1607
    goto :goto_1

    .line 1609
    :cond_5
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1610
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1615
    if-eqz v0, :cond_2a

    move v0, v3

    .line 1616
    goto :goto_1

    .line 1618
    :cond_6
    const-string v4, "dualclock_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1619
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_7
    move v4, v3

    .line 1622
    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1623
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

    .line 1628
    :cond_8
    if-ne v6, v3, :cond_9

    move v4, v3

    :cond_9
    move v0, v4

    .line 1635
    goto/16 :goto_1

    :cond_a
    const-string v4, "clock_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1639
    if-ne v6, v3, :cond_2a

    move v0, v3

    .line 1640
    goto/16 :goto_1

    .line 1643
    :cond_b
    const-string v4, "lock_screen_date_and_year"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1647
    if-ne v6, v3, :cond_2a

    move v0, v3

    .line 1648
    goto/16 :goto_1

    .line 1651
    :cond_c
    const-string v4, "safetyzone_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v3

    .line 1652
    goto/16 :goto_1

    .line 1653
    :cond_d
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 1654
    :cond_e
    const-string v4, "with_circle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v0, v3

    .line 1655
    goto/16 :goto_1

    .line 1656
    :cond_f
    const-string v4, "lock_screen_options"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v3

    .line 1657
    goto/16 :goto_1

    .line 1658
    :cond_10
    const-string v4, "lock_screen_widget_options"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v2

    goto/16 :goto_1

    .line 1661
    :cond_11
    const-string v4, "lock_screen_short_or_camera_widget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1662
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v3

    .line 1664
    goto/16 :goto_1

    .line 1666
    :cond_12
    const-string v4, "lock_screen_clock_or_myprofile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v2

    goto/16 :goto_1

    .line 1670
    :cond_13
    const-string v4, "lock_screen_shortcut"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v3

    .line 1672
    goto/16 :goto_1

    .line 1677
    :cond_14
    const-string v4, "information_ticker"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1678
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1682
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

    .line 1692
    goto/16 :goto_1

    :cond_16
    const-string v4, "lock_screen_profile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1695
    if-nez v6, :cond_2a

    move v0, v3

    .line 1696
    goto/16 :goto_1

    .line 1698
    :cond_17
    const-string v4, "clock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v0, v3

    .line 1700
    goto/16 :goto_1

    .line 1702
    :cond_18
    const-string v4, "weather"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v0, v3

    .line 1707
    goto/16 :goto_1

    :cond_19
    const-string v4, "camera_short_cut"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v3

    .line 1713
    goto/16 :goto_1

    .line 1716
    :cond_1a
    const-string v4, "lock_after_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v0, v2

    goto/16 :goto_1

    .line 1717
    :cond_1b
    const-string v4, "lock_screen_shortcut_menu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1720
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

    .line 1724
    goto/16 :goto_1

    .line 1726
    :cond_1d
    const-string v4, "unlock_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v2

    goto/16 :goto_1

    .line 1734
    :cond_1e
    const-string v4, "ripple_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1735
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1736
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

    .line 1751
    goto/16 :goto_1

    :cond_20
    const-string v4, "ink_effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1752
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1753
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

    .line 1757
    goto/16 :goto_1

    .line 1765
    :cond_22
    const-string v4, "help_text"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1766
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1767
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

    .line 1771
    goto/16 :goto_1

    .line 1773
    :cond_24
    const-string v4, "say_your_wakeup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "set_wakeup_command"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1774
    :cond_25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 1775
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

    .line 1779
    goto/16 :goto_1

    .line 1781
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_SETTING_SET_WAKEUP_COMMAND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1783
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1784
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1786
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_2a

    move v0, v3

    .line 1787
    goto/16 :goto_1

    .line 1795
    :cond_28
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 1798
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

    .line 2942
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 2943
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2946
    if-eqz v0, :cond_e

    .line 2947
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 2948
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2949
    if-eqz v4, :cond_e

    move v0, v3

    .line 2999
    :goto_1
    if-eqz v0, :cond_c

    .line 3000
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3004
    goto :goto_0

    .line 2952
    :cond_0
    const-string v5, "pick_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2953
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    .line 2954
    goto :goto_1

    .line 2956
    :cond_1
    const-string v5, "double_tap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 2958
    goto :goto_1

    .line 2960
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

    .line 2962
    goto :goto_1

    .line 2964
    :cond_4
    const-string v5, "peek_view_albums_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 2966
    goto :goto_1

    .line 2968
    :cond_5
    const-string v5, "peek_chapter_preview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v3

    .line 2970
    goto :goto_1

    .line 2972
    :cond_6
    const-string v5, "tilt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 2976
    :cond_7
    const-string v5, "tilt_to_scroll_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    .line 2978
    goto :goto_1

    .line 2980
    :cond_8
    const-string v5, "pan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 2982
    goto :goto_1

    .line 2984
    :cond_9
    const-string v5, "pan_to_browse_image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 2988
    :cond_a
    const-string v5, "shake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v0, v3

    .line 2990
    goto/16 :goto_1

    .line 2992
    :cond_b
    const-string v5, "turn_over"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2993
    if-eqz v4, :cond_e

    move v0, v3

    .line 2994
    goto/16 :goto_1

    .line 3002
    :cond_c
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 3005
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

    .line 1505
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1506
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1508
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1510
    if-eqz v0, :cond_3

    .line 1511
    const-string v4, "toggle_rw_p2p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1512
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CMCC"

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 1532
    :goto_1
    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1537
    goto :goto_0

    .line 1516
    :cond_0
    const-string v4, "nfc_wallet_manager_sub"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 1528
    goto :goto_1

    .line 1535
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1538
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

    .line 1542
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 1543
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1545
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1547
    if-eqz v0, :cond_2

    .line 1548
    const-string v3, "allshare_device_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1551
    const/4 v0, 0x1

    .line 1555
    :goto_1
    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1560
    goto :goto_0

    .line 1558
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1561
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
    .line 3009
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3010
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3011
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3013
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3014
    const-string v3, "palm_swipe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3029
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3030
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3018
    :cond_1
    const-string v3, "palm_touch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3022
    const-string v3, "tap_and_twist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3024
    const/4 v2, 0x1

    goto :goto_1

    .line 3032
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3035
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

    .line 2499
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 2501
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2503
    if-eqz v0, :cond_7

    .line 2504
    const-string v4, "enable_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2505
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    .line 2529
    :goto_1
    if-eqz v0, :cond_8

    .line 2530
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2534
    goto :goto_0

    .line 2508
    :cond_0
    const-string v4, "power_saving_cpu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 2510
    :cond_1
    const-string v4, "power_saving_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 2512
    :cond_2
    const-string v4, "power_saving_background_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2513
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2514
    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 2518
    goto :goto_1

    .line 2520
    :cond_4
    const-string v4, "power_saving_haptic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2521
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

    .line 2523
    goto :goto_1

    .line 2525
    :cond_6
    const-string v4, "power_saving_tips"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    move v0, v2

    goto :goto_1

    .line 2532
    :cond_8
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2535
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

    .line 3278
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 3280
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3282
    if-eqz v0, :cond_8

    .line 3283
    const-string v4, "backup_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 3313
    :goto_1
    if-eqz v0, :cond_6

    .line 3314
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3318
    goto :goto_0

    .line 3285
    :cond_0
    const-string v4, "configure_account"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 3287
    :cond_1
    const-string v4, "auto_restore"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 3289
    :cond_2
    const-string v4, "data_transfer_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 3291
    goto :goto_1

    .line 3294
    :cond_3
    const-string v4, "master_clear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 3296
    :cond_4
    const-string v4, "settings_reset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3297
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 3298
    goto :goto_1

    .line 3300
    :cond_5
    const-string v4, "collect_diagnostics"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3303
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

    .line 3308
    :goto_3
    if-nez v0, :cond_8

    move v0, v3

    .line 3309
    goto :goto_1

    .line 3305
    :catch_0
    move-exception v0

    move v0, v2

    .line 3306
    goto :goto_3

    .line 3316
    :cond_6
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3319
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
    .line 3232
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 3233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3234
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3235
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3236
    const-string v3, "pref_add_samsung_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3267
    :cond_0
    :goto_1
    if-eqz v2, :cond_e

    .line 3268
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3238
    :cond_1
    const-string v3, "samsung_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3239
    const/4 v2, 0x1

    goto :goto_1

    .line 3240
    :cond_2
    const-string v3, "pref_key_verify_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3241
    const/4 v2, 0x1

    goto :goto_1

    .line 3242
    :cond_3
    const-string v3, "pref_storage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3243
    const/4 v2, 0x1

    goto :goto_1

    .line 3244
    :cond_4
    const-string v3, "pref_dataSync"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3245
    const/4 v2, 0x1

    goto :goto_1

    .line 3246
    :cond_5
    const-string v3, "pref_backUp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3247
    const/4 v2, 0x1

    goto :goto_1

    .line 3248
    :cond_6
    const-string v3, "pref_restore"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3249
    const/4 v2, 0x1

    goto :goto_1

    .line 3250
    :cond_7
    const-string v3, "pref_set_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3251
    const/4 v2, 0x1

    goto :goto_1

    .line 3252
    :cond_8
    const-string v3, "dropbox_sync_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3253
    const/4 v2, 0x1

    goto :goto_1

    .line 3254
    :cond_9
    const-string v3, "pref_usage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3255
    const/4 v2, 0x1

    goto :goto_1

    .line 3256
    :cond_a
    const-string v3, "pref_photos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3257
    const/4 v2, 0x1

    goto :goto_1

    .line 3258
    :cond_b
    const-string v3, "pref_videos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3259
    const/4 v2, 0x1

    goto :goto_1

    .line 3260
    :cond_c
    const-string v3, "pref_musics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3261
    const/4 v2, 0x1

    goto :goto_1

    .line 3262
    :cond_d
    const-string v3, "pref_document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3263
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3270
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3274
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

    .line 3040
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    move v1, v2

    .line 3042
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 3044
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3046
    if-eqz v0, :cond_18

    .line 3047
    const-string v5, "air_motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 3144
    :goto_1
    if-eqz v0, :cond_16

    .line 3145
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 3149
    goto :goto_0

    .line 3054
    :cond_0
    const-string v5, "motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_1

    .line 3062
    :cond_1
    const-string v5, "surface"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    goto :goto_1

    .line 3069
    :cond_2
    const-string v5, "g_sensor_cal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_1

    .line 3073
    :cond_3
    const-string v5, "air_motion_indicator"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v2

    goto :goto_1

    .line 3075
    :cond_4
    const-string v5, "quick_glance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v2

    goto :goto_1

    .line 3077
    :cond_5
    const-string v5, "air_scroll"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_1

    .line 3079
    :cond_6
    const-string v5, "air_turn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_1

    .line 3081
    :cond_7
    const-string v5, "air_move"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v2

    goto :goto_1

    .line 3083
    :cond_8
    const-string v5, "air_pin"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 3085
    goto :goto_1

    .line 3087
    :cond_9
    const-string v5, "air_call_accept"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 3089
    :cond_a
    const-string v5, "pick_up_to_call_out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3090
    if-eqz v4, :cond_18

    move v0, v3

    .line 3092
    goto :goto_1

    .line 3094
    :cond_b
    const-string v5, "pick_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3095
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v3

    .line 3097
    goto/16 :goto_1

    .line 3099
    :cond_c
    const-string v5, "double_tap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v0, v3

    .line 3102
    goto/16 :goto_1

    .line 3104
    :cond_d
    const-string v5, "tilt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v2

    goto/16 :goto_1

    .line 3108
    :cond_e
    const-string v5, "tilt_to_scroll_list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v3

    .line 3111
    goto/16 :goto_1

    .line 3113
    :cond_f
    const-string v5, "pan"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v0, v3

    .line 3116
    goto/16 :goto_1

    .line 3118
    :cond_10
    const-string v5, "pan_to_browse_image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v2

    goto/16 :goto_1

    .line 3122
    :cond_11
    const-string v5, "shake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v0, v3

    .line 3124
    goto/16 :goto_1

    .line 3126
    :cond_12
    const-string v5, "turn_over"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3127
    if-eqz v4, :cond_18

    move v0, v3

    .line 3128
    goto/16 :goto_1

    .line 3130
    :cond_13
    const-string v5, "palm_swipe"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v2

    goto/16 :goto_1

    .line 3134
    :cond_14
    const-string v5, "palm_touch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v0, v2

    goto/16 :goto_1

    .line 3138
    :cond_15
    const-string v5, "tap_and_twist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    .line 3140
    goto/16 :goto_1

    .line 3147
    :cond_16
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 3150
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

    .line 3410
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 3411
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

    .line 3414
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1b

    .line 3416
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3418
    if-eqz v0, :cond_1c

    .line 3419
    const-string v6, "encryption"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3420
    if-eqz v1, :cond_3

    .line 3421
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3423
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_3
    move v0, v3

    .line 3527
    :goto_4
    if-eqz v0, :cond_1a

    .line 3528
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v5

    :goto_5
    move v5, v0

    .line 3532
    goto :goto_2

    :cond_1
    move v1, v3

    .line 3410
    goto :goto_0

    :cond_2
    move v4, v3

    .line 3411
    goto :goto_1

    .line 3427
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_3

    :cond_3
    move v0, v2

    .line 3443
    goto :goto_4

    .line 3445
    :cond_4
    const-string v6, "sdEncpref"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3446
    new-instance v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 3448
    invoke-virtual {v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    .line 3449
    goto :goto_4

    .line 3454
    :cond_5
    const-string v6, "external_default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v3

    goto :goto_4

    .line 3456
    :cond_6
    const-string v6, "external_full"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v3

    goto :goto_4

    .line 3458
    :cond_7
    const-string v6, "external_file_exclude"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v3

    goto :goto_4

    .line 3460
    :cond_8
    const-string v6, "remote_control"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3461
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    move v0, v2

    .line 3465
    goto :goto_4

    .line 3469
    :cond_9
    const-string v6, "SIMAlert"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3470
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    .line 3471
    goto :goto_4

    .line 3475
    :cond_a
    const-string v6, "go_to_samsungdive"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v3

    goto :goto_4

    .line 3479
    :cond_b
    const-string v6, "sim_lock_settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3480
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3483
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

    .line 3488
    goto/16 :goto_4

    .line 3489
    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    move v0, v2

    .line 3490
    goto/16 :goto_4

    .line 3495
    :cond_f
    const-string v6, "ip_firewall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v0, v2

    .line 3497
    goto/16 :goto_4

    .line 3499
    :cond_10
    const-string v6, "show_password"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v3

    goto/16 :goto_4

    .line 3501
    :cond_11
    const-string v6, "device_admin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3502
    if-eqz v1, :cond_12

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    move v0, v2

    .line 3503
    goto/16 :goto_4

    .line 3505
    :cond_13
    const-string v6, "toggle_install_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 3506
    if-eqz v1, :cond_14

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_14
    move v0, v2

    .line 3507
    goto/16 :goto_4

    .line 3509
    :cond_15
    const-string v6, "toggle_verify_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3510
    if-eqz v1, :cond_16

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_16
    move v0, v2

    .line 3511
    goto/16 :goto_4

    .line 3513
    :cond_17
    const-string v6, "trusted_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 3514
    if-nez v1, :cond_1c

    move v0, v2

    .line 3515
    goto/16 :goto_4

    .line 3517
    :cond_18
    const-string v6, "credentials_install_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 3518
    if-nez v1, :cond_1c

    move v0, v2

    .line 3519
    goto/16 :goto_4

    .line 3521
    :cond_19
    const-string v6, "reset_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3522
    if-nez v1, :cond_1c

    move v0, v2

    .line 3523
    goto/16 :goto_4

    .line 3530
    :cond_1a
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_5

    .line 3533
    :cond_1b
    return-object p1

    :cond_1c
    move v0, v3

    goto/16 :goto_4

    .line 3423
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
    .line 3154
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3157
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3158
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3159
    const-string v3, "smartscreen_stay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3185
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3186
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3163
    :cond_1
    const-string v3, "smartscreen_rotation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3167
    const-string v3, "smartscreen_pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3173
    const-string v3, "smartscreen_scroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3191
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

    .line 2265
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    .line 2267
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2268
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_0
    move v2, v4

    :goto_0
    move v5, v4

    .line 2272
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_27

    .line 2274
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2276
    if-eqz v1, :cond_25

    .line 2277
    const-string v7, "sound_mode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    .line 2448
    :cond_1
    :goto_2
    if-eqz v1, :cond_26

    .line 2449
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v5

    :goto_3
    move v5, v1

    .line 2453
    goto :goto_1

    .line 2280
    :cond_2
    const-string v7, "folder_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2281
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_3
    move v1, v3

    .line 2282
    goto :goto_2

    .line 2283
    :cond_4
    const-string v7, "haptic_feedback"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2284
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_5
    move v1, v3

    .line 2285
    goto :goto_2

    .line 2298
    :cond_6
    const-string v7, "haptic_feedback_switch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2299
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_7
    move v1, v3

    .line 2302
    goto :goto_2

    .line 2303
    :cond_8
    const-string v7, "emergency_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 2305
    if-eq v9, v1, :cond_28

    move v1, v3

    .line 2322
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v3

    .line 2323
    goto :goto_2

    .line 2324
    :cond_9
    const-string v7, "pen_deatachment_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2325
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    goto :goto_2

    :cond_a
    move v1, v3

    .line 2327
    goto :goto_2

    .line 2329
    :cond_b
    const-string v7, "dock_audio_media_enabled"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v1, v3

    .line 2330
    goto :goto_2

    .line 2331
    :cond_c
    const-string v7, "ring_volume"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v1, v4

    goto/16 :goto_2

    .line 2333
    :cond_d
    const-string v7, "vibration_feedback_intensity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2334
    if-nez v2, :cond_25

    move v1, v3

    .line 2335
    goto/16 :goto_2

    .line 2341
    :cond_e
    const-string v7, "phone_profile"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2342
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

    .line 2346
    goto/16 :goto_2

    .line 2348
    :cond_f
    const-string v7, "musicfx"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2349
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2350
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2352
    const/16 v8, 0x200

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2354
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v9, :cond_25

    move v1, v3

    .line 2355
    goto/16 :goto_2

    .line 2357
    :cond_10
    const-string v7, "download_ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2358
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2362
    const-string v7, "Ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    move v1, v3

    .line 2363
    goto/16 :goto_2

    .line 2365
    :cond_11
    const-string v7, "ds_ring_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v1, v3

    .line 2369
    goto/16 :goto_2

    .line 2371
    :cond_12
    const-string v7, "ringtone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2372
    if-nez v6, :cond_25

    move v1, v3

    .line 2373
    goto/16 :goto_2

    .line 2378
    :cond_13
    const-string v7, "ringtone2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2379
    if-nez v6, :cond_14

    move v1, v3

    .line 2380
    goto/16 :goto_2

    :cond_14
    move v1, v3

    .line 2385
    goto/16 :goto_2

    .line 2387
    :cond_15
    const-string v7, "phone_vibration"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2388
    if-nez v2, :cond_16

    move v1, v3

    .line 2389
    goto/16 :goto_2

    .line 2391
    :cond_16
    if-eqz v6, :cond_17

    move v1, v4

    goto/16 :goto_2

    :cond_17
    move v1, v3

    .line 2392
    goto/16 :goto_2

    .line 2394
    :cond_18
    const-string v7, "notification_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    move v1, v4

    goto/16 :goto_2

    .line 2399
    :cond_19
    const-string v7, "vibrate_when_ringing"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2400
    if-eqz v2, :cond_1a

    if-nez v6, :cond_25

    :cond_1a
    move v1, v3

    .line 2401
    goto/16 :goto_2

    .line 2403
    :cond_1b
    const-string v7, "dtmf_tone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move v1, v4

    goto/16 :goto_2

    .line 2407
    :cond_1c
    const-string v7, "sound_effects"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v1, v4

    goto/16 :goto_2

    .line 2411
    :cond_1d
    const-string v7, "lock_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v1, v4

    goto/16 :goto_2

    .line 2415
    :cond_1e
    const-string v7, "gps_notification_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move v1, v3

    .line 2417
    goto/16 :goto_2

    .line 2419
    :cond_1f
    const-string v7, "autohaptic_settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2420
    if-nez v2, :cond_20

    move v1, v3

    .line 2421
    goto/16 :goto_2

    .line 2423
    :cond_20
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    :cond_21
    move v1, v3

    .line 2426
    goto/16 :goto_2

    .line 2429
    :cond_22
    const-string v7, "dock_audio"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    move v1, v3

    .line 2434
    goto/16 :goto_2

    :cond_23
    const-string v7, "dock_sounds"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v1, v3

    .line 2439
    goto/16 :goto_2

    :cond_24
    const-string v7, "my_sound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_25
    move v1, v4

    goto/16 :goto_2

    .line 2451
    :cond_26
    add-int/lit8 v1, v5, 0x1

    goto/16 :goto_3

    .line 2454
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
    .line 3388
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3389
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 3390
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3391
    .local v2, remove_flag:Z
    if-eqz v1, :cond_0

    .line 3392
    const-string v3, "user_nickname"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3393
    const/4 v2, 0x1

    .line 3398
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 3399
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3394
    :cond_1
    const-string v3, "user_owner_info"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3395
    const/4 v2, 0x1

    goto :goto_1

    .line 3401
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3404
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

    .line 2912
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 2913
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v2, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2914
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2916
    .local v3, remove_flag:Z
    if-eqz v2, :cond_1

    .line 2917
    const-string v4, "voice_input_control_incomming_calls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2918
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2919
    :cond_0
    const/4 v3, 0x1

    .line 2930
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 2931
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2921
    :cond_2
    const-string v4, "voice_input_control_chatonv"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2922
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isChatONVPhone()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v5

    .line 2924
    .local v0, chatONVHide1:Z
    :goto_2
    if-eq v0, v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isChatOnVInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2925
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 2922
    .end local v0           #chatONVHide1:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2933
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2936
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

    .line 2167
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2169
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 2171
    if-eqz v0, :cond_2

    .line 2172
    const-string v3, "download_wallpaper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2173
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2174
    const-string v3, "Wallpaper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2175
    const/4 v0, 0x1

    .line 2178
    :goto_1
    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2183
    goto :goto_0

    .line 2181
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2184
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

    if-ge v9, v1, :cond_3b

    .line 1276
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v1, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 1278
    if-eqz v1, :cond_3c

    .line 1279
    const-string v12, "parent"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v1, v3

    .line 1495
    :cond_0
    :goto_6
    if-eqz v1, :cond_3a

    .line 1496
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v9

    :goto_7
    move v9, v1

    .line 1500
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

    if-nez v1, :cond_3c

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

    if-eqz v1, :cond_40

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

    if-eqz v1, :cond_3c

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
    if-nez v1, :cond_3c

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

    if-eqz v1, :cond_3c

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

    if-nez v1, :cond_3c

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

    if-eqz v1, :cond_3c

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
    if-nez v8, :cond_3c

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

    if-eqz v1, :cond_3c

    :cond_1b
    if-eqz v10, :cond_3c

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
    if-nez v10, :cond_3c

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

    if-eq v1, v3, :cond_3c

    move v1, v3

    .line 1374
    goto/16 :goto_6

    .line 1376
    :cond_21
    const-string v12, "SPR"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const-string v12, "VMU"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const-string v12, "BST"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const-string v12, "XAS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

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
    if-eqz v11, :cond_3c

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

    if-nez v1, :cond_3f

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
    if-eqz v5, :cond_3e

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
    if-eqz v5, :cond_3c

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

    if-eqz v1, :cond_3d

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
    const-string v12, "smart_bonding_settings"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 1487
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/android/settings/Utils;->isTFGBlockEnableSmartBonding()Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_38
    move v1, v3

    .line 1489
    goto/16 :goto_6

    .line 1491
    :cond_39
    const-string v12, "manage_mobile_plan"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v3

    .line 1492
    goto/16 :goto_6

    .line 1498
    :cond_3a
    add-int/lit8 v1, v9, 0x1

    goto/16 :goto_7

    .line 1501
    :cond_3b
    return-object p1

    :cond_3c
    move v1, v4

    goto/16 :goto_6

    :cond_3d
    move v1, v4

    goto :goto_b

    :cond_3e
    move v1, v3

    goto/16 :goto_6

    :cond_3f
    move v1, v4

    goto/16 :goto_9

    :cond_40
    move v1, v4

    goto/16 :goto_8
.end method

.method public static callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x7f0b0615

    const/4 v4, 0x0

    const-wide/32 v2, 0x7f0b0610

    const/4 v5, 0x1

    .line 4111
    .line 4113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 4117
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4118
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "settings_listui"

    invoke-static {v6, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 4120
    :goto_0
    if-eqz v4, :cond_2

    .line 4121
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.GridSettings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4132
    :goto_1
    const v4, 0x10008000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4134
    invoke-static {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v4

    .line 4136
    if-nez v4, :cond_7

    .line 4137
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 4139
    const-string v8, "Safety assistance"

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4147
    :goto_2
    const-string v2, "extra_from_search"

    invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4148
    const-string v2, "extra_parent_type"

    invoke-virtual {v7, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4149
    const-string v2, "extra_tab_id"

    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4150
    const-string v2, "extra_header_id"

    invoke-virtual {v7, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4151
    const-string v0, "extra_setting_value"

    iget v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4153
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4234
    :cond_0
    :goto_3
    return v5

    :cond_1
    move v4, v5

    .line 4119
    goto :goto_0

    .line 4123
    :cond_2
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4126
    :cond_3
    if-eqz v6, :cond_4

    .line 4127
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4129
    :cond_4
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4141
    :cond_5
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v0, v2

    .line 4142
    goto :goto_2

    .line 4144
    :cond_6
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 4154
    :cond_7
    if-ne v4, v5, :cond_c

    .line 4157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4158
    iget-object v8, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4160
    const-string v8, "Safety assistance"

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4168
    :goto_4
    new-instance v2, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v2, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4169
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    .line 4170
    iget-object v2, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v2

    .line 4172
    const-string v3, "extra_from_search"

    invoke-virtual {v7, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4173
    const-string v3, "extra_parent_type"

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4174
    const-string v3, "extra_tab_id"

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4175
    const-string v2, "extra_header_id"

    invoke-virtual {v7, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4177
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4179
    const-string v3, "extra_parent_preference_key"

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    const-string v3, "extra_setting_value"

    iget v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4181
    const-string v3, "extra_link_key_array"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4182
    const-wide/32 v3, 0x7f0b063f

    cmp-long v3, v0, v3

    if-eqz v3, :cond_8

    const-wide/32 v3, 0x7f0b063b

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    .line 4184
    :cond_8
    const-string v0, "extra_second_fragment_bundle_key"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4189
    :goto_5
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 4162
    :cond_9
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v0, v2

    .line 4163
    goto :goto_4

    .line 4165
    :cond_a
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    .line 4186
    :cond_b
    const-string v0, "extra_fragment_bundle_key"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_5

    .line 4190
    :cond_c
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 4195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4196
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4198
    new-instance v6, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v6, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4199
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    .line 4200
    :goto_6
    invoke-static {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_d

    .line 4201
    iget-object v8, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4202
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    goto :goto_6

    .line 4205
    :cond_d
    const-string v6, "Call settings"

    iget-object v8, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4211
    :goto_7
    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 4213
    const-string v6, "extra_from_search"

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4214
    const-string v6, "extra_parent_type"

    invoke-virtual {v7, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4215
    const-string v4, "extra_tab_id"

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4216
    const-string v0, "extra_header_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4219
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4221
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4224
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    const-string v2, "extra_setting_value"

    iget v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4226
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4227
    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4229
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4230
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

    .line 4208
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
    .line 4270
    const/4 v0, 0x0

    .line 4271
    .local v0, retTabIndex:I
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4272
    const-string v1, "Connections"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4273
    const/4 v0, 0x0

    .line 4283
    :cond_0
    :goto_0
    return v0

    .line 4274
    :cond_1
    const-string v1, "Device"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4275
    const/4 v0, 0x1

    goto :goto_0

    .line 4276
    :cond_2
    const-string v1, "Controls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4277
    const/4 v0, 0x2

    goto :goto_0

    .line 4278
    :cond_3
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4279
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4239
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 4241
    if-nez v1, :cond_1

    .line 4242
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

    .line 4265
    :cond_0
    :goto_0
    return v0

    .line 4245
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4246
    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4259
    :cond_2
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 4261
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    .line 4262
    invoke-static {v0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getParentType(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 4263
    const/4 v0, 0x1

    goto :goto_0

    .line 4250
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

    .line 4265
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 3966
    const/4 v0, 0x1

    .line 3967
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3968
    if-eqz v1, :cond_1

    .line 3969
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

    .line 3975
    :cond_0
    const/4 v0, 0x0

    .line 3978
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3943
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3945
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3962
    :goto_0
    return v1

    .line 3948
    :catch_0
    move-exception v2

    .line 3954
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3957
    :catch_1
    move-exception v1

    .line 3962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3923
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3925
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 3926
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3929
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

    .line 3938
    :cond_0
    :goto_0
    return v1

    .line 3935
    :catch_0
    move-exception v1

    .line 3938
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

    .line 3994
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

    .line 3996
    :cond_0
    :goto_0
    return v1

    .line 3995
    :catch_0
    move-exception v0

    .line 3996
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 3
    .parameter "packagename"

    .prologue
    const/4 v1, 0x0

    .line 4097
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4099
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 4100
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4101
    const/4 v1, 0x1

    .line 4105
    :cond_0
    :goto_0
    return v1

    .line 4103
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
    .line 4048
    const-string v0, "system_update_settings"

    .line 4049
    const-string v0, "software_update_settings"

    .line 4050
    const-string v0, "software_update_settings_no_subtree"

    .line 4051
    const-string v0, "system_update_settings_na_gsm"

    .line 4052
    const-string v0, "system_update_settings_vzw"

    .line 4053
    const-string v0, "system_update_settings_spr"

    .line 4054
    const-string v0, "no_software_update_settings"

    .line 4055
    const-string v0, "com.sec.android.fotaclient"

    .line 4057
    const-string v0, "system_update_settings"

    .line 4058
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 4059
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4061
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4062
    const-string v0, "software_update_settings_no_subtree"

    .line 4093
    :cond_0
    :goto_0
    return-object v0

    .line 4064
    :cond_1
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 4069
    :cond_2
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4071
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4072
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4074
    :cond_3
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 4079
    :cond_4
    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4080
    :cond_5
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4081
    :cond_6
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4082
    const-string v0, "system_update_settings_vzw"

    goto :goto_0

    .line 4083
    :cond_7
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4086
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4087
    const-string v0, "TFN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4088
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 4085
    :cond_8
    const-string v0, "system_update_settings_spr"

    goto :goto_0

    .line 4090
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
    const v1, 0x7f0b05f2

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
    const v1, 0x7f0b05fd

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
    const v1, 0x7f0b05ff

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
    const v1, 0x7f0b0602

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
    const v1, 0x7f0b0609

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
    const v1, 0x7f0b060a

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
    const v1, 0x7f0b062b

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
    const v1, 0x7f0b062c

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
    const v1, 0x7f0b0631

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
    const v1, 0x7f0b060c

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
    const v1, 0x7f0b060d

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
    const v1, 0x7f0b0611

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
    const v1, 0x7f0b0612

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
    const v1, 0x7f0b0617

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
    const v1, 0x7f0b0618

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
    const v1, 0x7f0b0619

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
    const v1, 0x7f0b061d

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
    const v1, 0x7f0b0624

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
    const v1, 0x7f0b0659

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
    const v1, 0x7f0b065a

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
    const v1, 0x7f0b0620

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
    const v1, 0x7f0b0621

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
    const v1, 0x7f0b0622

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
    const v1, 0x7f0b0633

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
    const v1, 0x7f0b05eb

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
    const v1, 0x7f0b05ec

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
    const v1, 0x7f0b05f8

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
    const v1, 0x7f0b063a

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
    const v1, 0x7f0b063e

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
    const v1, 0x7f0b0635

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
    const v1, 0x7f0b063f

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
    const v1, 0x7f0b0642

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
    const v1, 0x7f0b05ef

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    const v0, 0x7f0700eb

    .line 1069
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    const v1, 0x7f0b05f6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    const v0, 0x7f0700be

    goto :goto_0

    .line 942
    :cond_2
    const v1, 0x7f0b05f0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    const v0, 0x7f0700e2

    goto :goto_0

    .line 944
    :cond_3
    const v1, 0x7f0b05f1

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
    const v1, 0x7f0b05f2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 947
    const v0, 0x7f0700cd

    goto :goto_0

    .line 948
    :cond_5
    const v1, 0x7f0b05f8

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
    const v1, 0x7f0b05fd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    const v0, 0x7f0700ed

    goto :goto_0

    .line 952
    :cond_7
    const v1, 0x7f0b05ff

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
    const v1, 0x7f0b0602

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
    const v1, 0x7f0b0604

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 957
    const v0, 0x7f0700e6

    goto/16 :goto_0

    .line 960
    :cond_a
    const v1, 0x7f0b0665

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
    const v1, 0x7f0b060d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 967
    const v0, 0x7f0700c4

    goto/16 :goto_0

    .line 968
    :cond_c
    const v1, 0x7f0b060a

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
    const v1, 0x7f0b0629

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
    const v1, 0x7f0b060c

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
    const v1, 0x7f0b0609

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const v1, 0x7f0b062b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 980
    const v0, 0x7f0700da

    goto/16 :goto_0

    .line 981
    :cond_11
    const v1, 0x7f0b062c

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
    const v1, 0x7f0b062d

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
    const v1, 0x7f0b0631

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
    const v1, 0x7f0b0619

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
    const v1, 0x7f0b0611

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
    const v1, 0x7f0b0614

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
    const v1, 0x7f0b061d

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
    const v1, 0x7f0b0624

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 999
    const v0, 0x7f0700d7

    goto/16 :goto_0

    .line 1000
    :cond_19
    const v1, 0x7f0b0612

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
    const v1, 0x7f0b0625

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
    const v1, 0x7f0b061c

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
    const v1, 0x7f0b0651

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
    const v1, 0x7f0b0657

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
    const v1, 0x7f0b0623

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
    const v1, 0x7f0b0659

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
    const v1, 0x7f0b065a

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
    const v1, 0x7f0b0622

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
    const v1, 0x7f0b0621

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1019
    const v0, 0x7f0700c1

    goto/16 :goto_0

    .line 1024
    :cond_23
    const v1, 0x7f0b0608

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
    const v1, 0x7f0b0633

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
    const v1, 0x7f0b05eb

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
    const v1, 0x7f0b05ec

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
    const v1, 0x7f0b0635

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
    const v1, 0x7f0b0637

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
    const v1, 0x7f0b0618

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
    const v1, 0x7f0b0639

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
    const v1, 0x7f0b063a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1041
    const v0, 0x7f0700d5

    goto/16 :goto_0

    .line 1042
    :cond_2c
    const v1, 0x7f0b063b

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
    const v1, 0x7f0b0617

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
    const v1, 0x7f0b063c

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
    const v1, 0x7f0b063d

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
    const v1, 0x7f0b063e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    const v0, 0x7f0b063f

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
    const v0, 0x7f0b0642

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
    const v0, 0x7f0700c0

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
    const v0, 0x7f0700c3

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
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

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
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

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
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

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
    const-wide/32 v11, 0x7f0b05fc

    const-wide/32 v9, 0x7f0b05fa

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
    const-wide/32 v6, 0x7f0b0609

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
    const-wide/32 v6, 0x7f0b0651

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 387
    const-wide/32 v6, 0x7f0b0657

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    move v2, v1

    .line 929
    goto :goto_0

    .line 393
    :cond_3
    const-wide/32 v6, 0x7f0b0659

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 399
    const-wide/32 v6, 0x7f0b065a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 405
    const-wide/32 v6, 0x7f0b0629

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
    const-wide/32 v6, 0x7f0b064f

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 416
    const-wide/32 v6, 0x7f0b05e7

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
    const-wide/32 v6, 0x7f0b0665

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 424
    const-wide/32 v6, 0x7f0b0618

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
    const-wide/32 v6, 0x7f0b0666

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    const-wide/32 v6, 0x7f0b066c

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 429
    const-wide/32 v6, 0x7f0b05ef

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
    const-wide/32 v6, 0x7f0b05ee

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 438
    const-wide/32 v6, 0x7f0b0664

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 443
    const-wide/32 v6, 0x7f0b05f0

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
    const-wide/32 v6, 0x7f0b05f1

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
    const-wide/32 v6, 0x7f0b0614

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
    const-wide/32 v6, 0x7f0b05f7

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
    const-wide/32 v6, 0x7f0b063b

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
    const-wide/32 v6, 0x7f0b05fb

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
    const-wide/32 v6, 0x7f0b061f

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 518
    const-wide/32 v6, 0x7f0b0620

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 526
    const-wide/32 v6, 0x7f0b065a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 532
    const-wide/32 v6, 0x7f0b0622

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 536
    const-wide/32 v6, 0x7f0b0623

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
    const-wide/32 v6, 0x7f0b0658

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
    const-wide/32 v6, 0x7f0b0621

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 553
    const-wide/32 v6, 0x7f0b060c

    cmp-long v6, v4, v6

    if-nez v6, :cond_13

    .line 554
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 557
    :cond_13
    const-wide/32 v6, 0x7f0b0671

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 561
    const-wide/32 v6, 0x7f0b062f

    cmp-long v6, v4, v6

    if-nez v6, :cond_14

    .line 562
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 565
    :cond_14
    const-wide/32 v6, 0x7f0b060e

    cmp-long v6, v4, v6

    if-nez v6, :cond_15

    .line 566
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 570
    :cond_15
    const-wide/32 v6, 0x7f0b0617

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 574
    const-wide/32 v6, 0x7f0b05e6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 596
    const-wide/32 v6, 0x7f0b063c

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 600
    const-wide/32 v6, 0x7f0b05e8

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 602
    const-wide/32 v6, 0x7f0b0625

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 606
    const-wide/32 v6, 0x7f0b061c

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 610
    const-wide/32 v6, 0x7f0b0672

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 615
    const-wide/32 v6, 0x7f0b05f9

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 620
    const-wide/32 v6, 0x7f0b0608

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 624
    const-wide/32 v6, 0x7f0b063a

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
    const-wide/32 v6, 0x7f0b05eb

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
    const-wide/32 v6, 0x7f0b0641

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
    const-wide/32 v6, 0x7f0b0640

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
    const-wide/32 v6, 0x7f0b066a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 678
    const-wide/32 v6, 0x7f0b060f

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
    const-wide/32 v6, 0x7f0b05ff

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
    const-wide/32 v6, 0x7f0b0601

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
    const-wide/32 v6, 0x7f0b0603

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 712
    const-wide/32 v6, 0x7f0b0604

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 717
    const-wide/32 v6, 0x7f0b0605

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
    const-wide/32 v6, 0x7f0b0607

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
    const-wide/32 v6, 0x7f0b066b

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
    const-wide/32 v6, 0x7f0b063f

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
    const-wide/32 v6, 0x7f0b05e9

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
    const-wide/32 v6, 0x7f0b0676

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
    const-wide/32 v6, 0x7f0b0613

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    .line 762
    const-string v0, "ro.multisim.simslotcount"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 770
    :cond_24
    const-wide/32 v6, 0x7f0b066f

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
    const-wide/32 v6, 0x7f0b05f4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 779
    const-wide/32 v6, 0x7f0b05f5

    cmp-long v0, v4, v6

    if-nez v0, :cond_26

    .line 780
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 784
    :cond_26
    const-wide/32 v6, 0x7f0b05f2

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
    const-wide/32 v6, 0x7f0b0608

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 805
    const-wide/32 v6, 0x7f0b0663

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 810
    const-wide/32 v6, 0x7f0b063b

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 814
    const-wide/32 v6, 0x7f0b0667

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 818
    const-wide/32 v6, 0x7f0b05fd

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
    const-wide/32 v6, 0x7f0b0673

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 830
    const-wide/32 v6, 0x7f0b0616

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 834
    const-wide/32 v6, 0x7f0b0674

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 836
    const-wide/32 v6, 0x7f0b0611

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 840
    const-wide/32 v6, 0x7f0b0636

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 844
    const-wide/32 v6, 0x7f0b0612

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 849
    const-wide/32 v6, 0x7f0b0610

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
    const-wide/32 v6, 0x7f0b0615

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
    const-wide/32 v6, 0x7f0b0637

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 868
    const-wide/32 v6, 0x7f0b0668

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 872
    const-wide/32 v6, 0x7f0b0624

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    .line 873
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isVoiceControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 877
    :cond_2e
    const-wide/32 v6, 0x7f0b066e

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 881
    const-wide/32 v6, 0x7f0b0670

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 885
    const-wide/32 v6, 0x7f0b0602

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
    const-wide/32 v6, 0x7f0b061e

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
    const-wide/32 v6, 0x7f0b061a

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
    const-wide/32 v6, 0x7f0b0600

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
    const-wide/32 v6, 0x7f0b0633

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 912
    const-wide/32 v6, 0x7f0b060b

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
    const-wide/32 v6, 0x7f0b05f8

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
    const-wide/32 v6, 0x7f0b05f3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 924
    const-wide/32 v6, 0x7f0b0631

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
