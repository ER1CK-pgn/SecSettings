.class public Lcom/android/settings/ResetSettings;
.super Landroid/app/Fragment;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetSettings$ResetSettingsTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private databaseReset:Z

.field private handler:Landroid/os/Handler;

.field private mContentView:Landroid/view/View;

.field private mResetSoftButton:Landroid/widget/Button;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field progressDialog:Landroid/app/ProgressDialog;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private resetSettingsCompleted:Z

.field resetTask:Lcom/android/settings/ResetSettings$ResetSettingsTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/ResetSettings;->resetSettingsCompleted:Z

    .line 150
    new-instance v0, Lcom/android/settings/ResetSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSettings$2;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->handler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/android/settings/ResetSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSettings$3;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ResetSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ResetSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetCompleted()V

    return-void
.end method

.method private establishResetState()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 600
    const-string v4, ""

    .line 602
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 603
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v0, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 604
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 605
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 606
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 608
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 609
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private loadVolumeLevels()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 402
    const-string v1, "ResetSettings"

    const-string v2, "Sound settings update"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, v3}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v0

    .line 406
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 408
    invoke-virtual {p0, v4}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 411
    invoke-virtual {p0, v5}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-static {v1, v5, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 414
    return-void
.end method

.method private resetAccessibilitySettings()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 417
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "speak_password"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_interaction"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_key_hold"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "talkback_power_key_hold"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    const-string v9, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v8, v9, v11}, Lcom/android/settings/ResetSettings;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 434
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.settings.action.talkback_off"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_enabled"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_display_magnification_enabled"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "high_contrast"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.NEGATIVECOLOR_OFF"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v7, setOffNegativeColour_value_intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "color_blind"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "color_blind_test"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.settings.ACTION_COLORBLIND_SWITCH_OFF"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v3, color_blind_off_intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, notificationReminder:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.NotificationReminder"

    const-string v10, "com.samsung.android.app.notificationreminder.settings.NotificationReminderService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 463
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 464
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_reminder"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "time_key"

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enable_accessibility_global_gesture_enabled"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_script_injection"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "audio_balance"

    const/16 v10, 0x32

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mono_audio_db"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v5, mono_intent:Landroid/content/Intent;
    const-string v8, "mono"

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "all_sound_off"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v1, all_sound_off_intent:Landroid/content/Intent;
    const-string v8, "mute"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_dominant_hand_type"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v2, assistantMenu:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.assistantmenu"

    const-string v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 502
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 505
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_timeout"

    const/16 v10, 0x1f4

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_use"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, acIntent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.accesscontrol"

    const-string v10, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 515
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 516
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    .end local v0           #acIntent:Landroid/content/Intent;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 523
    .local v4, mAudioManager:Landroid/media/AudioManager;
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_aid"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    const-string v8, "call_hearing_aid"

    const-string v9, "OFF"

    invoke-virtual {v4, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lcd_curtain"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    return-void
.end method

.method private resetCompleted()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    return-void
.end method

.method private resetSpenSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 344
    return-void
.end method

.method public static startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .parameter "mContext"
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 546
    invoke-static {p0}, Lcom/android/settings/ResetSettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 549
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 552
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 555
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 580
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 558
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .line 559
    .local v1, enabledAndInstalledServiceCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 560
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 561
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 566
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 569
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    .end local v0           #accessibilityEnabled:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 584
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 585
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_6

    .line 586
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    return-void

    .line 592
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getUriOfDefaultTone(I)Landroid/net/Uri;
    .locals 14
    .parameter "type"

    .prologue
    .line 347
    const/4 v10, 0x0

    .line 349
    .local v10, foundUri:Z
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriOfBinaryDefaultTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 352
    new-instance v11, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 357
    .local v11, rm:Landroid/media/RingtoneManager;
    :goto_0
    const/4 v8, 0x0

    .line 358
    .local v8, configTone:Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 359
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 367
    :goto_1
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.config. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v11, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 371
    invoke-virtual {v11}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    const/4 v13, 0x0

    .line 374
    .local v13, tempStrUri:Ljava/lang/String;
    const/4 v12, 0x0

    .line 376
    .local v12, tempStrIndex:Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 378
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 382
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 385
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 386
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, dataPath:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 388
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    const/4 v10, 0x1

    .line 395
    .end local v7           #c2:Landroid/database/Cursor;
    .end local v9           #dataPath:Ljava/lang/String;
    :cond_0
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default tone\'s uri found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz v10, :cond_6

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #tempStrIndex:Ljava/lang/String;
    .end local v13           #tempStrUri:Ljava/lang/String;
    :goto_3
    return-object v0

    .line 354
    .end local v8           #configTone:Ljava/lang/String;
    .end local v11           #rm:Landroid/media/RingtoneManager;
    :cond_1
    new-instance v11, Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .restart local v11       #rm:Landroid/media/RingtoneManager;
    goto/16 :goto_0

    .line 360
    .restart local v8       #configTone:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 361
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 362
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 363
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 365
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 392
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #c2:Landroid/database/Cursor;
    .restart local v9       #dataPath:Ljava/lang/String;
    .restart local v12       #tempStrIndex:Ljava/lang/String;
    .restart local v13       #tempStrUri:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 397
    .end local v7           #c2:Landroid/database/Cursor;
    .end local v9           #dataPath:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, userFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/android/settings/ResetSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetSettings$1;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 104
    const v1, 0x7f040184

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b040a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091763

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0901d4

    invoke-virtual {p0, v5}, Lcom/android/settings/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090824

    invoke-virtual {p0, v6}, Lcom/android/settings/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a95

    invoke-virtual {p0, v6}, Lcom/android/settings/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->establishResetState()V

    .line 108
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 658
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 645
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 646
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 650
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 653
    :cond_1
    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetSystemSettings()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetSecureSettings()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetFontSettings()V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetAccessibilitySettings()V

    .line 224
    return-void
.end method

.method public resetFontSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 228
    iget-object v6, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    const-string v7, "prefs"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 230
    .local v5, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 231
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "selectedFont"

    const-string v7, "MONOTYPE"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    :try_start_0
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 236
    .local v3, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    iget-object v6, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    const-string v7, "sans.loc"

    const-string v8, "default#default"

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 243
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v6, 0x0

    iput v6, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 244
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v3           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    :goto_0
    :try_start_1
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 259
    .local v4, mCurConfig:Landroid/content/res/Configuration;
    const/high16 v2, 0x3f80

    .line 260
    .local v2, fontScale:F
    iput v2, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 261
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local v2           #fontScale:F
    .end local v4           #mCurConfig:Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v6

    goto :goto_1

    .line 246
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public resetGlobalSettings()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v6

    .line 303
    .local v1, airplaneMode:I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v1, :cond_0

    .line 304
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "state"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 311
    .local v3, autoTimeZone:Z
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    if-eqz v3, :cond_2

    move v8, v6

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v5, timeZone:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 317
    .local v2, autoTime:Z
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time"

    if-eqz v2, :cond_3

    move v8, v6

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, actionTime:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    const-string v8, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_tone"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    :goto_3
    return-void

    .end local v0           #actionTime:Landroid/content/Intent;
    .end local v1           #airplaneMode:I
    .end local v2           #autoTime:Z
    .end local v3           #autoTimeZone:Z
    .end local v5           #timeZone:Landroid/content/Intent;
    :cond_1
    move v1, v7

    .line 302
    goto/16 :goto_0

    .restart local v1       #airplaneMode:I
    .restart local v3       #autoTimeZone:Z
    :cond_2
    move v8, v7

    .line 311
    goto :goto_1

    .restart local v2       #autoTime:Z
    .restart local v5       #timeZone:Landroid/content/Intent;
    :cond_3
    move v8, v7

    .line 317
    goto :goto_2

    .line 325
    .restart local v0       #actionTime:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "emergency_tone"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method public resetSecureSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111004e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_components"

    const-string v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    return-void

    :cond_0
    move v0, v2

    .line 292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 294
    goto :goto_1
.end method

.method public resetSystemSettings()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->loadVolumeLevels()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetSpenSettings()V

    .line 287
    return-void
.end method
