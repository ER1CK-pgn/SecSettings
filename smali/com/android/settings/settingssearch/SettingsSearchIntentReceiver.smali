.class public Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;,
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    }
.end annotation


# static fields
.field private static SearchinfoThread:Z

.field private static TitleinfoThread:Z

.field private static mDoingInitTitleDB:Z

.field public static searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    .line 27
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 28
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    return p0
.end method

.method private isEncryptMode()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 43
    const-string v10, "SearchIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SearchIntentReceiver action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v10, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v10

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    if-nez v10, :cond_2

    .line 46
    const-string v9, "SearchIntentReceiver"

    const-string v10, "RESTORE_SEARCH_DB call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-boolean v8, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 48
    invoke-virtual {p0, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    .line 49
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    .line 50
    .local v7, thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    invoke-virtual {v7, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->setDaemon(Z)V

    .line 51
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->start()V

    .line 86
    .end local v7           #thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v10, :cond_3

    .line 53
    const-string v9, "SearchIntentReceiver"

    const-string v10, "LOCALE_CHANGED call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sput-boolean v8, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 55
    invoke-virtual {p0, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    .line 56
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V

    .line 57
    .local v7, thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    invoke-virtual {v7, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    .line 58
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->start()V

    goto :goto_0

    .line 59
    .end local v7           #thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    :cond_3
    const-string v10, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 61
    .local v2, extra:Landroid/os/Bundle;
    const-string v10, "rowId"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, rowId:I
    const-string v10, "value"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 63
    .local v6, setValue:Ljava/lang/Boolean;
    new-instance v4, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 64
    .local v4, mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-virtual {v4, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    .line 65
    .local v3, item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_4

    :goto_1
    iput v8, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 66
    iget-object v8, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto :goto_0

    :cond_4
    move v8, v9

    .line 65
    goto :goto_1

    .line 67
    .end local v2           #extra:Landroid/os/Bundle;
    .end local v3           #item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v4           #mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    .end local v5           #rowId:I
    .end local v6           #setValue:Ljava/lang/Boolean;
    :cond_5
    const-string v10, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 68
    new-instance v4, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v8, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v4       #mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    .restart local v2       #extra:Landroid/os/Bundle;
    const-string v8, "rowId"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 71
    .restart local v5       #rowId:I
    invoke-virtual {v4, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    .line 72
    .restart local v3       #item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    iget-object v8, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto :goto_0

    .line 73
    .end local v2           #extra:Landroid/os/Bundle;
    .end local v3           #item:Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v4           #mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    .end local v5           #rowId:I
    :cond_6
    const-string v10, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 74
    const-string v10, "SearchIntentReceiver"

    const-string v11, "FINISH_SEARCHDB_EXTRA_APPS call search titleinfo db init!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sput-boolean v8, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 76
    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 77
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    .line 78
    .restart local v7       #thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    invoke-virtual {v7, v8}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    .line 79
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->start()V

    goto/16 :goto_0

    .line 80
    .end local v7           #thread:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    :cond_7
    const-string v8, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const-string v8, "icc_lock_state"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, enable:I
    const-string v8, "SearchIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "icc_lock_enable"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public restoredb(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 34
    return-void
.end method
