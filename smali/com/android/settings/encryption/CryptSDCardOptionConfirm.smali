.class public Lcom/android/settings/encryption/CryptSDCardOptionConfirm;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardOptionConfirm.java"


# instance fields
.field private DEBUG:Z

.field private mButtonApply:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mEnableDisableButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mSDLayout:Landroid/widget/LinearLayout;

.field private mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->DEBUG:Z

    .line 36
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 37
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 41
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->applyEncryptionUpdates()V

    return-void
.end method

.method private applyEncryptionUpdates()V
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->runKeyguardConfirmation(I)Z

    .line 177
    return-void
.end method

.method private dipToFixel(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private disableUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 115
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method

.method private restoreUI()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/16 v4, 0xa

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, fullText:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->dipToFixel(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 130
    const v2, 0x7f090d02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    return-void

    .line 136
    :cond_1
    const v2, 0x7f090ce5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v2, v6, :cond_3

    .line 141
    :cond_2
    const v2, 0x7f090ce2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "\n-------------------------------\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v2, v5, :cond_4

    .line 146
    const v2, 0x7f090cc7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v2, v6, :cond_5

    .line 150
    const v2, 0x7f090cca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v2, v6, :cond_7

    .line 155
    :cond_6
    const-string v2, "-------------------------------\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const v2, 0x7f090ce3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 215
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 216
    const/4 v2, 0x0

    .line 220
    :goto_0
    return v2

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 220
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

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

.method private showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 165
    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 166
    const v0, 0x7f090cd2

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 167
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 190
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v1, v2, v3, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 201
    .local v1, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    .line 73
    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 78
    const v0, 0x7f040055

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    .line 80
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 82
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 88
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 89
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 90
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 91
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 92
    const-string v0, "CryptSDCardOptionConfirm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MM Option - enc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fullEnc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " excludeMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v0, v3, :cond_1

    .line 95
    :cond_0
    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "Read Policy failure from getArguments()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;-><init>(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->disableUI()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->restoreUI()V

    goto :goto_0
.end method
