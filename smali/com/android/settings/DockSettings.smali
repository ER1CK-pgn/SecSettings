.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAudioApplications:Landroid/preference/CheckBoxPreference;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAudioSettings:Landroid/preference/Preference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBookCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mHdmiCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowDeskAlertdialog:Landroid/app/AlertDialog;

.field private mShowInCallScreen:Landroid/preference/CheckBoxPreference;

.field private mUltrasonicCane:Landroid/preference/CheckBoxPreference;

.field private mUltrasonicCover:Landroid/preference/PreferenceCategory;

.field private mUltrasonicRange:Landroid/preference/ListPreference;

.field private final mUltrasonicSensor:Landroid/database/ContentObserver;

.field private mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 103
    iput-object v0, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    .line 125
    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/android/settings/DockSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DockSettings$2;-><init>(Lcom/android/settings/DockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateUltrasonicSensorSettingsScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    return-void
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 343
    const-string v0, "sys/class/sec/switch/adc"

    .line 344
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 345
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 346
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 349
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 350
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 351
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 352
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 361
    if-eqz v4, :cond_0

    .line 362
    :try_start_2
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 369
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 371
    const/4 v7, 0x1

    .line 373
    :cond_2
    return v7

    .line 365
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    .restart local v6       #len:I
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 368
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_0

    .line 354
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catch_1
    move-exception v2

    .line 355
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "DockSettings"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    if-eqz v3, :cond_1

    .line 362
    :try_start_4
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 365
    :catch_2
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 357
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    if-eqz v3, :cond_1

    .line 362
    :try_start_6
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 365
    :catch_4
    move-exception v2

    .line 366
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 361
    :goto_3
    if-eqz v3, :cond_3

    .line 362
    :try_start_7
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 367
    :cond_3
    :goto_4
    throw v7

    .line 365
    :catch_5
    move-exception v2

    .line 366
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 360
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 356
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 354
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 637
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 638
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09058b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 639
    const v1, 0x7f09058c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 640
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 378
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 382
    .local v1, isBluetooth:Z
    :goto_0
    if-nez v1, :cond_2

    .line 384
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f09058a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 407
    :goto_1
    if-eqz v0, :cond_0

    .line 410
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v4

    .line 380
    goto :goto_0

    .line 387
    .restart local v1       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 389
    iput-object p1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 390
    const v2, 0x7f09058a

    .line 391
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_3
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 393
    :pswitch_0
    const v2, 0x7f090588

    .line 394
    goto :goto_3

    .line 398
    :pswitch_1
    const v2, 0x7f090587

    .line 399
    goto :goto_3

    .line 401
    :pswitch_2
    const v2, 0x7f090589

    goto :goto_3

    .line 411
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 244
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v1, 0x7f090589

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 248
    :cond_0
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 249
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    const-string v0, "cradle_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_1
    const-string v0, "desk_home_screen_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->needsDockSettings()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    :cond_3
    :goto_0
    const-string v0, "cover"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 272
    const-string v0, "automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v0, "show_in_call_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    .line 275
    invoke-static {}, Lcom/android/settings/Utils;->isJ_Device()Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "show_in_call_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sview_color"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_6
    const-string v0, "ultrasonic_cover"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCover:Landroid/preference/PreferenceCategory;

    .line 291
    const-string v0, "ultrasonic_cane"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    .line 292
    const-string v0, "ultrasonic_range"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ultrasonic_cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ultrasonic_cane"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ultrasonic_range"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    const-string v0, "hdmi"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    .line 302
    const-string v0, "audio_output"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 311
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    const-string v0, "book_cover"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mBookCoverCategory:Landroid/preference/PreferenceCategory;

    .line 315
    const-string v0, "cover_note"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    .line 316
    const-string v0, "book_cover_automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 317
    const-string v0, "cover_note_weather_unit"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mBookCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    :goto_1
    const-string v0, "audio_applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-le v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 334
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "earset"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_applications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    return-void

    .line 263
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    const-string v0, "cradle_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    :cond_9
    const-string v0, "desk_home_screen_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 324
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultrasonic_cane"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 678
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 679
    return-void
.end method

.method private updateUltrasonicSensorSettingsScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultrasonic_cane"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 684
    .local v0, ultrasonicSensorValue:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 685
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 689
    :goto_1
    return-void

    .end local v0           #ultrasonicSensorValue:Z
    :cond_0
    move v0, v2

    .line 682
    goto :goto_0

    .line 687
    .restart local v0       #ultrasonicSensorValue:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 670
    const-string v0, "DockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultrasonic_cane"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 673
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    .line 161
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 630
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, key:Ljava/lang/String;
    const-string v4, "audio_output"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 591
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "hdmi_audio_output"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    .end local v1           #value:I
    :cond_1
    :goto_0
    return v3

    .line 595
    .restart local p2
    :cond_2
    const-string v4, "cover_note"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 596
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 597
    .local v1, value:Z
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cover_note"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    const-string v2, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save KEY_COVER_NOTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v1           #value:Z
    .restart local p2
    :cond_4
    const-string v4, "cover_note_weather_unit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 601
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 602
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cover_note_weather_unit"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 606
    .end local v1           #value:I
    .restart local p2
    :cond_6
    const-string v4, "ultrasonic_cane"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 607
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 608
    .local v1, value:Z
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultrasonic_cane"

    if-eqz v1, :cond_9

    move v4, v3

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ultrasonic_cane"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090d94

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 616
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 617
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultrasonic_cane"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    move v4, v2

    .line 609
    goto :goto_1

    .line 613
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ultrasonic_cane"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090d95

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 618
    .end local v1           #value:Z
    .restart local p2
    :cond_b
    const-string v2, "ultrasonic_range"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 620
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ultrasonic_db"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 421
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/DockSettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    .line 423
    sget v0, Lcom/android/settings/DockSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 424
    sget v0, Lcom/android/settings/DockSettings;->mSettingValue:I

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 425
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 426
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_6

    .line 435
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 436
    :cond_2
    if-nez v3, :cond_5

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 582
    :cond_3
    :goto_1
    return v2

    :cond_4
    move v1, v3

    .line 424
    goto :goto_0

    .line 439
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 440
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v2

    :cond_7
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 452
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cradle_enable"

    if-eqz v1, :cond_a

    move v0, v2

    :goto_2
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "cradle_connect"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 456
    const-string v0, "DockSettings"

    const-string v4, "Cradle is connected:"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 459
    const-string v4, "smartdock"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    :goto_3
    if-eqz v1, :cond_9

    move v3, v2

    .line 469
    :cond_9
    const-string v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    const-string v0, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "cradle_enable"

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_3

    .line 487
    if-eqz v1, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->showOudioOutputNotiDialog()V

    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 453
    goto :goto_2

    .line 462
    :cond_b
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 473
    :cond_c
    const-string v0, "DockSettings"

    const-string v4, "Cradle is not connected:"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 476
    const-string v4, "smartdock"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_5
    const-string v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    const-string v0, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 479
    :cond_d
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 492
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 493
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 494
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    const v1, 0x7f090cab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 496
    const v1, 0x7f090cac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 497
    const v1, 0x104000a

    new-instance v3, Lcom/android/settings/DockSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/DockSettings$3;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    const/high16 v1, 0x104

    new-instance v3, Lcom/android/settings/DockSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DockSettings$4;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    new-instance v1, Lcom/android/settings/DockSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/DockSettings$5;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    .line 519
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 521
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 525
    :cond_10
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_applications"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v3, v2

    :cond_11
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 529
    :cond_12
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v3, v2

    :cond_13
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 532
    :cond_14
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, v2

    :cond_15
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 535
    :cond_16
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_screen_on"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    move v3, v2

    :cond_17
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 538
    :cond_18
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 540
    const v1, 0x7f04014a

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 541
    const v0, 0x7f0b0147

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 543
    const-string v5, "pref_ultrasonic_noti"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 544
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ultrasonic_cane"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_19

    .line 547
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    const v5, 0x7f090d8f

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 550
    const v1, 0x7f090746

    new-instance v5, Lcom/android/settings/DockSettings$6;

    invoke-direct {v5, p0, v4, v0}, Lcom/android/settings/DockSettings$6;-><init>(Lcom/android/settings/DockSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v0, Lcom/android/settings/DockSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$7;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 569
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_cane"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d94

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    goto/16 :goto_1

    .line 574
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_cane"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d95

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    goto/16 :goto_1

    .line 582
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "ultrasonic_cane"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    invoke-virtual {v8, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v11, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 173
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v8, "dock_sounds_enabled"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v8, "cradle_enable"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_6

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 176
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    :goto_2
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    const-string v8, "automatic_unlock"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_9

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    const-string v8, "smart_screen_on"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_a

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    const-string v8, "ultrasonic_cane"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "ultrasonic_db"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 186
    .local v4, mUltrasonicRangeValue:I
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    .line 190
    const-string v8, "hdmi_audio_output"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 192
    .local v3, mHdmiValue:I
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    const-string v8, "audio_applications"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_c

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 199
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v8, "audioParam;outDevice"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 201
    .local v2, isHDMI:Z
    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 206
    :cond_0
    :goto_7
    const-string v8, "DockSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isHDMI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz v2, :cond_f

    .line 209
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 210
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 212
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    :goto_8
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_2

    .line 221
    const-string v8, "cover_note"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_10

    move v7, v10

    .line 222
    .local v7, value:Z
    :goto_9
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    .end local v7           #value:Z
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    .line 226
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    const-string v11, "automatic_unlock"

    invoke-static {v6, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_11

    :goto_a
    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    :cond_3
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v8, :cond_4

    .line 229
    const-string v8, "cover_note_weather_unit"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 230
    .local v7, value:I
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    .end local v7           #value:I
    :cond_4
    return-void

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #isHDMI:Z
    .end local v3           #mHdmiValue:I
    .end local v4           #mUltrasonicRangeValue:I
    .end local v5           #path:Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 173
    goto/16 :goto_0

    :cond_6
    move v8, v10

    .line 174
    goto/16 :goto_1

    .line 179
    :cond_7
    iget-object v11, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    const-string v8, "desk_home_screen_display"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_8

    move v8, v9

    :goto_b
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_8
    move v8, v10

    goto :goto_b

    :cond_9
    move v8, v10

    .line 181
    goto/16 :goto_3

    :cond_a
    move v8, v10

    .line 182
    goto/16 :goto_4

    :cond_b
    move v8, v10

    .line 183
    goto/16 :goto_5

    .restart local v3       #mHdmiValue:I
    .restart local v4       #mUltrasonicRangeValue:I
    :cond_c
    move v8, v10

    .line 195
    goto/16 :goto_6

    .line 204
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #isHDMI:Z
    .restart local v5       #path:Ljava/lang/String;
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_e

    move v2, v10

    :goto_c
    goto/16 :goto_7

    :cond_e
    move v2, v9

    goto :goto_c

    .line 214
    :cond_f
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 215
    iget-object v8, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_10
    move v7, v9

    .line 221
    goto :goto_9

    :cond_11
    move v9, v10

    .line 226
    goto :goto_a
.end method

.method public showOudioOutputNotiDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 646
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 649
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 650
    iput-object v6, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 654
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04006d

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 655
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0146

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 657
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090bb3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 658
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 659
    const v4, 0x7f090bb2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 660
    const v4, 0x7f09079f

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 662
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 663
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 665
    return-void
.end method
