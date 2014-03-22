.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mConfirmSoundID:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mButtonScan:Landroid/widget/Button;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mMasterStreamVolume:I

.field private mNfcConnectedEnable:Z

.field private mNotNfcEntry:Z

.field private mRingerMode:I

.field private mShowMainDlg:Z

.field private mShowWelcomeDlg:Z

.field private mWriteIfSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNotNfcEntry:Z

    return-void
.end method

.method private connWithoutMainDlg()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f80

    .line 147
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 148
    :cond_0
    const-string v0, "WfdPickerDialog"

    const-string v1, "Silent mode or volume is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v7, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const-string v0, "cause"

    sget v1, Landroid/hardware/display/DisplayManager;->POPUP_CAUSE_SCANNING_BYNFC:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNotNfcEntry:Z

    if-nez v0, :cond_2

    .line 164
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    .line 165
    :cond_2
    const-string v0, "WfdPickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connWithoutMainDlg mNfcConnectedEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 167
    return-void

    .line 150
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    sget-object v0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private initWfdPickerDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->setWfdEnabled()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void
.end method

.method private isSideSyncRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 263
    const/4 v0, -0x1

    .line 264
    .local v0, isSideSync:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "PSS_SERVICE_CONNECTED"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWfdEnabled()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "WfdPickerDialog"

    const-string v1, "setWfdEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isSideSyncRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "WfdPickerDialog"

    const-string v1, "side sync is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method changeToScan()V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    return-void
.end method

.method changeToStop()V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    .line 213
    :cond_0
    const-string v0, "WfdPickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed mNfcConnectedEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNfcConnectedEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 215
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const-string v2, "WfdPickerDialog"

    const-string v3, "startScanningWfdPickerDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 123
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 127
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    .end local v0           #mScanString:Ljava/lang/String;
    .end local v1           #mStopString:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04e1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v3, "display"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 55
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 56
    const v3, 0x7f0401e5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 70
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mNotNfcEntry:Z

    .line 73
    :cond_3
    const v3, 0x7f090502

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 74
    const v3, 0x7f0b04e1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    .line 75
    const v3, 0x7f0b04e2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    .line 76
    const v3, 0x7f0b04e3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    .line 77
    const v3, 0x7f0b04de

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_4

    .line 84
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 86
    :cond_4
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, p0, v4, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    sput v3, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    .line 89
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 90
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    .line 91
    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    .line 93
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMainDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteIfSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWelcomeDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v3, :cond_5

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v3, :cond_6

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 100
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_7

    .line 101
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    goto :goto_0

    .line 104
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "WfdPickerDialog"

    const-string v2, "going to ACTION_WRITE_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intentToPicker:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "called_by_nfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 201
    .end local v0           #intentToPicker:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 140
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    return-void
.end method
