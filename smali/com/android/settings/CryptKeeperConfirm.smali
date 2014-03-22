.class public Lcom/android/settings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFastEncryptionChecker:Landroid/view/View$OnClickListener;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 102
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$1;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$2;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 120
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    const v5, 0x7f04004f

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 141
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00e6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 143
    .local v2, fastEncryption:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/enterprise/RestrictionPolicy;->isFastEncryptionAllowed(Z)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 145
    invoke-virtual {v2, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 146
    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 147
    const-string v5, "sys.google_encryption"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090cbf

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090cc0

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const-string v5, "security.mdpp"

    const-string v6, "None"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, MDPP_PROPERTY:Ljava/lang/String;
    const-string v5, "Enforcing"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 159
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    .local v4, textView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v1, desc:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0901e0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090cea

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v1           #desc:Ljava/lang/StringBuilder;
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 169
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v5

    .line 149
    .end local v0           #MDPP_PROPERTY:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
