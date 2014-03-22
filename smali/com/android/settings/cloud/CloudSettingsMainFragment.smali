.class public Lcom/android/settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isBackupAppAvailable:Z

.field private isDropboxAvailable:Z

.field private isQuotaStorageAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsConnected:Z

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefDocument:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefMusics:Landroid/preference/Preference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressTimer:Landroid/os/CountDownTimer;

.field private mQuotaStorage:Landroid/preference/Preference;

.field private mRestore:Landroid/preference/Preference;

.field private mSettings:Lcom/android/settings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private mValidationStatus:I

.field private mVerifySamsungAccount:Landroid/preference/Preference;

.field public processAction:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field toastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 77
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 188
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 193
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    .line 202
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    .line 214
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 1125
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V

    return-void
.end method

.method private addSamsungAccount()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 335
    .local v9, samsungAccount:[Landroid/accounts/Account;
    if-eqz v9, :cond_0

    .line 336
    array-length v0, v9

    if-nez v0, :cond_0

    .line 338
    const-string v8, "com.osp.app.signin"

    .line 339
    .local v8, accountFilterType:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 349
    .end local v8           #accountFilterType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1246
    :cond_1
    return-void
.end method

.method private getLinkAccountSummary()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, summaryText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v1, :cond_1

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f091444

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v1, v4}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f091445

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f091446

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f091448

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f091447

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09145b

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_1
    return-object v0

    .line 679
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    .line 682
    :cond_3
    const-string v1, ""

    goto/16 :goto_1

    .line 685
    :cond_4
    const-string v1, ""

    goto/16 :goto_2

    .line 688
    :cond_5
    const-string v1, ""

    goto :goto_3
.end method

.method private getPreferencesReference()V
    .locals 11

    .prologue
    const v10, 0x7f091452

    const v9, 0x7f091451

    const v8, 0x7f091454

    const v6, 0x7f091450

    const/4 v7, 0x0

    .line 433
    const-string v4, "category_samsungservices"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 434
    const-string v4, "category_dropbox"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 435
    const-string v4, "pref_add_samsung_account"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    .line 436
    const-string v4, "pref_dataSync"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 437
    const-string v4, "pref_storage"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    .line 438
    const-string v4, "pref_backUp"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 439
    const-string v4, "pref_restore"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    .line 440
    const-string v4, "samsung_account"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 441
    const-string v4, "dropbox_sync_account"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 442
    const-string v4, "pref_set_account"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 443
    const-string v4, "pref_usage"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 444
    const-string v4, "pref_photos"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 445
    const-string v4, "pref_videos"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 446
    const-string v4, "pref_musics"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    .line 447
    const-string v4, "pref_document"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    .line 448
    const-string v4, "pref_key_verify_account"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    .line 449
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 450
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 452
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 453
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 454
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 455
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 456
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 475
    const-string v3, ""

    .line 476
    .local v3, syncSummary:Ljava/lang/String;
    const-string v2, ""

    .line 477
    .local v2, summary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncAdapterNameToDisplay()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, providerLabels:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f091417

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f091453

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isWifiDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isJapanDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    const v4, 0x7f091418

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f09141c

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, categoryText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v4, :cond_3

    .line 510
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-nez v4, :cond_4

    .line 520
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 521
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 523
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-nez v4, :cond_5

    .line 524
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 527
    :cond_5
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 529
    return-void
.end method

.method private static getSalesInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 405
    const-string v0, "xx"

    .line 408
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 410
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 411
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 413
    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 417
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v5, "ro.csc.sales_code"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 419
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    :goto_0
    return-object v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    const-string v0, "xx"

    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    const-string v0, "xx"

    goto :goto_0
.end method

.method private getSyncAdapterNameToDisplay()Ljava/lang/String;
    .locals 12

    .prologue
    .line 533
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v7, syncLable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, ""

    .line 535
    .local v4, providerLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 537
    .local v6, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v6

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 538
    aget-object v5, v6, v0

    .line 539
    .local v5, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "com.osp.app.signin"

    iget-object v10, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 545
    .local v3, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v3           #providerInfo:Landroid/content/pm/ProviderInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v5           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 552
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 553
    .local v8, temp:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 556
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 558
    .end local v8           #temp:Ljava/lang/String;
    :cond_3
    check-cast v4, Ljava/lang/String;

    .end local v4           #providerLabel:Ljava/lang/CharSequence;
    return-object v4
.end method

.method private getSyncSummaryString(I)Ljava/lang/String;
    .locals 4
    .parameter "contentsType"

    .prologue
    .line 702
    packed-switch p1, :pswitch_data_0

    .line 715
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 704
    :pswitch_0
    const v0, 0x7f091456

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :pswitch_1
    const v0, 0x7f091457

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :pswitch_2
    const v0, 0x7f091458

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v0, :cond_0

    .line 711
    const v0, 0x7f091442

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f09141c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->checkBackupAvailble()V

    .line 291
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-eqz v2, :cond_0

    .line 293
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 294
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v2, :cond_0

    .line 295
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .end local v1           #userInfo:Landroid/content/pm/UserInfo;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 308
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 310
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0

    .line 297
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CloudSettings"

    const-string v3, "Remote Exception while trying to het User info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1155
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1158
    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1161
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1163
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1165
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1174
    :goto_0
    return v0

    .line 1167
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1168
    goto :goto_0

    .line 1169
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1170
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1174
    goto :goto_0
.end method

