.class public Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectAccessReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public deActiveStatusBar()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 90
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 93
    :cond_0
    return-void
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    .line 19
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v10, :cond_0

    .line 20
    new-instance v10, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {v10, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .line 22
    :cond_0
    const-string v10, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 24
    const-string v10, "DirectAccessReceiver"

    const-string v11, "Intent Receive"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 26
    const-string v10, "DirectAccessReceiver"

    const-string v11, "direct access switch state : on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v10, "keyguard"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 29
    .local v6, km:Landroid/app/KeyguardManager;
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    .line 30
    .local v5, keyguardShowing:Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->isDeviceProvisioned()Z

    move-result v3

    .line 32
    .local v3, isDeviceProvisioned:Z
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    move v4, v8

    .line 37
    .local v4, isNotCheck:Z
    :goto_0
    const/4 v1, 0x0

    .line 38
    .local v1, actionCheckNum:I
    const/4 v2, 0x0

    .line 40
    .local v2, directAction:I
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    const/4 v2, 0x1

    .line 44
    :cond_1
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    const/4 v2, 0x2

    .line 48
    :cond_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    const/4 v2, 0x3

    .line 52
    :cond_3
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    const/4 v2, 0x4

    .line 57
    :cond_4
    if-nez v4, :cond_7

    if-le v1, v8, :cond_7

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->deActiveStatusBar()V

    .line 59
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8, v5, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->showDialog(ZZ)V

    .line 60
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Show Dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1           #actionCheckNum:I
    .end local v2           #directAction:I
    .end local v3           #isDeviceProvisioned:Z
    .end local v4           #isNotCheck:Z
    .end local v5           #keyguardShowing:Z
    .end local v6           #km:Landroid/app/KeyguardManager;
    :cond_5
    :goto_1
    return-void

    .restart local v3       #isDeviceProvisioned:Z
    .restart local v5       #keyguardShowing:Z
    .restart local v6       #km:Landroid/app/KeyguardManager;
    :cond_6
    move v4, v9

    .line 32
    goto :goto_0

    .line 61
    .restart local v1       #actionCheckNum:I
    .restart local v2       #directAction:I
    .restart local v4       #isNotCheck:Z
    :cond_7
    if-ne v1, v8, :cond_5

    .line 62
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 64
    :pswitch_0
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessibilitySettings(Landroid/content/Context;)V

    .line 65
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action accessibility"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :pswitch_1
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeChanged()V

    .line 69
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action talkback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :pswitch_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_8

    move v7, v8

    .line 73
    .local v7, mCurrentNegativeMode:Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v7, :cond_9

    :goto_3
    invoke-virtual {v10, v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->changeNegativeModeSystemSetting(Z)V

    .line 74
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action negative color"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v7           #mCurrentNegativeMode:Z
    :cond_8
    move v7, v9

    .line 72
    goto :goto_2

    .restart local v7       #mCurrentNegativeMode:Z
    :cond_9
    move v8, v9

    .line 73
    goto :goto_3

    .line 77
    .end local v7           #mCurrentNegativeMode:Z
    :pswitch_3
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    .line 78
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action interaction control"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
