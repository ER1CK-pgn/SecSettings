.class public Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private isBlock:Z

.field private isFallback:Z

.field private isSetLockToSignature:Z

.field private isSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 102
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 103
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLetters:I

    .line 104
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinUpperCase:I

    .line 105
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLowerCase:I

    .line 106
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinSymbols:I

    .line 107
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNumeric:I

    .line 108
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNonLetter:I

    .line 110
    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 111
    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 112
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 120
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 141
    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private handleNext()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 388
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    .line 393
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v7, v8, :cond_3

    .line 394
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    if-nez v0, :cond_2

    .line 396
    iput-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 397
    sget-object v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 398
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 453
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 401
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 403
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v7, :cond_4

    .line 404
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "db_lockscreen_is_smart_lock"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v7

    if-nez v7, :cond_7

    move v1, v5

    .line 410
    .local v1, lockVirgin:Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    if-eqz v7, :cond_8

    .line 411
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 412
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 414
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 416
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 417
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZZ)V

    .line 418
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 419
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 420
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_lockscreen_is_smart_lock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    :goto_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v4, warningClearIntent:Landroid/content/Intent;
    const-string v6, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    if-eqz v1, :cond_6

    .line 439
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 442
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->setResult(I)V

    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .end local v1           #lockVirgin:Z
    .end local v4           #warningClearIntent:Landroid/content/Intent;
    :cond_7
    move v1, v6

    .line 408
    goto :goto_2

    .line 424
    .restart local v1       #lockVirgin:Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 425
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v7, v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 427
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 428
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 429
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 430
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "db_lockscreen_is_smart_lock"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 445
    .end local v1           #lockVirgin:Z
    :cond_9
    sget-object v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 446
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 447
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v5, v3

    .line 448
    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockAsSignature(Z)V

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 566
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 567
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v2, 0x1

    .line 473
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    return-void
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 494
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, password:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 497
    .local v2, length:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v5, v8, :cond_3

    if-lez v2, :cond_3

    .line 498
    iget v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v2, v5, :cond_1

    .line 499
    const v5, 0x7f09023f

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {p0, v5, v8}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 516
    .end local v3           #msg:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 519
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePasswordLength(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 522
    .local v1, len:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v5, v8, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f090243

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {p0, v8, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 528
    .end local v1           #len:I
    :cond_0
    return-void

    .line 503
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f090240

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 513
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v2, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "password"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_1

    .line 339
    const v6, 0x7f09023f

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 384
    :cond_0
    :goto_0
    return-object v6

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v7, v8, :cond_2

    .line 342
    const v6, 0x7f090243

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 344
    :cond_2
    const/4 v2, 0x0

    .line 345
    .local v2, letters:I
    const/4 v4, 0x0

    .line 346
    .local v4, numbers:I
    const/4 v5, 0x0

    .line 347
    .local v5, symbols:I
    const/4 v3, 0x0

    .line 348
    .local v3, nonletter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 351
    .local v0, c:C
    const/16 v7, 0x20

    if-le v0, v7, :cond_3

    const/16 v7, 0x7f

    if-le v0, v7, :cond_4

    .line 352
    :cond_3
    const v6, 0x7f090246

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 354
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 355
    add-int/lit8 v4, v4, 0x1

    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 348
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_6

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 359
    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_7

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 362
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 366
    .end local v0           #c:C
    :cond_8
    const/high16 v7, 0x2

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_a

    if-gtz v2, :cond_9

    if-lez v5, :cond_a

    .line 370
    :cond_9
    const v6, 0x7f090244

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 371
    :cond_a
    const/high16 v7, 0x7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_c

    .line 374
    if-gtz v2, :cond_b

    if-lez v5, :cond_0

    .line 375
    :cond_b
    const v6, 0x7f090211

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 381
    :cond_c
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    const v6, 0x7f090245

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private validatePasswordLength(Ljava/lang/String;)I
    .locals 2
    .parameter "password"

    .prologue
    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    .line 532
    const/4 v0, -0x1

    .line 537
    :goto_0
    return v0

    .line 534
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v0, v1, :cond_1

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 543
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 546
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 550
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 315
    const-string v0, "ChooseLockAdditionalPin"

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

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_0
    return-void

    .line 460
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 466
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x7f0b0088
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 188
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 189
    const-string v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    .line 190
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 191
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 192
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 193
    const-string v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    .line 194
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 197
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 199
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 201
    const-string v1, "SignatureOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    .line 202
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "SignatureLockSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    .line 204
    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 205
    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 206
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 207
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 209
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 215
    const v7, 0x7f040038

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 216
    .local v6, view:Landroid/view/View;
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 217
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_0

    .line 218
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v10, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 220
    :cond_0
    const v7, 0x7f0b0088

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 221
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v7, 0x7f0b0089

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    .line 224
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v7, 0x7f0b00a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 228
    const v7, 0x7f0b00a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 229
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    .line 230
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 231
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 237
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 239
    const v7, 0x7f0b0086

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 240
    const v7, 0x7f0b00a4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    .line 241
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 243
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 247
    .local v2, intent:Landroid/content/Intent;
    if-nez p3, :cond_3

    .line 248
    sget-object v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 259
    :cond_1
    :goto_0
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v3, v0

    .line 260
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 261
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v1, 0x7f0911e1

    .line 262
    .local v1, id:I
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 263
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    .end local v1           #id:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v8, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    return-object v6

    .line 251
    :cond_3
    const-string v7, "first_pin"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 252
    const-string v7, "ui_stage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, state:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 254
    invoke-static {v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 255
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 481
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    .line 485
    const/4 v0, 0x1

    .line 487
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 291
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0911e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0911e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 554
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 328
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 329
    return-void
.end method
