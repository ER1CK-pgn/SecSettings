.class public Lcom/android/settings/nearby/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# static fields
.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "allshare_onoff"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_ALLSHARE_WELCOME_POPUP:Ljava/lang/String; = "allshare_welcome_popup"

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"


# instance fields
.field private final HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

.field private final HANDLER_MSG_INIT_PREF:I

.field private final HANDLER_MSG_IS_SHUTDOWN_FALSE:I

.field private final HANDLER_MSG_IS_SHUTDOWN_TRUE:I

.field private final HANDLER_MSG_ONOFF_FALSE:I

.field private final HANDLER_MSG_ONOFF_TRUE:I

.field private final KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

.field private final SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mPrefHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-string v0, "MountReceiver"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->TAGClass:Ljava/lang/String;

    .line 54
    const-string v0, "isShutdowned"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

    .line 56
    const-string v0, "NearbyDownloadTo"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iput-object v1, p0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    .line 71
    const/16 v0, 0x1b59

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_TRUE:I

    .line 73
    const/16 v0, 0x1b5a

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_FALSE:I

    .line 75
    const/16 v0, 0x1b5b

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

    .line 77
    const/16 v0, 0x1b5d

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_IS_SHUTDOWN_TRUE:I

    .line 79
    const/16 v0, 0x1b5e

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_IS_SHUTDOWN_FALSE:I

    .line 81
    const/16 v0, 0x1b62

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_INIT_PREF:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    move-object/from16 v12, p1

    .line 88
    .local v12, mContext:Landroid/content/Context;
    new-instance v19, Landroid/os/HandlerThread;

    const-string v20, "Preference Handler Thread"

    invoke-direct/range {v19 .. v20}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v19, Lcom/android/settings/nearby/MountReceiver$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/settings/nearby/MountReceiver$1;-><init>(Lcom/android/settings/nearby/MountReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, action:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 148
    :cond_2
    const-string v19, "pref_allshare"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 150
    .local v13, preference:Landroid/content/SharedPreferences;
    const-string v19, "allshare_download_to"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, preferenceValue:Ljava/lang/String;
    const-string v19, "isShutdowned"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_0

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, systemPath:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Nearby"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, internalPath:Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v19, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 164
    :cond_3
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "change path: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5b

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    .end local v10           #internalPath:Ljava/lang/String;
    .end local v13           #preference:Landroid/content/SharedPreferences;
    .end local v14           #preferenceValue:Ljava/lang/String;
    .end local v17           #systemPath:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 273
    :try_start_0
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    const-wide/16 v19, 0x64

    :try_start_1
    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 275
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 172
    .restart local v10       #internalPath:Ljava/lang/String;
    .restart local v13       #preference:Landroid/content/SharedPreferences;
    .restart local v14       #preferenceValue:Ljava/lang/String;
    .restart local v17       #systemPath:Ljava/lang/String;
    :cond_5
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "there is no need to change download path."

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    .end local v10           #internalPath:Ljava/lang/String;
    .end local v13           #preference:Landroid/content/SharedPreferences;
    .end local v14           #preferenceValue:Ljava/lang/String;
    .end local v17           #systemPath:Ljava/lang/String;
    :cond_6
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5a

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5e

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Nearby"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .restart local v10       #internalPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 188
    .local v7, externalPath:Ljava/lang/String;
    const-string v19, "storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 190
    .local v15, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v16

    .line 191
    .local v16, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v8, 0x0

    .line 193
    .local v8, externalVolume:Landroid/os/storage/StorageVolume;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/os/storage/StorageVolume;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v11, :cond_8

    aget-object v18, v4, v9

    .line 194
    .local v18, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    const-string v20, "sd"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 195
    const-string v19, "MountReceiver"

    const-string v20, "getExernalSdPath"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ExternalSD path:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Nearby"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    move-object/from16 v8, v18

    .line 193
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 202
    .end local v18           #volume:Landroid/os/storage/StorageVolume;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 205
    .restart local v17       #systemPath:Ljava/lang/String;
    if-nez v17, :cond_9

    .line 206
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "DOWNLOAD systemPath  is NULL"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    move-object/from16 v17, v10

    .line 212
    :cond_9
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Path: (systemPath)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", (internalPath)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", (externalPath)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 216
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Internal Path"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 218
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "mounted"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 220
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "External Unmounted: Fix to Internal"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5b

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 225
    :cond_b
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "External Path"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 228
    :cond_c
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Wrong Path: Fix to Internal Default path"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5b

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "NearbyDownloadTo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 234
    .end local v4           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v7           #externalPath:Ljava/lang/String;
    .end local v8           #externalVolume:Landroid/os/storage/StorageVolume;
    .end local v9           #i$:I
    .end local v10           #internalPath:Ljava/lang/String;
    .end local v11           #len$:I
    .end local v15           #storageManager:Landroid/os/storage/StorageManager;
    .end local v16           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v17           #systemPath:Ljava/lang/String;
    :cond_d
    const-string v19, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    const-string v19, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    const-string v19, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 238
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/MountReceiver;->isInitialStickyBroadcast()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 239
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isInitialStickyBroadcast: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_f
    const-string v19, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 246
    .local v5, changedState:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_11

    .line 247
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 250
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Set preference state off"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5a

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 253
    :cond_10
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Keep current state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :cond_11
    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 257
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Set preference state off"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5a

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 260
    :cond_12
    const-string v19, "MountReceiver"

    const-string v20, "onReceive"

    const-string v21, "Keep current state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 264
    .end local v5           #changedState:Landroid/net/NetworkInfo;
    :cond_13
    const-string v19, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5d

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 266
    :cond_14
    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "android.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b62

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 275
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v19
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    :catch_0
    move-exception v6

    .line 277
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method