.method public static isJapanDevice(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, ret:Z
    invoke-static {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSalesInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, salesCode:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    const/4 v0, 0x1

    .line 375
    :cond_1
    return v0
.end method

.method private onBackUpClicked()V
    .locals 4

    .prologue
    .line 1014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1015
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1016
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 1036
    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    .line 1037
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1038
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1039
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090a44

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1044
    :cond_0
    return-void
.end method

.method private onRestoreClicked()V
    .locals 4

    .prologue
    .line 1019
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1020
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method

.method private onStorageClicked()V
    .locals 4

    .prologue
    .line 1025
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1026
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.scloud.quota"

    const-string v3, "com.sec.android.scloud.quota.StorageList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1028
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 770
    new-instance v1, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 898
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v1, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 902
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 905
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudAuthentication()V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_SIGNIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method private requestCloudStatus()V
    .locals 3

    .prologue
    .line 743
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDelayedProgress()V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    .prologue
    .line 757
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 320
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 321
    array-length v1, v0

    if-nez v1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 325
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDelayedProgress()V
    .locals 6

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1229
    :cond_0
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;JJ)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    .line 1240
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1241
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .parameter "pref"
    .parameter "preferenceGroup"
    .parameter "isShow"

    .prologue
    .line 729
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 730
    if-eqz p3, :cond_1

    .line 731
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1183
    .line 1184
    const/4 v3, 0x0

    .line 1186
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 1208
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1213
    :cond_0
    return-void

    .line 1188
    :pswitch_0
    const-class v0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1190
    const v3, 0x7f09141e

    .line 1191
    goto :goto_0

    .line 1193
    :pswitch_1
    const-class v0, Lcom/android/settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1194
    const v3, 0x7f09141f

    .line 1195
    goto :goto_0

    .line 1197
    :pswitch_2
    const-class v0, Lcom/android/settings/cloud/CloudMusicsSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1198
    const v3, 0x7f09143f

    .line 1199
    goto :goto_0

    .line 1201
    :pswitch_3
    const-class v0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1202
    const v3, 0x7f091440

    .line 1203
    goto :goto_0

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1219
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1220
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1223
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1224
    return-void
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 917
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    return-void
.end method

.method private updatePreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const v7, 0x7f090a3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 591
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->samsungAccountExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showAllPreference()V

    .line 616
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 619
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 620
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 624
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 625
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v6}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 626
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v8}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 627
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v9}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 628
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 630
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 631
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 633
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 635
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 636
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    const v3, 0x7f090646

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 641
    :goto_1
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    :goto_6
    return-void

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 606
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 607
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 608
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 609
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 610
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 611
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 641
    :cond_3
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 643
    :cond_4
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 645
    :cond_5
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 647
    :cond_6
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 651
    :cond_7
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 652
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 654
    const v2, 0x7f091443

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, linkAccount:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 657
    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f09141c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getLinkAccountSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 661
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 664
    .end local v1           #text:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 665
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 666
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 667
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 668
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 669
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 670
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method checkBackupAvailble()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 263
    const/4 v1, 0x0

    .line 266
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.sCloudBackupApp"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 267
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    .line 268
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 275
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :cond_1
    :goto_1
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    goto :goto_0

    .line 277
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 278
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    goto :goto_1
.end method

.method public isInstalledApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiDevice()Z
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x1

    .line 381
    .local v0, ret:Z
    const-string v1, "com.sec.mms"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.mms.kor.provider"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    const/4 v0, 0x0

    .line 387
    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 1050
    packed-switch p1, :pswitch_data_0

    .line 1073
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1075
    return-void

    .line 1053
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1054
    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1061
    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    goto :goto_0

    .line 1050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 224
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->init()V

    .line 226
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091435

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    .line 238
    :cond_2
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 244
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 363
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 364
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 260
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 926
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    .line 1004
    :cond_0
    :goto_0
    return v7

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onRestoreClicked()V

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onStorageClicked()V

    goto :goto_0

    .line 937
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 940
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 941
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091435

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 943
    :cond_4
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 952
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addSamsungAccount()V

    goto :goto_0

    .line 953
    :cond_6
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 954
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    goto :goto_0

    .line 955
    :cond_7
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 956
    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 957
    :cond_8
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 958
    invoke-direct {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 959
    :cond_9
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 960
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 961
    :cond_a
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 962
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 963
    :cond_b
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 965
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 967
    array-length v0, v4

    if-lez v0, :cond_0

    .line 968
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 969
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 970
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v0, "accountReturnToPrevious"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090a44

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 977
    :cond_c
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 978
    sget-boolean v0, Lcom/android/settings/cloud/CloudSettingConstants;->C_CHINA:Z

    if-eqz v0, :cond_d

    .line 979
    const/16 v0, 0xa

    const v1, 0x7f090a63

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 981
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v6}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 982
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :cond_d
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 987
    array-length v0, v4

    if-lez v0, :cond_0

    .line 988
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 989
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 990
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "accountReturnToPrevious"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09141c

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 997
    :cond_e
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.EmailValidationView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->checkBackupAvailble()V

    .line 252
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    .line 253
    return-void
.end method

.method public showAllPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1078
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1079
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1080
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1083
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1084
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-eqz v1, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1086
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1091
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1096
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1102
    return-void

    .line 1088
    .end local v0           #samsungAccount:[Landroid/accounts/Account;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1089
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_0
.end method

.method public showVerifyAccountPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1105
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1106
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1107
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1109
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1115
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1116
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1117
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1118
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1120
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1121
    return-void
.end method
