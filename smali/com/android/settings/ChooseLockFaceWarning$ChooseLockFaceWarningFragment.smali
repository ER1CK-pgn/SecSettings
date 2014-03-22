.class public Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;
.super Landroid/app/Fragment;
.source "ChooseLockFaceWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockFaceWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockFaceWarningFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDualFolderType:Z

.field private mFolderCloseDialog:Landroid/app/Dialog;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0901ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 168
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    return-object v1
.end method

.method private getBiometricSensorIntentwithVoice()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_SETTING_LOCK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v4, "SETTING_VOICE_LOCK"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const/4 v3, 0x1

    .line 177
    .local v3, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 182
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v3, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 120
    .local v1, isFolderClose:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mDualFolderType:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 121
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 123
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    .line 126
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901af

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090c91

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;-><init>(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    goto :goto_0

    .end local v1           #isFolderClose:Z
    :cond_3
    move v1, v2

    .line 118
    goto :goto_1

    .line 142
    .restart local v1       #isFolderClose:Z
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getBiometricSensorIntentwithVoice()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mDualFolderType:Z

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const v2, 0x7f04003a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    .line 97
    iget-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    .line 99
    iget-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, mWaringText:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const v2, 0x7f090c90

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    const v2, 0x7f090c8f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
