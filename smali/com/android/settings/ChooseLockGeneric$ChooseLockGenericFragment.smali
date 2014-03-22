.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field private static isFacewithVoice:Z


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mWaitingForConfirmation:Z

.field private mWmanagerConnected:Landroid/database/ContentObserver;

.field private oldPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 159
    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 155
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    return-void
.end method

.method private allowedForBlock(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 790
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 786
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 18
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 689
    .local v3, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "lockscreen.biometric_weak_fallback"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 691
    .local v9, onlyShowFallback:Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "Block"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 692
    .local v5, isBlock:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v15}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v14

    .line 696
    .local v14, weakBiometricAvailable:Z
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 697
    .local v8, mUm:Landroid/os/UserManager;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v12

    .line 698
    .local v12, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v11, 0x1

    .line 700
    .local v11, singleUser:Z
    :goto_0
    const/4 v6, 0x1

    .line 703
    .local v6, isVoiceTalkAvailable:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.vlingo.midas"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_1
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_21

    .line 712
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 713
    .local v10, pref:Landroid/preference/Preference;
    instance-of v15, v10, Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_2

    move-object v15, v10

    .line 714
    check-cast v15, Landroid/preference/PreferenceScreen;

    invoke-virtual {v15}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 715
    .local v7, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 716
    .local v2, enabled:Z
    const/4 v13, 0x1

    .line 717
    .local v13, visible:Z
    const-string v15, "unlock_set_off"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 718
    if-gtz p1, :cond_4

    const/4 v2, 0x1

    .line 719
    :goto_3
    move v13, v11

    .line 766
    :cond_0
    :goto_4
    if-eqz v13, :cond_1

    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    if-nez v5, :cond_1e

    .line 767
    :cond_1
    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 711
    .end local v2           #enabled:Z
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #visible:Z
    :cond_2
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 698
    .end local v4           #i:I
    .end local v6           #isVoiceTalkAvailable:Z
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v11           #singleUser:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 704
    .restart local v6       #isVoiceTalkAvailable:Z
    .restart local v11       #singleUser:Z
    :catch_0
    move-exception v1

    .line 705
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    goto :goto_1

    .line 718
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #enabled:Z
    .restart local v4       #i:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v10       #pref:Landroid/preference/Preference;
    .restart local v13       #visible:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 720
    :cond_5
    const-string v15, "unlock_set_none"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 721
    if-gtz p1, :cond_6

    const/4 v2, 0x1

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 724
    :cond_7
    const-string v15, "unlock_set_motion"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 725
    if-gtz p1, :cond_8

    const/4 v2, 0x1

    :goto_7
    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 728
    :cond_9
    const-string v15, "unlock_set_biometric_weak"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 729
    const v15, 0x8000

    move/from16 v0, p1

    if-le v0, v15, :cond_a

    move-object/from16 v0, p2

    iget-boolean v15, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v15, :cond_b

    :cond_a
    const/4 v2, 0x1

    .line 731
    :goto_8
    move v13, v14

    goto :goto_4

    .line 729
    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    .line 732
    :cond_c
    const-string v15, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 733
    const v15, 0x8000

    move/from16 v0, p1

    if-gt v0, v15, :cond_d

    const/4 v2, 0x1

    .line 734
    :goto_9
    if-eqz v14, :cond_e

    if-eqz v6, :cond_e

    const/4 v13, 0x1

    .line 736
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v15, :cond_0

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    :goto_b
    and-int/2addr v2, v15

    goto/16 :goto_4

    .line 733
    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    .line 734
    :cond_e
    const/4 v13, 0x0

    goto :goto_a

    .line 737
    :cond_f
    const/4 v15, 0x0

    goto :goto_b

    .line 740
    :cond_10
    const-string v15, "unlock_set_signature"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 741
    const v15, 0x9000

    move/from16 v0, p1

    if-gt v0, v15, :cond_11

    const/4 v2, 0x1

    .line 742
    :goto_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v15}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v13

    goto/16 :goto_4

    .line 741
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 743
    :cond_12
    const-string v15, "unlock_set_pattern"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 744
    const/high16 v15, 0x1

    move/from16 v0, p1

    if-gt v0, v15, :cond_13

    const/4 v2, 0x1

    :goto_d
    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    .line 745
    :cond_14
    const-string v15, "unlock_set_fingerprint"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 746
    const v15, 0x41000

    move/from16 v0, p1

    if-gt v0, v15, :cond_15

    const/4 v2, 0x1

    .line 747
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    .line 750
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 751
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 746
    :cond_15
    const/4 v2, 0x0

    goto :goto_e

    .line 755
    :cond_16
    const-string v15, "unlock_set_smart"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 756
    const/high16 v15, 0x1

    move/from16 v0, p1

    if-gt v0, v15, :cond_17

    const/4 v2, 0x1

    :goto_f
    goto/16 :goto_4

    :cond_17
    const/4 v2, 0x0

    goto :goto_f

    .line 758
    :cond_18
    const-string v15, "unlock_set_pin"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 759
    const/high16 v15, 0x2

    move/from16 v0, p1

    if-gt v0, v15, :cond_19

    const/4 v2, 0x1

    :goto_10
    goto/16 :goto_4

    :cond_19
    const/4 v2, 0x0

    goto :goto_10

    .line 760
    :cond_1a
    const-string v15, "unlock_set_cac_pin"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 761
    const/high16 v15, 0x7

    move/from16 v0, p1

    if-gt v0, v15, :cond_1b

    const/4 v2, 0x1

    .line 762
    :goto_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v13

    goto/16 :goto_4

    .line 761
    :cond_1b
    const/4 v2, 0x0

    goto :goto_11

    .line 763
    :cond_1c
    const-string v15, "unlock_set_password"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 764
    const/high16 v15, 0x6

    move/from16 v0, p1

    if-gt v0, v15, :cond_1d

    const/4 v2, 0x1

    :goto_12
    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x0

    goto :goto_12

    .line 768
    :cond_1e
    if-eqz v13, :cond_1f

    if-eqz v9, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForBlock(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    if-eqz v5, :cond_20

    .line 769
    :cond_1f
    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 770
    :cond_20
    if-nez v2, :cond_2

    .line 771
    const v15, 0x7f09022e

    invoke-virtual {v10, v15}, Landroid/preference/Preference;->setSummary(I)V

    .line 772
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 776
    .end local v2           #enabled:Z
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v13           #visible:Z
    :cond_21
    return-void
.end method

.method private getCacChosen()Z
    .locals 1

    .prologue
    .line 1034
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getSignatureIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 827
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 828
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0901ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 837
    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 840
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 841
    return-object v1
.end method

.method private setCacChosen(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1030
    sput-boolean p1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 1031
    return-void
.end method

.method private updatePreferencesOrFinish()V
    .locals 14

    .prologue
    const v13, 0x7f090236

    const v12, 0x7f09022f

    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 450
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "lockscreen.password_type"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 451
    .local v6, quality:I
    if-ne v6, v9, :cond_e

    .line 453
    const-string v8, "minimum_quality"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 454
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v10}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 455
    .local v0, allowBiometric:Llibcore/util/MutableBoolean;
    invoke-direct {p0, v6, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v6

    .line 456
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 457
    .local v5, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 458
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 460
    :cond_0
    const v8, 0x7f0700b2

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 463
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v8, :cond_1

    .line 464
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 466
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 467
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, mText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_8

    .line 469
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 471
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 527
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 528
    .local v2, isFallback:Z
    if-nez v2, :cond_2

    .line 536
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 537
    .local v7, root:Landroid/preference/PreferenceScreen;
    const-string v8, "unlock_set_motion"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 538
    const-string v8, "unlock_set_motion"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 541
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 542
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 543
    const-string v8, "unlock_set_fingerprint"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 546
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 547
    const-string v8, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    .line 554
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v8, :cond_d

    .line 555
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, v11}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x7

    if-eq v6, v8, :cond_c

    .line 557
    const/high16 v8, 0x4

    invoke-direct {p0, v8, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 568
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #isFallback:Z
    .end local v4           #mText:Ljava/lang/String;
    .end local v5           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v7           #root:Landroid/preference/PreferenceScreen;
    :goto_1
    return-void

    .line 473
    .restart local v0       #allowBiometric:Llibcore/util/MutableBoolean;
    .restart local v4       #mText:Ljava/lang/String;
    .restart local v5       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_motion_tilt_to_unlock"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7

    .line 475
    const v8, 0x7f090e3a

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 478
    :cond_7
    const v8, 0x7f090230

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 481
    :cond_8
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_face_with_voice"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 484
    .local v3, isfacevalue:I
    if-ne v3, v11, :cond_9

    .line 486
    const v8, 0x7f0901fb

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 489
    :cond_9
    const v8, 0x7f090231

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 491
    .end local v3           #isfacevalue:I
    :cond_a
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 493
    const v8, 0x7f090232

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 495
    :cond_b
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 522
    invoke-virtual {p0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 498
    :sswitch_0
    const v8, 0x7f090233

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    goto/16 :goto_0

    .line 501
    :sswitch_1
    const v8, 0x7f091631

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    goto/16 :goto_0

    .line 504
    :sswitch_2
    const v8, 0x7f090202

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 505
    goto/16 :goto_0

    .line 508
    :sswitch_3
    const v8, 0x7f090234

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 509
    goto/16 :goto_0

    .line 513
    :sswitch_4
    invoke-virtual {p0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    goto/16 :goto_0

    .line 517
    :sswitch_5
    const v8, 0x7f09021f

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 518
    goto/16 :goto_0

    .line 559
    .restart local v2       #isFallback:Z
    .restart local v7       #root:Landroid/preference/PreferenceScreen;
    :cond_c
    invoke-direct {p0, v6, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    goto/16 :goto_1

    .line 562
    :cond_d
    invoke-direct {p0, v6, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    goto/16 :goto_1

    .line 566
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #isFallback:Z
    .end local v4           #mText:Ljava/lang/String;
    .end local v5           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v7           #root:Landroid/preference/PreferenceScreen;
    :cond_e
    invoke-virtual {p0, v6, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 495
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x41000 -> :sswitch_1
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_2
    .end sparse-switch
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 586
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 587
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 588
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 589
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 592
    if-eqz p2, :cond_2

    .line 593
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 601
    .end local p1
    :goto_1
    return p1

    .line 593
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 595
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 607
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 608
    move p1, v0

    .line 610
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 5
    .parameter "quality"

    .prologue
    const/high16 v4, 0x2

    .line 622
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, p1

    .line 638
    .end local p1
    .local v1, quality:I
    :goto_0
    return v1

    .line 626
    .end local v1           #quality:I
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v0

    .line 627
    .local v0, encrypted:Z
    if-eqz v0, :cond_2

    .line 629
    if-ge p1, v4, :cond_1

    const/high16 p1, 0x5

    .line 632
    :cond_1
    if-ge p1, v4, :cond_2

    .line 633
    const/high16 p1, 0x2

    :cond_2
    move v1, p1

    .line 638
    .end local p1
    .restart local v1       #quality:I
    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 2
    .parameter "quality"

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 673
    .local v0, is3lmActiveAdmin:Z
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    const/high16 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 675
    const/high16 p1, 0x2

    .line 679
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1026
    const v0, 0x7f090c14

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 421
    const-string v0, "ChooseLockGeneric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 424
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 437
    :goto_0
    return-void

    .line 426
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 430
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 431
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 177
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 178
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "confirm_credentials"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    .local v0, confirmCredentials:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 184
    if-nez v0, :cond_6

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 188
    :cond_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 190
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    .line 194
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 195
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 196
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 199
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 203
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_7

    .line 204
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 216
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_5

    .line 217
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 220
    return-void

    :cond_6
    move v2, v4

    .line 184
    goto :goto_0

    .line 205
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_4

    .line 206
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 208
    .local v1, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 209
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 210
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 212
    :cond_8
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 383
    .local v4, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 385
    .local v3, onlyShowFallback:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Block"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 387
    .local v1, isBlock:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 389
    .local v5, voiceFallback:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.signature_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 392
    .local v2, isSignature:Z
    const-string v6, "ChooseLockGeneric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateView : onlyShowFallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceFallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0401e2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, header:Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 413
    .end local v0           #header:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v4

    .line 398
    :cond_1
    if-eqz v3, :cond_0

    .line 399
    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f04001f

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 402
    .restart local v0       #header:Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 404
    .end local v0           #header:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0401e2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 406
    .restart local v0       #header:Landroid/view/View;
    if-eqz v2, :cond_3

    move-object v6, v0

    .line 407
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_3
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string v0, "ChooseLockGeneric"

    const-string v1, "set smart lock off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 231
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 284
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const v4, 0x8000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 292
    const v3, 0x16058

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 295
    const-string v3, "unlock_set_motion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 298
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockMotion;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 299
    const-string v4, "confirm_credentials"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    if-eqz v2, :cond_0

    .line 302
    const/16 v1, 0x65

    invoke-virtual {p0, v3, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 376
    :goto_0
    return v0

    .line 305
    :cond_0
    const/high16 v1, 0x200

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 311
    :cond_1
    const-string v3, "unlock_set_off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 314
    :cond_2
    const-string v3, "unlock_set_none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_motion_tilt_to_unlock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 320
    :cond_3
    const-string v3, "unlock_set_biometric_weak"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    invoke-virtual {p0, v4, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 323
    :cond_4
    const-string v3, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    .line 325
    invoke-virtual {p0, v4, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 327
    :cond_5
    const-string v3, "unlock_set_signature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 328
    const v2, 0x9000

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 330
    :cond_6
    const-string v3, "unlock_set_pattern"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 331
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 333
    :cond_7
    const-string v3, "unlock_set_pin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 334
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 338
    :cond_8
    const-string v3, "unlock_set_cac_pin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 339
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 340
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v2

    if-ne v2, v0, :cond_a

    .line 342
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceConnectedWithCACCard()Z

    move-result v2

    if-ne v2, v0, :cond_9

    .line 344
    const-string v2, "ChooseLockGeneric"

    const-string v3, "BT paired"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/high16 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 347
    :cond_9
    const-string v1, "ChooseLockGeneric"

    const-string v2, "BT not paired"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/BluetoothPairingWithCac;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 349
    const-string v2, "CAC_PAIRING"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 356
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->showCardNotRegisteredDialog()V

    goto/16 :goto_0

    .line 361
    :cond_b
    const-string v3, "unlock_set_fingerprint"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 362
    const v2, 0x41000

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 365
    :cond_c
    const-string v3, "unlock_set_smart"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 366
    const/high16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 370
    :cond_d
    const-string v3, "unlock_set_password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 371
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 374
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wmanager_connected"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 243
    :cond_0
    const-string v2, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On resuming generic activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceConnectedWithCACCard()Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 246
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_1

    .line 247
    const/high16 v2, 0x7

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 253
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "turn-on"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    .local v1, isBlockTurnOn:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Block"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 256
    .local v0, isBlock:Z
    if-eqz v1, :cond_4

    .line 257
    const/high16 v2, 0x9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 264
    .end local v0           #isBlock:Z
    .end local v1           #isBlockTurnOn:Z
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 266
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v2, :cond_3

    .line 267
    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 272
    :cond_3
    return-void

    .line 258
    .restart local v0       #isBlock:Z
    .restart local v1       #isBlockTurnOn:Z
    :cond_4
    if-eqz v0, :cond_2

    .line 259
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v11, 0x200

    const/4 v0, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 855
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 861
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Block"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 863
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "lockscreen.signature_fallback"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 866
    invoke-direct {p0, p1, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v5

    .line 868
    const-string v1, "ChooseLockGeneric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnlockMethodAndFinish : quality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isFallback : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/high16 v1, 0x7

    if-ne v5, v1, :cond_3

    .line 872
    const-string v1, "ChooseLockGeneric"

    const-string v2, "Device already paired with CAC card "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 874
    if-ge v1, v0, :cond_14

    .line 877
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 878
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 879
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v0, "confirm_credentials"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v0

    if-ne v0, v10, :cond_1

    .line 886
    const-string v0, "choose_cac_pin"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 887
    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 891
    const-string v0, "lockscreen.password_old"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    :cond_2
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 895
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1022
    :goto_1
    return-void

    .line 900
    :cond_3
    const/high16 v1, 0x2

    if-lt v5, v1, :cond_8

    const/high16 v1, 0x6

    if-gt v5, v1, :cond_8

    const v1, 0x41000

    if-eq v5, v1, :cond_8

    .line 903
    const-string v1, "ChooseLockGeneric"

    const-string v6, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_NUMERIC"

    invoke-static {v1, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 905
    if-ge v1, v0, :cond_13

    .line 908
    :goto_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 909
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    .line 910
    const-string v7, "lockscreen.password_type"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    const-string v5, "lockscreen.password_min"

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v0, "confirm_credentials"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    const-string v0, "Block"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 921
    const-string v0, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 925
    const-string v0, "lockscreen.password_old"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    :cond_5
    if-eqz v2, :cond_7

    .line 929
    if-eqz v4, :cond_6

    .line 930
    const/16 v0, 0x67

    invoke-virtual {p0, v6, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 932
    :cond_6
    const/16 v0, 0x65

    invoke-virtual {p0, v6, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 936
    :cond_7
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 937
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 940
    :cond_8
    const/high16 v0, 0x1

    if-ne v5, v0, :cond_c

    .line 941
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v5, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 942
    const-string v1, "key_lock_method"

    const-string v5, "pattern"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 946
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    const-string v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 950
    const-string v1, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockscreen.biometric_weak_with_voice_fallback : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 953
    const-string v1, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    :cond_9
    if-eqz v2, :cond_b

    .line 957
    if-eqz v4, :cond_a

    .line 958
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 960
    :cond_a
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 964
    :cond_b
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 965
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 968
    :cond_c
    const v0, 0x41000

    if-ne v5, v0, :cond_d

    .line 969
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 970
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : PASSWORD_QUALITY_FINGERPRINT "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_0
    const-string v0, "com.android.settings.ChooseLockFingerprint"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 974
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 975
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 977
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 978
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 980
    :cond_d
    const v0, 0x8000

    if-ne v5, v0, :cond_f

    .line 981
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_BIOMETRIC_WEAK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    if-nez v0, :cond_e

    .line 984
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 986
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockFaceWarning;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 988
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 998
    :goto_3
    sput-boolean v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    goto/16 :goto_1

    .line 991
    :cond_e
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 993
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockFaceWarning;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 994
    const-string v1, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 999
    :cond_f
    const/high16 v0, 0x9

    if-ne v5, v0, :cond_10

    .line 1000
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_SMARTUNLOCK:"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1003
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockBLock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1004
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1005
    const-string v1, "Block"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1008
    :cond_10
    const v0, 0x9000

    if-ne v5, v0, :cond_11

    .line 1009
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1010
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSignatureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1011
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1012
    :cond_11
    if-nez v5, :cond_12

    .line 1013
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1016
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1017
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_1

    .line 1020
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto/16 :goto_2

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method

.method public wManagerChanged()V
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wmanager_connected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 572
    .local v1, state:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 580
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v2, "unlock_set_smart"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
