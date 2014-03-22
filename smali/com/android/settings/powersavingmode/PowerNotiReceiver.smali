.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static mArmFreqLimitHelper:Landroid/os/DVFSHelper;

.field private static mSupportedArmFrequency:[I


# instance fields
.field private autoEnableState:I

.field private isLowLevel:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 195
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doCpuPowersaving()V
    .locals 7

    .prologue
    .line 197
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "POWER_SAVING_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 199
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    .line 200
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    if-nez v0, :cond_0

    .line 201
    const-string v0, "PowerNotiReceiver"

    const-string v1, "error : mSupportedArmFrequency == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-wide v1, 0x3fe6666666666666L

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v6

    .line 206
    .local v6, max_cpu_clock:I
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_cpu_clock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-lez v6, :cond_1

    .line 208
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 212
    .end local v6           #max_cpu_clock:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_cpu_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 213
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, "PowerNotiReceiver"

    const-string v1, "[PSM_CPU] , do not change CPU clock because PSM_CPU is unchecked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    goto :goto_0
.end method

.method private doDisplayPowersaving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 230
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : doDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 244
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 249
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "[PSM_DISPLAY] , do not change UI rendering and brightness because PSM_DISPLAY is unchecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    goto :goto_0
.end method

.method private doPowerSaveAction()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f090d3a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doCpuPowersaving()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doDisplayPowersaving()V

    .line 186
    return-void
.end method

.method private isAutoEnable()Z
    .locals 4

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, ret:Z
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :cond_0
    const-string v1, "PowerNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v0
.end method

.method private restoreCpuPowersaving()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "PowerNotiReceiver"

    const-string v1, "restoreCpuPowersaving"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 225
    :cond_0
    return-void
.end method

.method private restoreDisplayPowersaving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 253
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 268
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 269
    return-void
.end method

.method private restorePowerSaveAction()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    .line 192
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v8}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, powersavingState:I
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersavingState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    .line 75
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    .line 76
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoEnableState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLowLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    if-ne v1, v6, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 94
    :cond_3
    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 95
    if-ne v1, v6, :cond_a

    .line 96
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, strMsg:Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 98
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 104
    :cond_4
    iget v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    if-ne v3, v6, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 107
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto :goto_0

    .line 112
    :cond_6
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 117
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 119
    :cond_8
    iget v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    if-ne v3, v6, :cond_9

    .line 120
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 122
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto :goto_0

    .line 128
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_a
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #strMsg:Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 130
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 131
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-nez v3, :cond_b

    .line 134
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 136
    :cond_b
    iget v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    if-ne v3, v6, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 142
    :cond_c
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-nez v3, :cond_e

    .line 147
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 149
    :cond_e
    iget v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    if-ne v3, v6, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 158
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_f
    const-string v3, "android.settings.POWERSAVING_AUTO_ENABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    if-ne v1, v6, :cond_2

    .line 160
    iget v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    if-ne v3, v6, :cond_10

    .line 161
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto/16 :goto_0

    .line 163
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0
.end method
