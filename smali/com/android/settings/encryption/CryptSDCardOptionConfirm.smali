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

.field private mSdCardEnc2Messages:Landroid/widget/TextView;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mSdCardLine1:Landroid/view/View;

.field private mSdCardLine2:Landroid/view/View;

.field private mSdCardSelectedOptionMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->DEBUG:Z

    .line 37
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 38
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 42
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    .line 48
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
    .line 201
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->runKeyguardConfirmation(I)Z

    .line 202
    return-void
.end method

.method private dipToFixel(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 54
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

    .line 124
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method private restoreUI()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, fullText:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, optionText:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v1, fullText2:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 138
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/16 v5, 0x190

    invoke-direct {p0, v5}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->dipToFixel(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 150
    const v4, 0x7f090d3b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    return-void

    .line 156
    :cond_1
    const v4, 0x7f090d1e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_6

    .line 161
    :cond_2
    const v4, 0x7f090d1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v4, v7, :cond_3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090d00

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_3
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_4

    .line 172
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090d03

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v4, v7, :cond_5

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_7

    .line 177
    :cond_5
    const v4, 0x7f090d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 163
    :cond_6
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 179
    :cond_7
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 240
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 241
    const/4 v2, 0x0

    .line 245
    :goto_0
    return v2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f090d0c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f090d0d

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
    .line 189
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 190
    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 191
    const v0, 0x7f090d0b

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 192
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 215
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v1, v2, v3, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 226
    .local v1, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    .line 78
    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
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

    .line 83
    const v0, 0x7f040053

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    .line 85
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 87
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 97
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 98
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 99
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 100
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 101
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

    .line 103
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v0, v3, :cond_1

    .line 104
    :cond_0
    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "Read Policy failure from getArguments()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;-><init>(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 116
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->disableUI()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->restoreUI()V

    goto :goto_0
.end method
