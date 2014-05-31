.class public Lcom/android/settings/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;

.field final wifiOffNotificationIcon:I

.field final wifiOnNotificationIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7f02049a

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOnNotificationIcon:I

    .line 99
    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOffNotificationIcon:I

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelAllAlarms()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 289
    const-string v4, "WifiTimer"

    const-string v5, "cancelAllAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 297
    .local v2, startPending:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 301
    .local v3, stopPending:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 303
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 307
    return-void
.end method

.method private cancelStartAlarms()V
    .locals 6

    .prologue
    .line 313
    const-string v3, "WifiTimer"

    const-string v4, "cancelStartAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 321
    .local v2, startPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 323
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 325
    return-void
.end method

.method private cancelStopAlarms()V
    .locals 6

    .prologue
    .line 331
    const-string v3, "WifiTimer"

    const-string v4, "cancelStopAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 339
    .local v2, stopPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 341
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 343
    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .locals 11
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    .line 472
    const-string v8, "WifiTimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableWifi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, ChinaNalSecurityType:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ChinaNalSecurity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    .line 478
    .local v4, isCHNCscEnableWifiWarning:Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 480
    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 482
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    .line 484
    .local v1, allowWifi:Z
    if-nez v1, :cond_1

    .line 486
    const-string v7, "WifiTimer"

    const-string v8, "Wi-Fi is not allowed (Policy)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v1           #allowWifi:Z
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_1
    return-void

    .line 476
    .end local v4           #isCHNCscEnableWifiWarning:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 496
    .restart local v4       #isCHNCscEnableWifiWarning:Z
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 498
    .local v5, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v7, v8, :cond_2

    if-ne v7, v4, :cond_2

    .line 500
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 502
    .local v6, msg:Landroid/os/Message;
    const/16 v7, 0x46

    iput v7, v6, Landroid/os/Message;->what:I

    .line 504
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 511
    .end local v6           #msg:Landroid/os/Message;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    .line 515
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 517
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v7, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 508
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2
.end method

.method private sheduleAllAlarms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_start_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_end_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V

    .line 283
    :goto_1
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStartAlarms()V

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStopAlarms()V

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .locals 13
    .parameter "enable"

    .prologue
    const v12, 0x7f09041f

    const/16 v11, 0x138d

    const/16 v10, 0x10

    const/4 v9, 0x0

    const v8, 0x7f02049a

    .line 527
    const-string v5, "WifiTimer"

    const-string v6, "showNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiTimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 531
    .local v1, mNM:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 537
    new-instance v3, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f090420

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 543
    .local v3, wifiOffNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 549
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f090420

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f090421

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 557
    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 559
    invoke-virtual {v1, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 591
    .end local v3           #wifiOffNotification:Landroid/app/Notification;
    :goto_0
    return-void

    .line 563
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 565
    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 571
    .local v4, wifiOnNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .restart local v2       #notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 577
    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f090421

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 585
    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 587
    invoke-virtual {v1, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private wifiStartAlarm()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 349
    const-string v7, "WifiTimer"

    const-string v8, "wifiStartAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 355
    .local v2, cal:Ljava/util/Calendar;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_start_time"

    const-string v9, "19:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, startTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v5

    .line 359
    .local v5, startTimeHour:I
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v6

    .line 361
    .local v6, startTimeMinute:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 363
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 367
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 369
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 371
    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 373
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 375
    const-string v7, "WifiTimer"

    const-string v8, "Add one day"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 381
    :cond_0
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SheduledTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3e9

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d1

    const/high16 v9, 0x800

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 395
    .local v3, pending:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 396
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 398
    return-void
.end method

.method private wifiStopAlarm()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 404
    const-string v7, "WifiTimer"

    const-string v8, "wifiStopAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 408
    .local v2, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 410
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_end_time"

    const-string v9, "21:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, endTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v4

    .line 414
    .local v4, endTimeHour:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v5

    .line 418
    .local v5, endTimeMinute:I
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 420
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 426
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 428
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 432
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3ea

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d2

    const/high16 v9, 0x800

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 442
    .local v6, pending:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 444
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 446
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    new-instance v1, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 185
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 143
    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 153
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
