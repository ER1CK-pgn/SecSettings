.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mApplyButton:Landroid/widget/Button;

.field private mApplyButtonSelected:Z

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mEnableDisableButton:Landroid/widget/Button;

.field private mEnableDisableButtonSelected:Z

.field private mEncryptDefault:Z

.field private mEncryptExcludeMedia:Z

.field private mEncryptFull:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mParent:Landroid/app/Activity;

.field private mSDLayout:Landroid/widget/LinearLayout;

.field private mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mValueChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 70
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 71
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 104
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/encryption/CryptSDCardSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    return p1
.end method

.method private applyEncryptionUpdates()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 528
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-nez v1, :cond_5

    .line 529
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    if-ne v1, v4, :cond_0

    .line 530
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    .line 531
    invoke-direct {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 556
    :goto_0
    return-void

    .line 533
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 534
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    :goto_3
    invoke-direct {v0, v1, v2, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 538
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    const-string v1, "Enforcing"

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 539
    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 540
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 541
    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->showEncryptionOptionConfirm(Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    .line 534
    .end local v0           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    .line 543
    .restart local v0       #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->showFullEncryptionOption(Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    .line 547
    .end local v0           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v1

    if-eq v1, v4, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    if-ne v1, v4, :cond_7

    .line 548
    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 549
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 550
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 551
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    .line 554
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto :goto_0
.end method

.method private dipToFixel(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private disableAllUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    const-string v0, "Disable All UI"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 645
    return-void
.end method

.method private enableAllUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 638
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 639
    return-void
.end method

.method private initVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    const-string v0, "initialize Variables"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 662
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 663
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 664
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 665
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 666
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 667
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 668
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 669
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    .line 670
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    .line 671
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 672
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 673
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 217
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 218
    .local v0, adminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 219
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 221
    .local v2, isDisabledByAdmin:Z
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 223
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 226
    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    .line 227
    const/4 v2, 0x1

    .line 230
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 286
    .local v0, pol:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, state:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 289
    const/4 v2, 0x1

    .line 291
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 78
    const-string v0, "CryptKeeperSDSettings"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method private restorePrefs()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 235
    const-string v4, "restorePrefs"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 237
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_5

    .line 238
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v4, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    const-string v4, "adminStart"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, adminStart:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 242
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 256
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #adminStart:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 257
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v4, :cond_1

    .line 258
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 262
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v8, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 264
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v9, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 268
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 269
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_8

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 271
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_9

    move v4, v5

    :goto_4
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 272
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_a

    move v4, v5

    :goto_5
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 273
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_b

    move v4, v5

    :goto_6
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 275
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_3

    .line 276
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 277
    const-string v4, "Disabled by Admin"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 280
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 281
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 282
    return-void

    .line 246
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v0           #action:Ljava/lang/String;
    :cond_5
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_6
    move v4, v6

    .line 267
    goto :goto_1

    :cond_7
    move v4, v6

    .line 268
    goto :goto_2

    :cond_8
    move v4, v6

    .line 269
    goto :goto_3

    :cond_9
    move v4, v6

    .line 271
    goto :goto_4

    :cond_a
    move v4, v6

    .line 272
    goto :goto_5

    :cond_b
    move v4, v6

    .line 273
    goto :goto_6
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 619
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 620
    const/4 v2, 0x0

    .line 624
    :goto_0
    return v2

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 624
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f090cd3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f090cd4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showEncryptionOptionConfirm(Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4
    .parameter

    .prologue
    .line 570
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 571
    const-class v0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 572
    const v0, 0x7f090cc1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 573
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 578
    return-void
.end method

.method private showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowFinalConfirm - enc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fullEnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " excludeMedia : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 649
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 650
    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 651
    const v0, 0x7f090cd2

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 652
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 655
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 658
    return-void
.end method

.method private showFullEncryptionOption(Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4
    .parameter

    .prologue
    .line 559
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 560
    const-class v0, Lcom/android/settings/encryption/CryptSDCardFullOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 561
    const v0, 0x7f090cc1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 562
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 567
    return-void
.end method

.method private startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 679
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f0901eb

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 681
    const/4 v1, 0x1

    .line 686
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 683
    :cond_0
    const-string v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePrefUI()V
    .locals 20

    .prologue
    .line 295
    const-string v16, "updatePrefUI"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 297
    const-string v16, "parent activity is null, cannot display UI, removing fragment"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 299
    .local v6, mgr:Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->popBackStack()V

    .line 525
    .end local v6           #mgr:Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 304
    .local v7, res:Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v2, b:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v3, desc:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 307
    .local v9, serviceBusy:Z
    const/4 v8, 0x1

    .line 309
    .local v8, satisfyPasswordQuality:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-nez v16, :cond_12

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f09077c

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v0

    const/16 v17, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 324
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    const-string v16, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 325
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v0

    const/16 v17, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 334
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v16, v0

    const-string v17, "device_policy"

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 336
    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v16

    if-nez v16, :cond_13

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f090cb0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 342
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v0

    const/16 v17, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 345
    :cond_5
    const v16, 0x7f090cbe

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const/4 v8, 0x0

    .line 372
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v5

    .line 374
    .local v5, error:I
    sparse-switch v5, :sswitch_data_0

    .line 422
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, state:Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 424
    const-string v16, "removed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, "bad_removal"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 425
    :cond_7
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    const v16, 0x7f090cd5

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 459
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-eqz v16, :cond_23

    .line 462
    const v16, 0x7f090cdc

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 481
    :cond_a
    const v16, 0x7f090ce2

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v16, "\n-------------------------------\n"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 486
    const v16, 0x7f090cc7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 491
    const v16, 0x7f090cca

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v16, v0

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 496
    :cond_e
    const-string v16, "-------------------------------\n"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v16

    if-eqz v16, :cond_24

    .line 498
    const v16, 0x7f090ce4

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 505
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    const v16, 0x7f090cdb

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_10
    const-string v16, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 511
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    const v16, 0x7f090cec

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_11
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_25

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 316
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #error:I
    .end local v14           #state:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f09077b

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 348
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v15

    .line 349
    .local v15, status:I
    if-eqz v15, :cond_15

    .line 350
    const-string v16, "Service is busy: Disabling UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 351
    const/4 v9, 0x1

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 353
    const v16, 0x7f090cce

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    .line 360
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 356
    :cond_14
    const v16, 0x7f090ccf

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 362
    :cond_15
    const/4 v9, 0x0

    .line 363
    const-string v16, "Service is not busy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 365
    const v16, 0x7f090cd6

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 377
    .end local v15           #status:I
    .restart local v5       #error:I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/dirEncryption/DirEncryptionManager;->getAdditionalSpaceRequired()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4090

    div-double v12, v16, v18

    .line 378
    .local v12, spaceInMB:D
    const-wide/high16 v16, 0x4090

    div-double v10, v12, v16

    .line 380
    .local v10, spaceInGB:D
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "spaceInMB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 381
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "spaceInGB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 383
    const-wide/high16 v16, 0x3ff0

    cmpg-double v16, v12, v16

    if-gez v16, :cond_16

    .line 384
    const-wide/high16 v12, 0x3ff0

    .line 387
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 388
    const-wide/high16 v16, 0x3ff0

    cmpg-double v16, v10, v16

    if-gez v16, :cond_17

    .line 389
    const v16, 0x7f090d0e

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :goto_8
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 391
    :cond_17
    const v16, 0x7f090d0c

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 394
    :cond_18
    const-wide/high16 v16, 0x3ff0

    cmpg-double v16, v10, v16

    if-gez v16, :cond_19

    .line 395
    const v16, 0x7f090d0f

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 397
    :cond_19
    const v16, 0x7f090d0d

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 405
    .end local v10           #spaceInGB:D
    .end local v12           #spaceInMB:D
    :sswitch_1
    const v16, 0x7f090d10

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 411
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 412
    const v16, 0x7f090d10

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :goto_9
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 414
    :cond_1a
    const v16, 0x7f090d11

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 428
    .restart local v14       #state:Ljava/lang/String;
    :cond_1b
    const-string v16, "removed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 429
    const-string v16, "checking"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    if-nez v9, :cond_8

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    .line 432
    const-string v16, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 433
    const v16, 0x7f090ceb

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v16, v0

    if-nez v16, :cond_1d

    const-string v16, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 439
    :cond_1d
    const v16, 0x7f090cd8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4

    .line 441
    :cond_1f
    const v16, 0x7f090ce7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 444
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v16, v0

    if-nez v16, :cond_21

    const-string v16, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 445
    :cond_21
    const v16, 0x7f090cd7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_a

    .line 447
    :cond_22
    const v16, 0x7f090ce6

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 466
    :cond_23
    const v16, 0x7f090cd9

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_9

    .line 470
    const v16, 0x7f090cdd

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    const-string v16, "Enforcing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 473
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    const v16, 0x7f090cea

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 500
    :cond_24
    const v16, 0x7f090ce3

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 523
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 582
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 584
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 591
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    :goto_3
    invoke-direct {v1, v2, v3, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 605
    .local v1, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    .line 601
    .end local v1           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    goto :goto_2

    :cond_4
    const/4 v4, 0x7

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 126
    iput-object p0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;

    .line 127
    const-string v0, "onAttach"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 132
    const v1, 0x7f040055

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 134
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 137
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 142
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    .line 147
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$3;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayout:Landroid/widget/LinearLayout;

    .line 174
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 175
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    :cond_1
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 181
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 188
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, state:Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "SD card is unmounted, mount SD card"

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->mountVolume()Z

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v1, :cond_1

    .line 198
    new-instance v1, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 199
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const v2, 0x7f090cd0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const v2, 0x7f090cd1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    goto :goto_0
.end method
